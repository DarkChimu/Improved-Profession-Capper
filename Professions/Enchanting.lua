local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getEnchantingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 2 then -- 1
        shouldCraft = {7421}; -- Runed Copper Rod
        shouldCraftRecipe = {"1x Copper Rod, 1x Strange Dust, 1x Lesser Magic Essence"};
    elseif rank > 1 and rank < 10 then -- 2-9
        shouldCraft = {
            7418, -- Enchant Bracer - Minor Health
            7421, -- Runed Copper Rod
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ----------------------------------------- Enchant Bracer - Minor Health
            "1x Copper Rod, 1x Strange Dust, 1x Lesser Magic Essence" -- Runed Copper Rod
        };
    elseif rank > 9 and rank < 15 then -- 10-14
        shouldCraft = {7418}; -- Enchant Bracer - Minor Health
        shouldCraftRecipe = {"1x Strange Dust"};
    elseif rank > 14 and rank < 20 then -- 15-19
        shouldCraft = {
            7418, -- Enchant Bracer - Minor Health
            7420, -- Enchant Chest - Minor Health
        };
        shouldCraftRecipe = {
            "1x Strange Dust", -- Enchant Bracer - Minor Health
            "1x Strange Dust" --- Enchant Chest - Minor Health
        };
    elseif rank > 19 and rank < 50 then -- 20-49
        shouldCraft = {
            7418, -- Enchant Bracer - Minor Health
            7420, -- Enchant Chest - Minor Health
            7443, -- Enchant Chest - Minor Mana
        };
        shouldCraftRecipe = {
            "1x Strange Dust", --------- Enchant Bracer - Minor Health
            "1x Strange Dust", --------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence" -- Enchant Chest - Minor Mana
        };
    elseif rank > 49 and rank < 60 then -- 50-59
        shouldCraft = {
            7418, -- Enchant Bracer - Minor Health
            7420, -- Enchant Chest - Minor Health
            7443, -- Enchant Chest - Minor Mana
            7457, -- Enchant Bracer - Minor Stamina
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ---------- Enchant Bracer - Minor Health
            "1x Strange Dust", ---------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "3x Strange Dust" ----------- Enchant Bracer - Minor Stamina
        };
    elseif rank > 59 and rank < 90 then -- 60-89
        shouldCraft = {
            7418, -- Enchant Bracer - Minor Health
            7420, -- Enchant Chest - Minor Health
            7443, -- Enchant Chest - Minor Mana
            7457, -- Enchant Bracer - Minor Stamina
            7766, -- Enchant Bracer - Minor Spirit
        };
        shouldCraftRecipe = {
            "1x Strange Dust", ---------- Enchant Bracer - Minor Health
            "1x Strange Dust", ---------- Enchant Chest - Minor Health
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "3x Strange Dust", ---------- Enchant Bracer - Minor Stamina
            "2x Lesser Magic Essence" --- Enchant Bracer - Minor Spirit
        };
    elseif rank > 89 and rank < 100 then -- 90-99
        shouldCraft = {
            7443, -- Enchant Chest - Minor Mana
            7766, -- Enchant Bracer - Minor Spirit
            7457, -- Enchant Bracer - Minor Stamina
        };
        shouldCraftRecipe = {
            "1x Lesser Magic Essence", -- Enchant Chest - Minor Mana
            "2x Lesser Magic Essence", -- Enchant Bracer - Minor Spirit
            "3x Strange Dust" ----------- Enchant Bracer - Minor Stamina
        };
    elseif rank > 99 and rank < 101 then -- 100
        shouldCraft = {
            7795,  -- Runed Silver Rod
            7766,  -- Enchant Bracer - Minor Spirit
            14807, -- Greater Magic Wand
        };
        shouldCraftRecipe = {
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed Copper Rod", -- Runed Silver Rod
            "2x Lesser Magic Essence", -------------------------------------------------------- Enchant Bracer - Minor Spirit
            "1x Simple Wood, 1x Greater Magic Essence" ---------------------------------------- Greater Magic Wand
        };
    elseif rank > 100 and rank < 110 then -- 101-109
        shouldCraft = {
            7766,  -- Enchant Bracer - Minor Spirit
            14807, -- Greater Magic Wand
            7795,  -- Runed Silver Rod
        };
        shouldCraftRecipe = {
            "2x Lesser Magic Essence", ------------------------------------------------------- Enchant Bracer - Minor Spirit
            "1x Simple Wood, 1x Greater Magic Essence", -------------------------------------- Greater Magic Wand
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed Copper Rod" -- Runed Silver Rod
        };
    elseif rank > 109 and rank < 135 then -- 110-134
        shouldCraft = {
            13419, -- Enchant Cloak - Minor Agility
            13378, -- Enchant Shield - Minor Stamina
            7766,  -- Enchant Bracer - Minor Spirit
            7782,  -- Enchant Bracer - Minor Strength
            7795,  -- Runed Silver Rod
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------- Enchant Cloak - Minor Agility
            "1x Lesser Astral Essence, 2x Strange Dust", -------------------------------------- Enchant Shield - Minor Stamina
            "2x Lesser Magic Essence", -------------------------------------------------------- Enchant Bracer - Minor Spirit
            "5x Strange Dust", ---------------------------------------------------------------- Enchant Bracer - Minor Strength
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed Copper Rod" -- Runed Silver Rod
        };
    elseif rank > 134 and rank < 140 then -- 135-139
        shouldCraft = {
            13419, -- Enchant Cloak - Minor Agility
            13501, -- Enchant Bracer - Lesser Stamina
            7863,  -- Enchant Boots - Minor Stamina
            7795,  -- Runed Silver Rod
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------ Enchant Cloak - Minor Agility
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Stamina
            "8x Strange Dust", --------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed Copper Rod" -- Runed Silver Rod
        };
    elseif rank > 139 and rank < 150 then -- 140-149
        shouldCraft = {
            13419, -- Enchant Cloak - Minor Agility
            13536, -- Enchant Bracer - Lesser Strength
            13501, -- Enchant Bracer - Lesser Stamina
            7863,  -- Enchant Boots - Minor Stamina
            7795,  -- Runed Silver Rod
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", ------------------------------------------------------ Enchant Cloak - Minor Agility
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Stamina
            "2x Soul Dust", ------------------------------------------------------------------ Enchant Bracer - Lesser Strength
            "8x Strange Dust", --------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Silver Rod, 6x Strange Dust, 3x Greater Magic Essence, 1x Runed Copper Rod" -- Runed Silver Rod
        };
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {
            13419, -- Enchant Cloak - Minor Agility
            13536, -- Enchant Bracer - Lesser Strength
            13501, -- Enchant Bracer - Lesser Stamina
            7863,  -- Enchant Boots - Minor Stamina
        };
        shouldCraftRecipe = {
            "1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
            "2x Soul Dust", -------------- Enchant Bracer - Lesser Stamina
            "2x Soul Dust", -------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust" ------------ Enchant Boots - Minor Stamina
        };
    elseif rank > 154 and rank < 156 then -- 155
        shouldCraft = {
            13628, -- Runed Golden Rod
            13536, -- Enchant Bracer - Lesser Strength
            13501, -- Enchant Bracer - Lesser Stamina
            7863,  -- Enchant Boots - Minor Stamina
        };
        shouldCraftRecipe = {
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
            "2x Soul Dust", -------------------------------------------------------------------------------------- Enchant Bracer - Lesser Stamina
            "2x Soul Dust", -------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust" ------------------------------------------------------------------------------------ Enchant Boots - Minor Stamina
        };
    elseif rank > 155 and rank < 165 then -- 156-164
        shouldCraft = {
            13536, -- Enchant Bracer - Lesser Strength
            7863,  -- Enchant Boots - Minor Stamina
            13628, -- Runed Golden Rod
        };
        shouldCraftRecipe = {
            "2x Soul Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 164 and rank < 180 then -- 165-179
        shouldCraft = {
            13642, -- Enchant Bracer - Spirit
            13536, -- Enchant Bracer - Lesser Strength
            7863,  -- Enchant Boots - Minor Stamina
            13628, -- Runed Golden Rod
        };
        shouldCraftRecipe = {
            "1x Lesser Mystic Essence", ------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 179 and rank < 184 then -- 180-183
        shouldCraft = {
            13661, -- Enchant Bracer - Strength
            13642, -- Enchant Bracer - Spirit
            13536, -- Enchant Bracer - Lesser Strength
            7863,  -- Enchant Boots - Minor Stamina
            13628, -- Runed Golden Rod
        };
        shouldCraftRecipe = {
            "1x Vision Dust", ----------------------------------------------------------------------------------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence", ------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "8x Strange Dust", ---------------------------------------------------------------------------------- Enchant Boots - Minor Stamina
            "1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod" -- Runed Golden Rod
        };
    elseif rank > 184 and rank < 200 then -- 185-199
        shouldCraft = {
            13661, -- Enchant Bracer - Strength
            13642, -- Enchant Bracer - Spirit
            13640, -- Enchant Chest - Greater Health
        };
        shouldCraftRecipe = {
            "1x Vision Dust", ------------ Enchant Bracer - Strength
            "1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
            "3x Soul Dust" --------------- Enchant Chest - Greater Health
        };
    elseif rank > 199 and rank < 201 then -- 200
        shouldCraft = {
            13702, -- Runed Truesilver Rod
            13661, -- Enchant Bracer - Strength
            13536, -- Enchant Bracer - Lesser Strength
        };
        shouldCraftRecipe = {
            "1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod", -- Runed Truesilver Rod
            "1x Vision Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Strength
            "2x Soul Dust" ---------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
        };
    elseif rank > 200 and rank < 205 then -- 201-204
        shouldCraft = {
            13661, -- Enchant Bracer - Strength
            13642, -- Enchant Bracer - Spirit
            13536, -- Enchant Bracer - Lesser Strength
            13702, -- Runed Truesilver Rod
        };
        shouldCraftRecipe = {
            "1x Vision Dust", ------------------------------------------------------------------------------------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence", --------------------------------------------------------------------------- Enchant Bracer - Spirit
            "2x Soul Dust", --------------------------------------------------------------------------------------- Enchant Bracer - Lesser Strength
            "1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod" -- Runed Truesilver Rod
        };
    elseif rank > 204 and rank < 220 then -- 205-219
        shouldCraft = {
            13794, -- Enchant Cloak - Resistance
            13661, -- Enchant Bracer - Strength
            13642, -- Enchant Bracer - Spirit
        };
        shouldCraftRecipe = {
            "1x Nether Essence", -------- Enchant Cloak - Resistance
            "1x Vision Dust", ----------- Enchant Bracer - Strength
            "1x Lesser Mystic Essence" -- Enchant Bracer - Spirit
        };
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            13794, -- Enchant Cloak - Resistance
            13746, -- Enchant Cloak - Greater Defense
            13642, -- Enchant Bracer - Spirit
            13644, -- Enchant Boots - Lesser Stamina
        };
        shouldCraftRecipe = {
            "1x Lesser Nether Essence", -- Enchant Cloak - Resistance
            "3x Vision Dust", ------------ Enchant Cloak - Greater Defense
            "1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
            "4x Soul Dust" --------------- Enchant Boots - Lesser Stamina
        };
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {
            13794, -- Enchant Cloak - Resistance
            13746, -- Enchant Cloak - Greater Defense
        };
        shouldCraftRecipe = {
            "1x Lesser Nether Essence", -- Enchant Cloak - Resistance
            "3x Vision Dust" ------------- Enchant Cloak - Greater Defense
        };
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {
            13882, -- Enchant Cloak - Lesser Agility
            13858, -- Enchant Chest - Superior Health
        };
        shouldCraftRecipe = {
            "2x Lesser Nether Essence", -- Enchant Cloak - Lesser Agility
            "6x Vision Dust" ------------- Enchant Chest - Superior Health
        };
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {
            13882,  -- Enchant Cloak - Lesser Agility
            63746,  -- Enchant Boots - Lesser Accuracy
            13858,  -- Enchant Chest - Superior Health
        };
        shouldCraftRecipe = {
            "2x Lesser Nether Essence", ------------------ Enchant Cloak - Lesser Agility
            "4x Vision Dust, 1x Lesser Nether Essence", -- Enchant Boots - Lesser Accuracy
            "6x Vision Dust" ----------------------------- Enchant Chest - Superior Health
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            13945, -- Enchant Bracer - Greater Stamina
            13939, -- Enchant Bracer - Greater Strength
            25127, -- Lesser Mana Oil
        };
        shouldCraftRecipe = {
            "5x Dream Dust", ----------------------------------- Enchant Bracer - Greater Stamina
            "2x Dream Dust, 1x Greater Nether Essence", -------- Enchant Bracer - Greater Strength
            "3x Dream Dust, 2x Purple Lotus, 1x Crystal Vial" -- Lesser Mana Oil
        };
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {
            20008, -- Enchant Bracer - Greater Intellect
            13945, -- Enchant Bracer - Greater Stamina
            13939, -- Enchant Bracer - Greater Strength
        };
        shouldCraftRecipe = {
            "3x Lesser Eternal Essence", ---------------- Enchant Bracer - Greater Intellect
            "5x Dream Dust", ---------------------------- Enchant Bracer - Greater Stamina
            "2x Dream Dust, 1x Greater Nether Essence" -- Enchant Bracer - Greater Strength
        };
    elseif rank > 264 and rank < 299 then -- 265-298
        shouldCraft = {20017}; -- Enchant Shield - Greater Stamina
        shouldCraftRecipe = {"5x Dream Dust"};
    elseif rank > 298 and rank < 300 then -- 299
        shouldCraft = {
            20051, -- Runed Arcanite Rod
            32664, -- Runed Fel Iron Rod
            34002, -- Enchant Bracer - Assault
            20020, -- Enchant Boots - Greater Stamina
        };
        shouldCraftRecipe = {
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard", -- Runed Arcanite Rod
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ----------------------- Runed Fel Iron Rod
            "6x Arcane Dust", ----------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "5x Dream Dust" ------------------------------------------------------------------------------------------------------- Enchant Boots - Greater Stamina
        };
    elseif rank > 299 and rank < 301 then -- 300
        shouldCraft = {
            32664, -- Runed Fel Iron Rod
            20051, -- Runed Arcanite Rod
            34002, -- Enchant Bracer - Assault
            20020, -- Enchant Boots - Greater Stamina
        };
        shouldCraftRecipe = {
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ----------------------- Runed Fel Iron Rod
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard", -- Runed Arcanite Rod
            "6x Arcane Dust", ----------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "5x Dream Dust" ------------------------------------------------------------------------------------------------------- Enchant Boots - Greater Stamina
        };
    elseif rank > 300 and rank < 310 then -- 301-309
        shouldCraft = {
            34002, -- Enchant Bracer - Assault
            20028, -- Enchant Chest - Major Mana
            32664, -- Runed Fel Iron Rod
            20051, -- Runed Arcanite Rod
        };
        shouldCraftRecipe = {
            "6x Arcane Dust", ---------------------------------------------------------------------------------------------------- Enchant Bracer - Assault
            "8x Illusion Dust", -------------------------------------------------------------------------------------------------- Enchant Chest - Major Mana
            "1x Fel Iron Rod, 4x Greater Eternal Essence, 6x Large Brilliant Shard, 1x Runed Arcanite Rod", ---------------------- Runed Fel Iron Rod
            "1x Arcanite Rod, 10x Illusion Dust, 4x Greater Eternal Essence, 1x Runed Truesilver Rod, 2x Large Brilliant Shard" -- Runed Arcanite Rod
        };
    elseif rank > 309 and rank < 320 then -- 310-319
        shouldCraft = {27899}; -- Enchant Bracer - Brawn
        shouldCraftRecipe = {"6x Arcane Dust"};
    elseif rank > 319 and rank < 330 then -- 320-329
        shouldCraft = {
            33996, -- Enchant Gloves - Assault
            27961, -- Enchant Cloak - Major Armor
        };
        shouldCraftRecipe = {
            "8x Arcane Dust", -- Enchant Gloves - Assault
            "8x Arcane Dust" --- Enchant Cloak - Major Armor
        };
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {34009}; -- Enchant Shield - Major Stamina
        shouldCraftRecipe = {"15x Arcane Dust"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            44383, -- Enchant Shield - Resilience
            34009, -- Enchant Shield - Major Stamina
        };
        shouldCraftRecipe = {
            "1x Large Prismatic Shard, 4x Lesser Planar Essence", -- Enchant Shield - Resilience
            "15x Arcane Dust" -------------------------------------- Enchant Shield - Major Stamina
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {28019}; -- Superior Wizard Oil
        shouldCraftRecipe = {"3x Arcane Dust, 1x Nightmare Vine, 1x Crystal Vial"};
    elseif rank > 349 and rank < 351 then -- 350
        shouldCraft = {
            32665, -- Runed Adamantite Rod
            60609, -- Enchant Cloak - Speed
            27958, -- Enchant Chest - Exceptional Mana
        };
        shouldCraftRecipe = {
            "1x Adamantite Rod, 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod", -- Runed Adamantite Rod
            "6x Infinite Dust", ------------------------------------------------------------------------------------------------ Enchant Cloak - Speed
            "6x Infinite Dust" ------------------------------------------------------------------------------------------------- Enchant Chest - Exceptional Mana
        };
    elseif rank > 350 and rank < 360 then -- 351-359
        shouldCraft = {
            60609, -- Enchant Cloak - Speed
            27958, -- Enchant Chest - Exceptional Mana
            32665, -- Runed Adamantite Rod
        };
        shouldCraftRecipe = {
            "6x Infinite Dust", -------------------------------------------------------------------------------------------------- Enchant Cloak - Speed
            "6x Infinite Dust", -------------------------------------------------------------------------------------------------- Enchant Chest - Exceptional Mana
            "1x Adamantite Rod, 8x Greater Planar Essence, 8x Large Prismatic Shard, 1x Primal Might, 1x Runed Fel Iron Rod" -- Runed Adamantite Rod
        };
    elseif rank > 359 and rank < 376 then -- 360-375
        shouldCraft = {60616}; -- Enchant Bracers - Striking
        shouldCraftRecipe = {"6x Infinite Dust"};
    elseif rank > 375 and rank < 377 then -- 376
        shouldCraft = {
            32667, -- Runed Eternium Rod
            60616, -- Enchant Bracers - Striking
        };
        shouldCraftRecipe = {
            "1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod", -- Runed Eternium Rod
            "6x Infinite Dust" --------------------------------------------------------------------------------- Enchant Bracers - Striking
        };
    elseif rank > 376 and rank < 380 then -- 377-379
        shouldCraft = {
            60616, -- Enchant Bracers - Striking
            32667, -- Runed Eternium Rod
        };
        shouldCraftRecipe = {
            "6x Infinite Dust", -------------------------------------------------------------------- Enchant Bracers - Striking
            "1x Eternium Rod, 6x Greater Planar Essence, 6x Arcane Dust, 1x Runed Adamantite Rod" -- Runed Eternium Rod
        };
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {44555}; -- Enchant Bracers - Exceptional Intellect
        shouldCraftRecipe = {"10x Infinite Dust"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {60623}; -- Enchant Boots - Icewalker
        shouldCraftRecipe = {"8x Infinite Dust, 1x Crystallized Water"};
    elseif rank > 394 and rank < 410 then -- 395-409
        shouldCraft = {
            44500, -- Enchant Cloak - Superior Agility
            44492, -- Enchant Chest - Mighty Health
        };
        shouldCraftRecipe = {
            "9x Infinite Dust", ---------- Enchant Cloak - Superior Agility
            "3x Greater Cosmic Essence" -- Enchant Chest - Mighty Health
        };
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {44484}; -- Enchant Gloves - Expertise
        shouldCraftRecipe = {"12x Infinite Dust"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {
            44508, -- Enchant Boots - Greater Spirit
            44488, -- Enchant Gloves - Precision
        };
        shouldCraftRecipe = {
            "10x Infinite Dust, 1x Greater Cosmic Essence", -- Enchant Boots - Greater Spirit
            "4x Greater Cosmic Essence" ---------------------- Enchant Gloves - Precision
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {44509}; -- Enchant Chest - Greater Mana Restoration
        shouldCraftRecipe = {"4x Infinite Dust, 4x Greater Cosmic Essence"};
    elseif rank > 424 and rank < 426 then -- 425
        shouldCraft = {
            60619, -- Runed Titanium Rod
            47898, -- Enchant Cloak - Greater Speed
        };
        shouldCraftRecipe = {
            "1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence, 2x Dream Shard, 1x Runed Eternium Rod", -- Runed Titanium Rod
            "16x Infinite Dust, 4x Greater Cosmic Essence" ----------------------------------------------------------- Enchant Cloak - Greater Speed
        };
    elseif rank > 425 and rank < 440 then -- 426-439
        shouldCraft = {
            47898, -- Enchant Cloak - Greater Speed
            60619, -- Runed Titanium Rod
        };
        shouldCraftRecipe = {
            "16x Infinite Dust, 4x Greater Cosmic Essence", ---------------------------------------------------- Enchant Cloak - Greater Speed
            "1x Titanium Rod, 12x Infinite Dust, 4x Greater Cosmic Essence, 2x Dream Shard, 1x Runed Eternium Rod" -- Runed Titanium Rod
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            60763, -- Enchant Boots - Greater Assault
            47672, -- Enchant Cloak - Mighty Armor
        };
        shouldCraftRecipe = {
            "4x Greater Cosmic Essence, 4x Dream Shard", ---- Enchant Boots - Greater Assault
            "15x Infinite Dust, 2x Greater Cosmic Essence" -- Enchant Cloak - Mighty Armor
        };
    end
    return shouldCraft, shouldCraftRecipe;
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Enchanting module|r");
