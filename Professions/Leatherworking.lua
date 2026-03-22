local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 20 then -- 1-19
        shouldCraft = {
            2881, -- Light Leather
            2152, -- Light Armor Kit
        };
        shouldCraftRecipe = {
            "3x Ruined Leather Scraps",
            "1x Light Leather",
        };
    elseif rank > 19 and rank < 30 then -- 20-29
        shouldCraft = {2152}; -- Light Armor Kit
        shouldCraftRecipe = {"1x Light Leather"};
    elseif rank > 29 and rank < 50 then -- 30-49
        shouldCraft = {9058}; -- Handstitched Leather Cloak
        shouldCraftRecipe = {"2x Light Leather, 1x Coarse Thread"};
    elseif rank > 49 and rank < 55 then -- 50-54
        shouldCraft = {9062}; -- Small Leather Ammo Pouch
        shouldCraftRecipe = {"3x Light Leather, 4x Coarse Thread"};
    elseif rank > 54 and rank < 85 then -- 55-84
        shouldCraft = {3756}; -- Embossed Leather Gloves
        shouldCraftRecipe = {"3x Light Leather, 2x Coarse Thread"};
    elseif rank > 84 and rank < 100 then -- 85-99
        shouldCraft = {3763}; -- Fine Leather Belt
        shouldCraftRecipe = {"6x Light Leather, 2x Coarse Thread"};
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {3817}; -- Cured Medium Hide
        shouldCraftRecipe = {"1x Medium Hide, 1x Salt"};
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {2167}; -- Dark Leather Boots
        shouldCraftRecipe = {"4x Medium Leather, 2x Fine Thread, 1x Gray Dye"};
    elseif rank > 129 and rank < 145 then -- 130-144
        shouldCraft = {
            3766, -- Dark Leather Belt
            2168, -- Dark Leather Cloak
        };
        shouldCraftRecipe = {
            "1x Fine Leather Belt, 1x Cured Medium Hide, 2x Fine Thread, 1x Gray Dye",
            "8x Medium Leather, 1x Fine Thread, 1x Gray Dye",
        };
    elseif rank > 144 and rank < 150 then -- 145-149
        shouldCraft = {3764}; -- Hillman's Leather Gloves
        shouldCraftRecipe = {"14x Medium Leather, 4x Fine Thread"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {23190}; -- Heavy Leather Ball
        shouldCraftRecipe = {"2x Heavy Leather, 1x Fine Thread"};
    elseif rank > 154 and rank < 165 then -- 155-164
        shouldCraft = {3818}; -- Cured Heavy Hide
        shouldCraftRecipe = {"1x Heavy Hide, 3x Salt"};
    elseif rank > 164 and rank < 180 then -- 165-179
        shouldCraft = {3780}; -- Heavy Armor Kit
        shouldCraftRecipe = {"5x Heavy Leather, 1x Fine Thread"};
    elseif rank > 179 and rank < 190 then -- 180-189
        shouldCraft = {7151}; -- Barbaric Shoulders
        shouldCraftRecipe = {"8x Heavy Leather, 1x Cured Heavy Hide, 2x Fine Thread"};
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {7156}; -- Guardian Gloves
        shouldCraftRecipe = {"4x Heavy Leather, 1x Cured Heavy Hide, 1x Silken Thread"};
    elseif rank > 199 and rank < 205 then -- 200-204
        shouldCraft = {10487}; -- Thick Armor Kit
        shouldCraftRecipe = {"5x Thick Leather, 1x Silken Thread"};
    elseif rank > 204 and rank < 235 then -- 205-234
        shouldCraft = {10507}; -- Nightscape Headband
        shouldCraftRecipe = {"5x Thick Leather, 2x Silken Thread"};
    elseif rank > 234 and rank < 250 then -- 235-249
        shouldCraft = {10548}; -- Nightscape Pants
        shouldCraftRecipe = {"14x Thick Leather, 4x Silken Thread"};
    elseif rank > 249 and rank < 265 then -- 250-264
        shouldCraft = {19058}; -- Rugged Armor Kit
        shouldCraftRecipe = {"5x Rugged Leather"};
    elseif rank > 264 and rank < 290 then -- 265-289
        shouldCraft = {19052}; -- Wicked Leather Bracers
        shouldCraftRecipe = {"8x Rugged Leather, 1x Black Dye, 1x Rune Thread"};
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {19071}; -- Wicked Leather Headband
        shouldCraftRecipe = {"12x Rugged Leather, 1x Black Dye, 1x Rune Thread"};
    elseif rank > 299 and rank < 310 then -- 300-309
        shouldCraft = {32454}; -- Knothide Leather
        shouldCraftRecipe = {"5x Knothide Leather Scraps"};
    elseif rank > 309 and rank < 325 then -- 310-324
        shouldCraft = {32456}; -- Knothide Armor Kit
        shouldCraftRecipe = {"4x Knothide Leather"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {32455}; -- Heavy Knothide Leather
        shouldCraftRecipe = {"5x Knothide Leather"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {32473}; -- Thick Draenic Vest
        shouldCraftRecipe = {"3x Heavy Knothide Leather, 3x Rune Thread"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            32469, -- Scaled Draenic Boots
            32473, -- Thick Draenic Vest
        };
        shouldCraftRecipe = {
            "2x Heavy Knothide Leather, 2x Fel Scales, 3x Rune Thread",
            "3x Heavy Knothide Leather, 3x Rune Thread",
        };
    elseif rank > 349 and rank < 380 then -- 350-379
        shouldCraft = {50962}; -- Borean Armor Kit
        shouldCraftRecipe = {"4x Borean Leather"};
    elseif rank > 379 and rank < 390 then -- 380-389
        shouldCraft = {50948}; -- Arctic Boots
        shouldCraftRecipe = {"8x Borean Leather"};
    elseif rank > 389 and rank < 405 then -- 390-404
        shouldCraft = {50936}; -- Heavy Borean Leather
        shouldCraftRecipe = {"6x Borean Leather"};
    elseif rank > 404 and rank < 420 then -- 405-419
        shouldCraft = {
            60601, -- Dark Frostscale Leggings
            60611, -- Dark Iceborne Leggings
        };
        shouldCraftRecipe = {
            "4x Heavy Borean Leather, 5x Crystallized Water",
            "4x Heavy Borean Leather, 5x Crystallized Shadow",
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {60720}; -- Overcast Bracers
        shouldCraftRecipe = {"8x Heavy Borean Leather, 1x Eternal Water"};
    elseif rank > 424 and rank < 435 then -- 425-434
        shouldCraft = {60721}; -- Overcast Handwraps
        shouldCraftRecipe = {"10x Heavy Borean Leather, 1x Eternal Water"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {
            50965, -- Frosthide Leg Armor
            50967, -- Icescale Leg Armor
        };
        shouldCraftRecipe = {
            "2x Arctic Fur, 2x Nerubian Chitin, 1x Frozen Orb",
            "2x Arctic Fur, 2x Icy Dragonscale, 1x Frozen Orb",
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            60757, -- Revenant's Treads
            60756, -- Revenant's Breastplate
            60640, -- Durable Nerubhide Cape
            60637, -- Ice Striker's Cloak
            60761, -- Earthgiving Boots
            60755, -- Giantmaim Bracers
            60759, -- Trollwoven Girdle
            62176, -- Windripper Boots
            60758, -- Trollwoven Spaulders
            60760, -- Earthgiving Legguards
            60754, -- Giantmaim Legguards
            62177, -- Windripper Leggings
        };
        shouldCraftRecipe = {
            "10x Heavy Borean Leather, 10x Eternal Water, 1x Frozen Orb",
            "12x Heavy Borean Leather, 12x Eternal Water, 1x Frozen Orb",
            "2x Arctic Fur, 40x Nerubian Chitin, 1x Frozen Orb",
            "2x Arctic Fur, 6x Eternal Fire, 4x Eternal Shadow, 1x Frozen Orb",
            "10x Heavy Borean Leather, 5x Eternal Life, 5x Eternal Water, 1x Frozen Orb",
            "10x Heavy Borean Leather, 5x Eternal Air, 5x Eternal Water, 1x Frozen Orb",
            "10x Heavy Borean Leather, 5x Eternal Fire, 5x Eternal Shadow, 1x Frozen Orb",
            "10x Heavy Borean Leather, 5x Eternal Air, 5x Eternal Water, 1x Frozen Orb",
            "10x Heavy Borean Leather, 6x Eternal Fire, 6x Eternal Shadow, 1x Frozen Orb",
            "12x Heavy Borean Leather, 6x Eternal Life, 6x Eternal Water, 1x Frozen Orb",
            "12x Heavy Borean Leather, 6x Eternal Air, 6x Eternal Water, 1x Frozen Orb",
            "12x Heavy Borean Leather, 6x Eternal Air, 6x Eternal Water, 1x Frozen Orb",
        };
    end
    return shouldCraft, shouldCraftRecipe;
end
