-- Variables
local addonName, addonTable = ...;

local tradeSkillName, rank, maxLevel; -- variables for currently opened profession frame
local isLinked, name; -- variables to know if you opened your own profession frame or if it's a link

local shouldCraft = {"unknown"}; -- varible that will show which recipe one should craft based on current skill level
local shouldCraftRecipe = {"unknown"}; -- variable that will hold the material needed to craft <shouldCraft>
local craftRecipeOptionsIndex = 1; -- variavle to define index of recipes

-- variables for check if the recipe you should craft has changed
local previousShouldCraft = {"unknown"}; -- what was the last value of shouldCraft?
local spellIndexMap = {}  -- { [spellID] = tradeSkillIndex }


local function buildSpellIndexMap()
    spellIndexMap = {}
    for i = 1, GetNumTradeSkills() do
        local link = GetTradeSkillRecipeLink(i)
        if link then
            local id = link:match("spell:(%d+)") or link:match("enchant:(%d+)")
            if id then
                spellIndexMap[tonumber(id)] = i
            end
        end
    end
end

-- Map localized profession names to their handler functions.
-- Add entries here for each language/locale your server uses.
local professionHandlers = {
    -- English
    ["Enchanting"]    = function(r) return addonTable.getEnchantingCurrentSkillLevelRecipeToCraft(r) end,
    ["Tailoring"]     = function(r) return addonTable.getTailoringCurrentSkillLevelRecipeToCraft(r) end,
    ["Jewelcrafting"] = function(r) return addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft(r) end,
    ["Blacksmithing"] = function(r) return addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft(r) end,
    ["Leatherworking"]= function(r) return addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft(r) end,
    ["Engineering"]   = function(r) return addonTable.getEngineeringCurrentSkillLevelRecipeToCraft(r) end,
    ["Inscription"]   = function(r) return addonTable.getInscriptionCurrentSkillLevelRecipeToCraft(r) end,
    ["Alchemy"]       = function(r) return addonTable.getAlchemyCurrentSkillLevelRecipeToCraft(r) end,
    ["First Aid"]     = function(r) return addonTable.getFirstAidCurrentSkillLevelRecipeToCraft(r) end,
    ["Cooking"]       = function(r) return addonTable.getCookingCurrentSkillLevelRecipeToCraft(r) end,
    -- Spanish
    ["Encantamiento"] = function(r) return addonTable.getEnchantingCurrentSkillLevelRecipeToCraft(r) end,
    ["Sastrería"]     = function(r) return addonTable.getTailoringCurrentSkillLevelRecipeToCraft(r) end,
    ["Joyería"]       = function(r) return addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft(r) end,
    ["Herrería"]      = function(r) return addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft(r) end,
    ["Peletería"]     = function(r) return addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft(r) end,
    ["Ingeniería"]    = function(r) return addonTable.getEngineeringCurrentSkillLevelRecipeToCraft(r) end,
    ["Inscripción"]   = function(r) return addonTable.getInscriptionCurrentSkillLevelRecipeToCraft(r) end,
    ["Alquimia"]      = function(r) return addonTable.getAlchemyCurrentSkillLevelRecipeToCraft(r) end,
    ["Primeros auxilios"] = function(r) return addonTable.getFirstAidCurrentSkillLevelRecipeToCraft(r) end,
    ["Cocina"]        = function(r) return addonTable.getCookingCurrentSkillLevelRecipeToCraft(r) end,
}

------------------------------------------------------------------------------------------------------------

function GetCraftingToDo()
    local handler = professionHandlers[tradeSkillName]
    if handler then
        shouldCraft, shouldCraftRecipe = handler(rank)
    end

    if rank > 0 and rank < 450 then
        displayRecipe()
    else
        shouldCraft = {"unknown"};
        shouldCraftRecipe = {"unknown"};
        txtShouldCraft:SetText(addonTable.L["profession_cap"]);
        imgSkillIcon:SetTexture(GetSpellTexture(tradeSkillName));
        txtShouldCraftRecipe:SetText('');
        MainFrameCoreCraft:Hide();
        MainFrameCoreNextRecipe:Hide();
        MainFrameCorePreviousRecipe:Hide();
        MainFrameCore:SetHeight(150);
    end
end

------------------------------------------------------------------------------------------------------------

function TogglePcapperFrame(toggle)
    if toggle == "show" then
        MainFrameCore:Show();
    elseif toggle == "hide" then
        MainFrameCore:Hide();
    end
end

