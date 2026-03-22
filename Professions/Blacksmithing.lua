addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 30 then -- 1-29
        shouldCraft = {2660}; -- Rough Sharpening Stone
        shouldCraftRecipe = {"1x Rough Stone"};
    elseif rank > 29 and rank < 65 then -- 30-64
        shouldCraft = {3320}; -- Rough Grinding Stone
        shouldCraftRecipe = {"2x Rough Stone"};
    elseif rank > 64 and rank < 75 then -- 65-74
        shouldCraft = {2661}; -- Copper Chain Belt
        shouldCraftRecipe = {"6x Copper Bar"};
    elseif rank > 74 and rank < 87 then -- 75-86
        shouldCraft = {3326}; -- Coarse Grinding Stone
        shouldCraftRecipe = {"2x Coarse Stone"};
    elseif rank > 86 and rank < 100 then -- 87-99
        shouldCraft = {2666}; -- Runed Copper Belt
        shouldCraftRecipe = {"10x Copper Bar"};
    elseif rank > 99 and rank < 105 then -- 100-104
        shouldCraft = {7818}; -- Silver Rod
        shouldCraftRecipe = {"1x Silver Bar, 2x Rough Grinding Stone"};
    elseif rank > 104 and rank < 125 then -- 105-124
        shouldCraft = {2668}; -- Rough Bronze Leggings
        shouldCraftRecipe = {"6x Bronze Bar"};
    elseif rank > 124 and rank < 150 then -- 125-149
        shouldCraft = {3337}; -- Heavy Grinding Stone
        shouldCraftRecipe = {"3x Heavy Stone"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {14379}; -- Golden Rod
        shouldCraftRecipe = {"1x Gold Bar, 2x Coarse Grinding Stone"};
    elseif rank > 154 and rank < 165 then -- 155-164
        shouldCraft = {3506}; -- Green Iron Leggings
        shouldCraftRecipe = {"8x Iron Bar, 1x Heavy Grinding Stone, 1x Green Dye"};
    elseif rank > 164 and rank < 190 then -- 165-189
        shouldCraft = {3501}; -- Green Iron Bracers
        shouldCraftRecipe = {"6x Iron Bar, 1x Green Dye"};
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {7223}; -- Golden Scale Bracers
        shouldCraftRecipe = {"5x Steel Bar, 2x Heavy Grinding Stone"};
    elseif rank > 199 and rank < 205 then -- 200-204
        shouldCraft = {14380}; -- Truesilver Rod
        shouldCraftRecipe = {"1x Truesilver Bar, 1x Heavy Grinding Stone"};
    elseif rank > 204 and rank < 210 then -- 205-209
        shouldCraft = {9920}; -- Solid Grinding Stone
        shouldCraftRecipe = {"4x Solid Stone"};
    elseif rank > 209 and rank < 225 then -- 210-224
        shouldCraft = {9928}; -- Heavy Mithril Gauntlet
        shouldCraftRecipe = {"6x Mithril Bar, 4x Mageweave Cloth"};
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {9937}; -- Mithril Scale Bracers
        shouldCraftRecipe = {"8x Mithril Bar"};
    elseif rank > 234 and rank < 250 then -- 235-249
        shouldCraft = {
            9964,  -- Mithril Spurs
            9961,  -- Mithril Coif
        };
        shouldCraftRecipe = {
            "4x Mithril Bar, 3x Solid Grinding Stone", -- Mithril Spurs
            "10x Mithril Bar, 6x Mageweave Cloth" ------- Mithril Coif
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {16641}; -- Dense Sharpening Stone
        shouldCraftRecipe = {"1x Dense Stone"};
    elseif rank > 259 and rank < 275 then -- 260-274
        shouldCraft = {16644}; -- Thorium Bracers
        shouldCraftRecipe = {"8x Thorium Bar"};
    elseif rank > 274 and rank < 280 then -- 275-279
        shouldCraft = {20201}; -- Arcanite Rod
        shouldCraftRecipe = {"3x Arcanite Bar, 1x Dense Grinding Stone"};
    elseif rank > 279 and rank < 290 then -- 280-289
        shouldCraft = {16649}; -- Imperial Plate Bracers
        shouldCraftRecipe = {"12x Thorium Bar"};
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            16652, -- Thorium Boots
            16653, -- Thorium Helm
        };
        shouldCraftRecipe = {
            "12x Thorium Bar, 8x Rugged Leather", -- Thorium Boots
            "12x Thorium Bar, 1x Star Ruby" -------- Thorium Helm
        };
    elseif rank > 299 and rank < 305 then -- 300-304
        shouldCraft = {34607}; -- Fel Weightstone
        shouldCraftRecipe = {"1x Fel Iron Bar, 1x Netherweave Cloth"};
    elseif rank > 304 and rank < 315 then -- 305-314
        shouldCraft = {29547}; -- Fel Iron Plate Belt
        shouldCraftRecipe = {"4x Fel Iron Bar"};
    elseif rank > 314 and rank < 320 then -- 315-319
        shouldCraft = {29552}; -- Fel Iron Chain Gloves
        shouldCraftRecipe = {"5x Fel Iron Bar"};
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            29548, -- Fel Iron Plate Boots
            29553, -- Fel Iron Chain Bracers
        };
        shouldCraftRecipe = {
            "6x Fel Iron Bar", -- Fel Iron Plate Boots
            "6x Fel Iron Bar"  -- Fel Iron Chain Bracers
        };
    elseif rank > 324 and rank < 330 then -- 325-329
        shouldCraft = {32284}; -- Lesser Rune of Warding
        shouldCraftRecipe = {"1x Adamantite Bar"};
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {29550}; -- Fel Iron Breastplate
        shouldCraftRecipe = {"10x Fel Iron Bar"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {29568}; -- Adamantite Cleaver
        shouldCraftRecipe = {"8x Adamantite Bar"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {29728}; -- Lesser Ward of Shielding
        shouldCraftRecipe = {"1x Adamantite Bar"};
    elseif rank > 349 and rank < 360 then -- 350-359
        shouldCraft = {
            52569, -- Cobalt Boots
            52568, -- Cobalt Belt
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar", -- Cobalt Boots
            "4x Cobalt Bar" --- Cobalt Belt
        };
    elseif rank > 359 and rank < 370 then -- 360-369
        shouldCraft = {
            54550, -- Cobalt Triangle Shield
            55834, -- Cobalt Bracers
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar", -- Cobalt Triangle Shield
            "4x Cobalt Bar" --- Cobalt Bracers
        };
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {
            52567, -- Cobalt Legplates
            52571, -- Cobalt Helm
        };
        shouldCraftRecipe = {
            "5x Cobalt Bar", -- Cobalt Legplates
            "5x Cobalt Bar" --- Cobalt Helm
        };
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {55835}; -- Cobalt Gauntlets
        shouldCraftRecipe = {"5x Cobalt Bar"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {54918}; -- Spiked Cobalt Boots
        shouldCraftRecipe = {"7x Cobalt Bar"};
    elseif rank > 384 and rank < 390 then -- 385-389
        shouldCraft = {55202}; -- Sure-fire Shuriken
        shouldCraftRecipe = {"7x Cobalt Bar"};
    elseif rank > 389 and rank < 395 then -- 390-394
        shouldCraft = {55204}; -- Notched Cobalt War Axe
        shouldCraftRecipe = {"10x Cobalt Bar"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {59436}; -- Brilliant Saronite Belt
        shouldCraftRecipe = {"6x Cobalt Bar, 5x Saronite Bar"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {54949}; -- Horned Cobalt Helm
        shouldCraftRecipe = {"8x Cobalt Bar"};
    elseif rank > 404 and rank < 415 then -- 405-414
        shouldCraft = {55206}; -- Deadly Saronite Dirk
        shouldCraftRecipe = {"7x Saronite Bar, 2x Crystallized Air"};
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {55656}; -- Eternal Belt Buckle
        shouldCraftRecipe = {"4x Saronite Bar, 1x Eternal Earth, 1x Eternal Water, 1x Eternal Shadow"};
    elseif rank > 424 and rank < 430 then -- 425-429
        shouldCraft = {55839}; -- Titanium Weapon Chain
        shouldCraftRecipe = {"2x Saronite Bar, 1x Titanium Bar"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {55311}; -- Savage Saronite Hauberk
        shouldCraftRecipe = {"14x Saronite Bar, 1x Eternal Earth"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {55303}; -- Daunting Legplates
        shouldCraftRecipe = {"14x Saronite Bar, 1x Eternal Earth"};
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {55303}; -- Daunting Legplates (and Titansteel items if available)
        shouldCraftRecipe = {"14x Saronite Bar, 1x Eternal Earth"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Blacksmithing module|r');
