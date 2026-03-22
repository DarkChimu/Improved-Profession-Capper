addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getFirstAidCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 40 then -- 1-39
        shouldCraft = {3275}; -- Linen Bandage
        shouldCraftRecipe = {"1x Linen Cloth"};
    elseif rank > 39 and rank < 80 then -- 40-79
        shouldCraft = {3276}; -- Heavy Linen Bandage
        shouldCraftRecipe = {"2x Linen Cloth"};
    elseif rank > 79 and rank < 100 then -- 80-99
        shouldCraft = {
            3277, -- Wool Bandage
            3276, -- Heavy Linen Bandage
            7934, -- Anti-Venom
        };
        shouldCraftRecipe = {
            "1x Wool Cloth", ------ Wool Bandage
            "2x Linen Cloth", ----- Heavy Linen Bandage
            "1x Small Venom Sac" -- Anti-Venom
        };
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {
            3277, -- Wool Bandage
            7934, -- Anti-Venom
        };
        shouldCraftRecipe = {
            "1x Wool Cloth", ------ Wool Bandage
            "1x Small Venom Sac" -- Anti-Venom
        };
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {3278}; -- Heavy Wool Bandage
        shouldCraftRecipe = {"2x Wool Cloth"};
    elseif rank > 129 and rank < 150 then -- 130-149
        shouldCraft = {
            3278, -- Heavy Wool Bandage
            7935, -- Strong Anti-Venom
        };
        shouldCraftRecipe = {
            "2x Wool Cloth", ------ Heavy Wool Bandage
            "1x Large Venom Sac" -- Strong Anti-Venom
        };
    elseif rank > 149 and rank < 180 then -- 150-179
        shouldCraft = {
            7928, -- Silk Bandage
            3278, -- Heavy Wool Bandage
            7935, -- Strong Anti-Venom
        };
        shouldCraftRecipe = {
            "1x Silk Cloth", ------- Silk Bandage
            "2x Wool Cloth", ------- Heavy Wool Bandage
            "1x Large Venom Sac" -- Strong Anti-Venom
        };
    elseif rank > 179 and rank < 210 then -- 180-209
        shouldCraft = {7929}; -- Heavy Silk Bandage
        shouldCraftRecipe = {"2x Silk Cloth"};
    elseif rank > 209 and rank < 240 then -- 210-239
        shouldCraft = {
            10840, -- Mageweave Bandage
            7929,  -- Heavy Silk Bandage
        };
        shouldCraftRecipe = {
            "1x Mageweave Cloth", -- Mageweave Bandage
            "2x Silk Cloth" -------- Heavy Silk Bandage
        };
    elseif rank > 239 and rank < 260 then -- 240-259
        shouldCraft = {10841}; -- Heavy Mageweave Bandage
        shouldCraftRecipe = {"2x Mageweave Cloth"};
    elseif rank > 259 and rank < 290 then -- 260-289
        shouldCraft = {
            18629, -- Runecloth Bandage
            10841, -- Heavy Mageweave Bandage
        };
        shouldCraftRecipe = {
            "1x Runecloth", ------- Runecloth Bandage
            "2x Mageweave Cloth" -- Heavy Mageweave Bandage
        };
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            18630, -- Heavy Runecloth Bandage
            10841, -- Heavy Mageweave Bandage
        };
        shouldCraftRecipe = {
            "2x Runecloth", ------- Heavy Runecloth Bandage
            "2x Mageweave Cloth" -- Heavy Mageweave Bandage
        };
    elseif rank > 299 and rank < 330 then -- 300-329
        shouldCraft = {
            27032, -- Netherweave Bandage
            18630, -- Heavy Runecloth Bandage
            23787, -- Powerful Anti-Venom
        };
        shouldCraftRecipe = {
            "1x Netherweave Cloth", -- Netherweave Bandage
            "2x Runecloth", ---------- Heavy Runecloth Bandage
            "1x Huge Venom Sac" ------ Powerful Anti-Venom
        };
    elseif rank > 329 and rank < 350 then -- 330-349
        shouldCraft = {
            27033, -- Heavy Netherweave Bandage
            18630, -- Heavy Runecloth Bandage
            23787, -- Powerful Anti-Venom
        };
        shouldCraftRecipe = {
            "2x Netherweave Cloth", -- Heavy Netherweave Bandage
            "2x Runecloth", ---------- Heavy Runecloth Bandage
            "1x Huge Venom Sac" ------ Powerful Anti-Venom
        };
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {
            45545, -- Frostweave Bandage
            27033, -- Heavy Netherweave Bandage
        };
        shouldCraftRecipe = {
            "1x Frostweave Cloth", -- Frostweave Bandage
            "2x Netherweave Cloth" -- Heavy Netherweave Bandage
        };
    elseif rank > 374 and rank < 400 then -- 375-399
        shouldCraft = {45545}; -- Frostweave Bandage
        shouldCraftRecipe = {"1x Frostweave Cloth"};
    elseif rank > 399 and rank < 450 then -- 400-449
        shouldCraft = {45546}; -- Heavy Frostweave Bandage
        shouldCraftRecipe = {"2x Frostweave Cloth"};
    end
    return shouldCraft, shouldCraftRecipe
end


