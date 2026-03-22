addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getEngineeringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 21 then -- 1-20
        shouldCraft = {3918}; -- Rough Blasting Powder
        shouldCraftRecipe = {"1x Rough Stone"};
    elseif rank > 20 and rank < 31 then -- 21-30
        shouldCraft = {
            3919, -- Rough Dynamite
            3918, -- Rough Blasting Powder
        };
        shouldCraftRecipe = {
            "2x Rough Blasting Powder, 1x Linen Cloth", -- Rough Dynamite
            "1x Rough Stone" ----------------------------- Rough Blasting Powder
        };
    elseif rank > 30 and rank < 50 then -- 31-49
        shouldCraft = {
            3922, -- Handful of Copper Bolts
            3919, -- Rough Dynamite
        };
        shouldCraftRecipe = {
            "1x Copper Bar", ---------------------------- Handful of Copper Bolts
            "2x Rough Blasting Powder, 1x Linen Cloth" -- Rough Dynamite
        };
    elseif rank > 49 and rank < 51 then -- 50
        shouldCraft = {
            7430, -- Arclight Spanner
            3924, -- Copper Tube
        };
        shouldCraftRecipe = {
            "6x Copper Bar", --------------- Arclight Spanner
            "2x Copper Bar, 1x Weak Flux" -- Copper Tube
        };
    elseif rank > 50 and rank < 75 then -- 51-74
        shouldCraft = {
            3924, -- Copper Tube
            7430, -- Arclight Spanner
        };
        shouldCraftRecipe = {
            "2x Copper Bar, 1x Weak Flux", -- Copper Tube
            "6x Copper Bar" ----------------- Arclight Spanner
        };
    elseif rank > 74 and rank < 85 then -- 75-84
        shouldCraft = {
            3929, -- Coarse Blasting Powder
            3924, -- Copper Tube
            7430, -- Arclight Spanner
        };
        shouldCraftRecipe = {
            "1x Coarse Stone", -------------- Coarse Blasting Powder
            "2x Copper Bar, 1x Weak Flux", -- Copper Tube
            "6x Copper Bar" ----------------- Arclight Spanner
        };
    elseif rank > 84 and rank < 90 then -- 85-89
        shouldCraft = {
            3931, -- Coarse Dynamite
            3929, -- Coarse Blasting Powder
            3924, -- Copper Tube
        };
        shouldCraftRecipe = {
            "3x Coarse Blasting Powder, 1x Linen Cloth", -- Coarse Dynamite
            "1x Coarse Stone", ---------------------------- Coarse Blasting Powder
            "2x Copper Bar, 1x Weak Flux" ----------------- Copper Tube
        };
    elseif rank > 89 and rank < 110 then -- 90-109
        shouldCraft = {
            3973, -- Silver Contact
            3926, -- Copper Modulator
        };
        shouldCraftRecipe = {
            "1x Silver Bar", ------------------------------------------ Silver Contact
            "2x Handful Copper Bolts, 1x Copper Bar, 2x Linen Cloth" -- Copper Modulator
        };
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {
            3938,  -- Bronze Tube
            3937,  -- Large Copper Bomb
            3973,  -- Silver Contact
        };
        shouldCraftRecipe = {
            "2x Bronze Bar, 1x Weak Flux", ----------------------------------- Bronze Tube
            "3x Copper bars, 4x Coarse Blasting Powder, 1x silver contact", -- Large Copper Bomb
            "1x Silver Bar" -------------------------------------------------- Silver Contact
        };
    elseif rank > 124 and rank < 135 then -- 125-134
        shouldCraft = {3945}; -- Heavy Blasting Powder
        shouldCraftRecipe = {"1x Heavy Stone"};
    elseif rank > 134 and rank < 145 then -- 135-144
        shouldCraft = {
            3942, -- Whirring Bronze Gizmo
            3945, -- Heavy Blasting Powder
        };
        shouldCraftRecipe = {
            "2x Bronze Bar, 1x Wool Cloth", -- Whirring Bronze Gizmo
            "1x Heavy Stone" ----------------- Heavy Blasting Powder
        };
    elseif rank > 144 and rank < 150 then -- 145-149
        shouldCraft = {3942}; -- Whirring Bronze Gizmo
        shouldCraftRecipe = {"2x Bronze Bar, 1x Wool Cloth"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {3953}; -- Bronze Framework
        shouldCraftRecipe = {"2x Bronze Bar, 1x Medium Leather, 1x Wool Cloth"};
    elseif rank > 154 and rank < 175 then -- 155-174
        shouldCraft = {
            3955,  -- Explosive Sheep
            12584, -- Gold Power Core
            3958,  -- Iron Strut
        };
        shouldCraftRecipe = {
            "2x Heavy Blasting Powder, 1x Whirring Bronze Gizmo, 1x Bronze Framework, 2x Wool Cloth", -- Explosive Sheep
            "1x Gold Bar", ----------------------------------------------------------------------------- Gold Power Core
            "2x Iron Bar" ------------------------------------------------------------------------------ Iron Strut
        };
    elseif rank > 174 and rank < 176 then -- 175
        shouldCraft = {
            12590, -- Gyromatic Micro-Adjustor
            12585, -- Solid Blasting Powder
        };
        shouldCraftRecipe = {
            "4x Steel Bar", --- Gyromatic Micro-Adjustor
            "2x Solid Stone" -- Solid Blasting Powder
        };
    elseif rank > 175 and rank < 195 then -- 176-194
        shouldCraft = {
            12585, -- Solid Blasting Powder
            12590, -- Gyromatic Micro-Adjustor
        };
        shouldCraftRecipe = {
            "2x Solid Stone", -- Solid Blasting Powder
            "4x Steel Bar" ----- Gyromatic Micro-Adjustor
        };
    elseif rank > 194 and rank < 200 then -- 195-199
        shouldCraft = {12589}; -- Mithril Tube
        shouldCraftRecipe = {"3x Mithril Bar"};
    elseif rank > 199 and rank < 210 then -- 200-209
        shouldCraft = {
            12591, -- Unstable Trigger
            12589, -- Mithril Tube
        };
        shouldCraftRecipe = {
            "1x Mithril Bar, 1x Mageweave Cloth, 1x Solid Blasting Powder", -- Unstable Trigger
            "3x Mithril Bar" ------------------------------------------------- Mithril Tube
        };
    elseif rank > 209 and rank < 225 then -- 210-224
        shouldCraft = {12596}; -- Hi-Impact Mithril Slugs
        shouldCraftRecipe = {"1x Mithril Bar, 1x Solid Blasting Powder"};
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {12599}; -- Mithril Casing
        shouldCraftRecipe = {"3x Mithril Bar"};
    elseif rank > 234 and rank < 245 then -- 235-244
        shouldCraft = {
            12619, -- Hi-Explosive Bomb
            12599, -- Mithril Casing
        };
        shouldCraftRecipe = {
            "2x Mithril Casing, 1x Unstable Trigger, 2x Solid Blasting Powder", -- Hi-Explosive Bomb
            "3x Mithril Bar" ----------------------------------------------------- Mithril Casing
        };
    elseif rank > 244 and rank < 250 then -- 245-249
        shouldCraft = {
            12621, -- Mithril Gyro-Shot
            12619, -- Hi-Explosive Bomb
        };
        shouldCraftRecipe = {
            "2x Mithril Bar, 2x Solid Blasting Powder", ------------------------- Mithril Gyro-Shot
            "2x Mithril Casing, 1x Unstable Trigger, 2x Solid Blasting Powder" -- Hi-Explosive Bomb
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            19788, -- Dense Blasting Powder
            12621, -- Mithril Gyro-Shot
        };
        shouldCraftRecipe = {
            "2x Dense Stone", --------------------------- Dense Blasting Powder
            "2x Mithril Bar, 2x Solid Blasting Powder" -- Mithril Gyro-Shot
        };
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {19791}; -- Thorium Widget
        shouldCraftRecipe = {"3x Thorium Bar, 1x Runecloth"};
    elseif rank > 279 and rank < 285 then -- 280-284
        shouldCraft = {19795}; -- Thorium Tube
        shouldCraftRecipe = {"6x Thorium Bar"};
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {19800}; -- Thorium Shells
        shouldCraftRecipe = {"2x Thorium Bar, 1x Dense Blasting Powder"};
    elseif rank > 299 and rank < 305 then -- 300-304
        shouldCraft = {
            30305, -- Handful of Fel Iron Bolts
            30303, -- Elemental Blasting Powder
            19800, -- Thorium Shells
        };
        shouldCraftRecipe = {
            "1x Fel Iron Bar", -------------------------- Handful of Fel Iron Bolts
            "1x Mote of Fire, 2x Mote of Earth", -------- Elemental Blasting Powder
            "2x Thorium Bar, 1x Dense Blasting Powder" -- Thorium Shells
        };
    elseif rank > 304 and rank < 310 then -- 305-309
        shouldCraft = {
            30305, -- Handful of Fel Iron Bolts
            30303, -- Elemental Blasting Powder
        };
        shouldCraftRecipe = {
            "1x Fel Iron Bar", ------------------- Handful of Fel Iron Bolts
            "1x Mote of Fire, 2x Mote of Earth" -- Elemental Blasting Powder
        };
    elseif rank > 309 and rank < 320 then -- 310-319
        shouldCraft = {
            30304, -- Fel Iron Casing
            30303, -- Elemental Blasting Powder
        };
        shouldCraftRecipe = {
            "3x Fel Iron Bar", -------------------- Fel Iron Casing
            "1x Mote of Fire, 2x Mote of Earth" -- Elemental Blasting Powder
        };
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            30310, -- Fel Iron Bomb
            30312, -- Fel Iron Musket
        };
        shouldCraftRecipe = {
            "1x Fel Iron Casing, 2x Handful of Fel Iron Bolts, 1x Elemental Blasting Powder", -- Fel Iron Bomb
            "1x Heavy Stock, 3x Fel Iron Casing, 6x Handful of Fel Iron Bolts" ----------------- Fel Iron Musket
        };
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {30311}; -- Adamantite Grenade
        shouldCraftRecipe = {"4x Adamantite Bar, 1x Elemental Blasting Powder, 2x Handful of Fel Iron Bolts"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            30341, -- White Smoke Flare
            30311, -- Adamantite Grenade
        };
        shouldCraftRecipe = {
            "1x Elemental Blasting Powder, 1x Netherweave Cloth", ---------------------------- White Smoke Flare
            "4x Adamantite Bar, 1x Elemental Blasting Powder, 2x Handful of Fel Iron Bolts" -- Adamantite Grenade
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            30309, -- Felsteel Stabilizer
            30341, -- White Smoke Flare
        };
        shouldCraftRecipe = {
            "2x Felsteel Bar", ------------------------------------ Felsteel Stabilizer
            "1x Elemental Blasting Powder, 1x Netherweave Cloth" -- White Smoke Flare
        };
    elseif rank > 349 and rank < 370 then -- 350-369
        shouldCraft = {56349}; -- Handful of Cobalt Bolts
        shouldCraftRecipe = {"2x Cobalt Bar"};
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {53281}; -- Volatile Blasting Trigger
        shouldCraftRecipe = {"3x Cobalt Bar, 1x Crystallized Water"};
    elseif rank > 374 and rank < 385 then -- 375-384
        shouldCraft = {
            56464, -- Overcharged Capacitor
            56459, -- Hammer Pick
            56461, -- Bladed Pickaxe
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar, 1x Crystallized Earth", -- Overcharged Capacitor
            "5x Cobalt Bar", ------------------------- Hammer Pick
            "5x Cobalt Bar" -------------------------- Bladed Pickaxe
        };
    elseif rank > 384 and rank < 390 then -- 385-389
        shouldCraft = {56463}; -- Explosive Decoy
        shouldCraftRecipe = {"1x Frostweave Cloth, 3x Volatile Blasting Trigger"};
    elseif rank > 389 and rank < 400 then -- 390-399
        shouldCraft = {56471}; -- Froststeel Tube
        shouldCraftRecipe = {"8x Cobalt Bar, 1x Crystallized Water"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {61471}; -- Diamond-cut Refractor Scope
        shouldCraftRecipe = {"1x Froststeel Tube, 2x Handful of Cobalt Bolts"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {56468}; -- Box of Bombs
        shouldCraftRecipe = {"5x Saronite Bar, 1x Volatile Blasting Trigger"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {56474}; -- Mammoth Cutters
        shouldCraftRecipe = {"1x Saronite Bar, 1x Volatile Blasting Trigger"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {56475}; -- Saronite Razorheads
        shouldCraftRecipe = {"2x Saronite Bar"};
    elseif rank > 419 and rank < 430 then -- 420-429
        shouldCraft = {56465}; -- Mechanized Snow Goggles
        shouldCraftRecipe = {"8x Saronite Bar, 2x Borean Leather, 1x Eternal Shadow"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {56467}; -- Noise Machine
        shouldCraftRecipe = {"2x Froststeel Tube, 2x Overcharged Capacitor, 8x Handful of Cobalt Bolts"};
    elseif rank > 434 and rank < 450 then -- 435-449
        shouldCraft = {56462}; -- Gnomish Army Knife
        shouldCraftRecipe = {"10x Saronite Bar, 1x Skinning Knife, 1x Mining Pick, 1x Blacksmithing Hammer"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Engineering module|r');
