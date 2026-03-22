addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getAlchemyCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 60 then -- 1-59
        shouldCraft = {2330}; -- Minor Healing Potion
        shouldCraftRecipe = {"1x Peacebloom, 1x Silverleaf, 1x Empty Vial"};
    elseif rank > 59 and rank < 106 then -- 60-105
        shouldCraft = {2337}; -- Lesser Healing Potion
        shouldCraftRecipe = {"1x Minor Healing Potion, 1x Briarthorn"};
    elseif rank > 105 and rank < 110 then -- 106-109
        shouldCraft = {3171}; -- Elixir of Wisdom
        shouldCraftRecipe = {"1x Mageroyal, 1x Briarthorn, 1x Empty Vial"};
    elseif rank > 109 and rank < 140 then -- 110-139
        shouldCraft = {3447}; -- Healing Potion
        shouldCraftRecipe = {"1x Bruiseweed, 1x Briarthorn, 1x Leaded Vial"};
    elseif rank > 139 and rank < 155 then -- 140-154
        shouldCraft = {3173}; -- Lesser Mana Potion
        shouldCraftRecipe = {"1x Mageroyal, 1x Stranglekelp, 1x Empty Vial"};
    elseif rank > 154 and rank < 185 then -- 155-184
        shouldCraft = {7181}; -- Greater Healing Potion
        shouldCraftRecipe = {"1x Liferoot, 1x Kingsblood, 1x Leaded Vial"};
    elseif rank > 184 and rank < 205 then -- 185-204
        shouldCraft = {
            11449, -- Elixir of Agility
            3450,  -- Elixir of Fortitude
        };
        shouldCraftRecipe = {
            "1x Stranglekelp, 1x Goldthorn, 1x Leaded Vial", ---- Elixir of Agility
            "1x Wild Steelbloom, 1x Goldthorn, 1x Leaded Vial" -- Elixir of Fortitude
        };
    elseif rank > 204 and rank < 215 then -- 205-214
        shouldCraft = {11450}; -- Elixir of Greater Defense
        shouldCraftRecipe = {"1x Wild Steelbloom, 1x Goldthorn, 1x Leaded Vial"};
    elseif rank > 214 and rank < 230 then -- 215-229
        shouldCraft = {11457}; -- Superior Healing Potion
        shouldCraftRecipe = {"1x Sungrass, 1x Khadgar's Whisker, 1x Crystal Vial"};
    elseif rank > 229 and rank < 231 then -- 230
        shouldCraft = {11459}; -- Philosopher's Stone
        shouldCraftRecipe = {"4x Iron Bar, 1x Black Vitriol, 4x Purple Lotus, 4x Firebloom"};
    elseif rank > 230 and rank < 250 then -- 231-249
        shouldCraft = {11460}; -- Elixir of Detect Undead
        shouldCraftRecipe = {"1x Arthas' Tears, 1x Crystal Vial"};
    elseif rank > 249 and rank < 265 then -- 250-264
        shouldCraft = {11467}; -- Elixir of Greater Agility
        shouldCraftRecipe = {"1x Sungrass, 1x Goldthorn, 1x Crystal Vial"};
    elseif rank > 264 and rank < 285 then -- 265-284
        shouldCraft = {17553}; -- Superior Mana Potion
        shouldCraftRecipe = {"2x Sungrass, 2x Blindweed, 1x Crystal Vial"};
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {17556}; -- Major Healing Potion
        shouldCraftRecipe = {"2x Golden Sansam, 1x Mountain Silversage, 1x Crystal Vial"};
    elseif rank > 299 and rank < 310 then -- 300-309
        shouldCraft = {
            33732, -- Volatile Healing Potion
            33740, -- Adept's Elixir
        };
        shouldCraftRecipe = {
            "1x Golden Sansam, 1x Felweed, 1x Imbued Vial", -- Volatile Healing Potion
            "1x Dreamfoil, 1x Felweed, 1x Imbued Vial" ------- Adept's Elixir
        };
    elseif rank > 309 and rank < 325 then -- 310-324
        shouldCraft = {28545}; -- Elixir of Healing Power
        shouldCraftRecipe = {"1x Golden Sansam, 1x Dreaming Glory, 1x Imbued Vial"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {45061}; -- Mad Alchemist's Potion
        shouldCraftRecipe = {"2x Ragveil, 1x Crystal Vial"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {28551}; -- Super Healing Potion
        shouldCraftRecipe = {"2x Netherbloom, 1x Felweed, 1x Imbued Vial"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {28555}; -- Super Mana Potion
        shouldCraftRecipe = {"2x Dreaming Glory, 1x Felweed, 1x Imbued Vial"};
    elseif rank > 349 and rank < 360 then -- 350-359
        shouldCraft = {53838}; -- Resurgent Healing Potion
        shouldCraftRecipe = {"2x Goldclover, 1x Imbued Vial"};
    elseif rank > 359 and rank < 365 then -- 360-364
        shouldCraft = {53839}; -- Icy Mana Potion
        shouldCraftRecipe = {"2x Talandra's Rose, 1x Imbued Vial"};
    elseif rank > 364 and rank < 375 then -- 365-374
        shouldCraft = {53842}; -- Spellpower Elixir
        shouldCraftRecipe = {"1x Goldclover, 1x Tiger Lily, 1x Imbued Vial"};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {53812}; -- Pygmy Oil
        shouldCraftRecipe = {"1x Pygmy Suckerfish"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {53900}; -- Potion of Nightmares
        shouldCraftRecipe = {"1x Goldclover, 2x Talandra's Rose, 1x Imbued Vial"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {54218}; -- Elixir of Mighty Strength
        shouldCraftRecipe = {"2x Tiger Lily, 1x Imbued Vial"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {53840}; -- Elixir of Mighty Agility
        shouldCraftRecipe = {"2x Goldclover, 2x Adder's Tongue, 1x Imbued Vial"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {
            54221, -- Potion of Speed
            53840, -- Elixir of Mighty Agility
        };
        shouldCraftRecipe = {
            "2x Adder's Tongue, 1x Pygmy Oil, 1x Imbued Vial", -- Potion of Speed
            "2x Goldclover, 2x Adder's Tongue, 1x Imbued Vial" -- Elixir of Mighty Agility
        };
    elseif rank > 404 and rank < 415 then -- 405-414
        shouldCraft = {
            54221, -- Potion of Speed
            53905, -- Indestructible Potion
        };
        shouldCraftRecipe = {
            "2x Adder's Tongue, 1x Pygmy Oil, 1x Imbued Vial", -- Potion of Speed
            "2x Icethorn, 1x Imbued Vial" ----------------------- Indestructible Potion
        };
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {53837}; -- Runic Mana Potion
        shouldCraftRecipe = {"1x Goldclover, 2x Lichbloom, 1x Imbued Vial"};
    elseif rank > 424 and rank < 430 then -- 425-429
        shouldCraft = {60350}; -- Transmute: Titanium
        shouldCraftRecipe = {"8x Saronite Bar"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {57427}; -- Transmute: Earthsiege Diamond
        shouldCraftRecipe = {"1x Dark Jade, 1x Huge Citrine, 1x Eternal Fire"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {
            57425, -- Transmute: Skyflare Diamond
            53903, -- Flask of Endless Rage
            54213, -- Flask of Pure Mojo
            53902, -- Flask of Stoneblood
            53901, -- Flask of the Frost Wyrm
        };
        shouldCraftRecipe = {
            "1x Bloodstone, 1x Chalcedony, 1x Eternal Air", --------------------------- Transmute: Skyflare Diamond
            "7x Lichbloom, 3x Goldclover, 1x Frost Lotus, 1x Enchanted Vial", --------- Flask of Endless Rage
            "7x Icethorn, 3x Pygmy Oil, 1x Frost Lotus, 1x Enchanted Vial", ----------- Flask of Pure Mojo
            "7x Lichbloom, 3x Crystallized Life, 1x Frost Lotus, 1x Enchanted Vial", -- Flask of Stoneblood
            "5x Icethorn, 5x Lichbloom, 1x Frost Lotus, 1x Enchanted Vial" ------------ Flask of the Frost Wyrm
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            53903, -- Flask of Endless Rage
            54213, -- Flask of Pure Mojo
            53902, -- Flask of Stoneblood
            53901, -- Flask of the Frost Wyrm
            57425, -- Transmute: Skyflare Diamond
        };
        shouldCraftRecipe = {
            "7x Lichbloom, 3x Goldclover, 1x Frost Lotus, 1x Enchanted Vial", --------- Flask of Endless Rage
            "7x Icethorn, 3x Pygmy Oil, 1x Frost Lotus, 1x Enchanted Vial", ----------- Flask of Pure Mojo
            "7x Lichbloom, 3x Crystallized Life, 1x Frost Lotus, 1x Enchanted Vial", -- Flask of Stoneblood
            "5x Icethorn, 5x Lichbloom, 1x Frost Lotus, 1x Enchanted Vial", ----------- Flask of the Frost Wyrm
            "1x Bloodstone, 1x Chalcedony, 1x Eternal Air" ---------------------------- Transmute: Skyflare Diamond
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Alchemy module|r");