function fnOnLoad()
    addonTable.applyLocale()
    local L = addonTable.L
    txtHeaderLabel:SetText(L["header_label"])
    print("|cff" .. addonTable.chat_frame_default_color .. L["loaded_for"] .. "|r |cff" .. addonTable.chat_frame_player_name_color .. "[" .. UnitLevel("player") .. "]" .. UnitName("player") .. "|r")
    this:RegisterEvent("TRADE_SKILL_UPDATE");
    this:RegisterEvent("TRADE_SKILL_CLOSE");
    this:RegisterForDrag("LeftButton");
    SlashCmdList["TOGGLE_PCAPPER_FRAME"] = TogglePcapperFrame;
    SLASH_TOGGLE_PCAPPER_FRAME1 = "/pcapper";
end

function fnOnEvent()
    resetValues();
    isLinked, name = IsTradeSkillLinked();
    if not isLinked then
        if event == "TRADE_SKILL_UPDATE" then
            tradeSkillName, rank, maxLevel = GetTradeSkillLine();
            buildSpellIndexMap()
            GetCraftingToDo();
            MainFrameCore:Show()
        elseif event == "TRADE_SKILL_CLOSE" then
            MainFrameCore:Hide();
        end
    end
end

function displayRecipe()
    local function concatIds(t)
        local s = ""
        for i = 1, table.getn(t) do s = s .. tostring(t[i]) end
        return s
    end
    local L = addonTable.L
    local hasRecipeChanged = concatIds(shouldCraft) ~= concatIds(previousShouldCraft);
    local skillName, skillType, numAvailable
    local craftButtonText

    MainFrameCoreNextRecipe:Show();
    MainFrameCorePreviousRecipe:Show();

    if hasRecipeChanged then
        craftRecipeOptionsIndex = 1
    end

    if craftRecipeOptionsIndex <= 1 then
        MainFrameCorePreviousRecipe:Disable();
    else
        MainFrameCorePreviousRecipe:Enable();
    end

    if craftRecipeOptionsIndex >= table.getn(shouldCraft) then
        MainFrameCoreNextRecipe:Disable();
    else
        MainFrameCoreNextRecipe:Enable();
    end

    local currentID = shouldCraft[craftRecipeOptionsIndex]
    local idx = spellIndexMap[currentID]
    if idx then
        skillName, skillType, numAvailable = GetTradeSkillInfo(idx)
        craftButtonText = string.format(L["craft_button"], numAvailable)

        if GetTradeSkillIcon(idx) == "Interface\\Icons\\Trade_Engraving" then
            shouldCraftIcon = "Interface\\Icons\\Spell_Holy_GreaterHeal"
        else
            shouldCraftIcon = GetTradeSkillIcon(idx)
        end

        if numAvailable > 0 then
            MainFrameCoreCraft:Enable()
        else
            MainFrameCoreCraft:Disable()
        end

        txtShouldCraft:SetText(skillName)
    else
        shouldCraftIcon = "Interface\\InventoryItems\\WoWUnknownItem01"
        craftButtonText = L["craft_button_unavail"]
        MainFrameCoreCraft:Disable()
        txtShouldCraft:SetText(L["not_learned"])
    end

    txtShouldCraftRecipe:SetText(L["recipe_prefix"] .. shouldCraftRecipe[craftRecipeOptionsIndex]);
    imgSkillIcon:SetTexture(shouldCraftIcon);
    MainFrameCoreCraft:SetText(craftButtonText)
    MainFrameCore:SetHeight(250);
    MainFrameCoreCraft:Show();

    previousShouldCraft = shouldCraft;
end

function displayNextRecipe()
    craftRecipeOptionsIndex = craftRecipeOptionsIndex + 1
    displayRecipe()
end

function displayPreviousRecipe()
    craftRecipeOptionsIndex = craftRecipeOptionsIndex - 1
    displayRecipe()
end

function craftRecipe()
    local idx = spellIndexMap[shouldCraft[craftRecipeOptionsIndex]]
    if idx then
        local skillName, skillType, numAvailable = GetTradeSkillInfo(idx)
        if numAvailable > 0 then
            local L = addonTable.L
            print("|cff" .. addonTable.chat_frame_default_color .. L["crafting"] .. "|r |cff" .. addonTable.chat_frame_player_name_color .. numAvailable .. "x |r|cff" .. addonTable.chat_frame_default_color .. skillName .. "|r")
            DoTradeSkill(idx, numAvailable)
        end
    end
end

function resetValues()
    shouldCraft = {"unknown"};
    shouldCraftRecipe = {"unknown"};
    txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex]);
    imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01");
    txtShouldCraftRecipe:SetText('');
    local L = addonTable.L
    MainFrameCoreCraft:SetText(L and L["craft_button_unavail"] or "Craft");
end
