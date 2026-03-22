addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getCookingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 20 then -- 1-19
        shouldCraft = {
            37836, -- Spice Bread
            8604,  -- Herb Baked Egg
            2538,  -- Charred Wolf Meat
            2540,  -- Roasted Boar Meat
            7751,  -- Brilliant Smallfish
            15935, -- Crispy Bat Wing
            33276, -- Lynx Steak
            7752,  -- Slitherskin Mackerel
            33277, -- Roasted Moongraze Tenderloin
        };
        shouldCraftRecipe = {
            "1x Simple Flour, 1x Mild Spices", -- Spice Bread
            "1x Small Egg", --------------------- Herb Baked Egg
            "1x Stringy Wolf Meat", ------------- Charred Wolf Meat
            "1x Chunk of Boar Meat", ------------ Roasted Boar Meat
            "1x Raw Brilliant Smallfish", ------- Brilliant Smallfish
            "1x Meaty Bat Wing", ---------------- Crispy Bat Wing
            "1x Lynx Meat", --------------------- Lynx Steak
            "1x Raw Slitherskin Mackerel", ------ Slitherskin Mackerel
            "1x Moongraze Stag Tenderloin" ------ Roasted Moongraze Tenderloin
        };
    elseif rank > 19 and rank < 40 then -- 20-39
        shouldCraft = {
            37836, -- Spice Bread
            6413,  -- Scorpid Surprise
            8604,  -- Herb Baked Egg
            2538,  -- Charred Wolf Meat
            2540,  -- Roasted Boar Meat
            7751,  -- Brilliant Smallfish
            15935, -- Crispy Bat Wing
            33276, -- Lynx Steak
            7752,  -- Slitherskin Mackerel
            33277, -- Roasted Moongraze Tenderloin
        };
        shouldCraftRecipe = {
            "1x Simple Flour, 1x Mild Spices", -- Spice Bread
            "1x Scorpid Stinger", --------------- Scorpid Surprise
            "1x Small Egg", --------------------- Herb Baked Egg
            "1x Stringy Wolf Meat", ------------- Charred Wolf Meat
            "1x Chunk of Boar Meat", ------------ Roasted Boar Meat
            "1x Raw Brilliant Smallfish", ------- Brilliant Smallfish
            "1x Meaty Bat Wing", ---------------- Crispy Bat Wing
            "1x Lynx Meat", --------------------- Lynx Steak
            "1x Raw Slitherskin Mackerel", ------ Slitherskin Mackerel
            "1x Moongraze Stag Tenderloin" ------ Roasted Moongraze Tenderloin
        };
    elseif rank > 39 and rank < 45 then -- 40-44
        shouldCraft = {
            6413,  -- Scorpid Surprise
            8604,  -- Herb Baked Egg
            2538,  -- Charred Wolf Meat
            2540,  -- Roasted Boar Meat
            7751,  -- Brilliant Smallfish
            15935, -- Crispy Bat Wing
            33276, -- Lynx Steak
            7752,  -- Slitherskin Mackerel
            33277, -- Roasted Moongraze Tenderloin
        };
        shouldCraftRecipe = {
            "1x Scorpid Stinger", --------------- Scorpid Surprise
            "1x Small Egg", --------------------- Herb Baked Egg
            "1x Stringy Wolf Meat", ------------- Charred Wolf Meat
            "1x Chunk of Boar Meat", ------------ Roasted Boar Meat
            "1x Raw Brilliant Smallfish", ------- Brilliant Smallfish
            "1x Meaty Bat Wing", ---------------- Crispy Bat Wing
            "1x Lynx Meat", --------------------- Lynx Steak
            "1x Raw Slitherskin Mackerel", ------ Slitherskin Mackerel
            "1x Moongraze Stag Tenderloin" ------ Roasted Moongraze Tenderloin
        };
    elseif rank > 44 and rank < 50 then -- 45-49
        shouldCraft = {
            8607, -- Smoked Bear Meat
            6413, -- Scorpid Surprise
            2539, -- Spiced Wolf Meat
        };
        shouldCraftRecipe = {
            "1x Bear Meat", ---------- Smoked Bear Meat
            "1x Scorpid Stinger", ---- Scorpid Surprise
            "1x Stringy Wolf Meat" --- Spiced Wolf Meat
        };
    elseif rank > 49 and rank < 70 then -- 50-69
        shouldCraft = {
            8607,  -- Smoked Bear Meat
            33278, -- Bat Bites
            6413,  -- Scorpid Surprise
            2541,  -- Coyote Steak
            6499,  -- Boiled Clams
            2542,  -- Goretusk Liver Pie
            7754,  -- Loch Frenzy Delight
            7753,  -- Longjaw Mud Snapper
            7827,  -- Rainbow Fin Albacore
            6416,  -- Strider Stew
            2539,  -- Spiced Wolf Meat
        };
        shouldCraftRecipe = {
            "1x Bear Meat", ------------------------------ Smoked Bear Meat
            "1x Bat Flesh", ------------------------------ Bat Bites
            "1x Scorpid Stinger", ------------------------ Scorpid Surprise
            "1x Coyote Meat", ---------------------------- Coyote Steak
            "1x Clam Meat, 1x Refreshing Spring Water", -- Boiled Clams
            "1x Goretusk Liver", ------------------------- Goretusk Liver Pie
            "1x Raw Loch Frenzy", ------------------------ Loch Frenzy Delight
            "1x Raw Longjaw Mud Snapper", ---------------- Longjaw Mud Snapper
            "1x Raw Rainbow Fin Albacore", --------------- Rainbow Fin Albacore
            "1x Strider Meat", --------------------------- Strider Stew
            "1x Stringy Wolf Meat" ----------------------- Spiced Wolf Meat
        };
    elseif rank > 69 and rank < 80 then -- 70-79
        shouldCraft = {
            8607,  -- Smoked Bear Meat
            6413,  -- Scorpid Surprise
            2541,  -- Coyote Steak
            6499,  -- Boiled Clams
            2542,  -- Goretusk Liver Pie
            7754,  -- Loch Frenzy Delight
            7753,  -- Longjaw Mud Snapper
            7827,  -- Rainbow Fin Albacore
            6416,  -- Strider Stew
        };
        shouldCraftRecipe = {
            "1x Bear Meat", ------------------------------ Smoked Bear Meat
            "1x Scorpid Stinger", ------------------------ Scorpid Surprise
            "1x Coyote Meat", ---------------------------- Coyote Steak
            "1x Clam Meat, 1x Refreshing Spring Water", -- Boiled Clams
            "1x Goretusk Liver", ------------------------- Goretusk Liver Pie
            "1x Raw Loch Frenzy", ------------------------ Loch Frenzy Delight
            "1x Raw Longjaw Mud Snapper", ---------------- Longjaw Mud Snapper
            "1x Raw Rainbow Fin Albacore", --------------- Rainbow Fin Albacore
            "1x Strider Meat" ---------------------------- Strider Stew
        };
    elseif rank > 79 and rank < 110 then -- 80-109
        shouldCraft = {
            25704, -- Smoked Sagefish
            2544,  -- Crab Cake
            2541,  -- Coyote Steak
            6499,  -- Boiled Clams
            2542,  -- Goretusk Liver Pie
            7754,  -- Loch Frenzy Delight
            7753,  -- Longjaw Mud Snapper
            7827,  -- Rainbow Fin Albacore
            6416,  -- Strider Stew
        };
        shouldCraftRecipe = {
            "1x Raw Sagefish", ----------------------------- Smoked Sagefish
            "1x Crawler Meat", ----------------------------- Crab Cake
            "1x Coyote Meat", ------------------------------ Coyote Steak
            "1x Clam Meat, 1x Refreshing Spring Water", ---- Boiled Clams
            "1x Goretusk Liver", --------------------------- Goretusk Liver Pie
            "1x Raw Loch Frenzy", -------------------------- Loch Frenzy Delight
            "1x Raw Longjaw Mud Snapper", ------------------ Longjaw Mud Snapper
            "1x Raw Rainbow Fin Albacore", ----------------- Rainbow Fin Albacore
            "1x Strider Meat" ------------------------------ Strider Stew
        };
    elseif rank > 109 and rank < 130 then -- 110-129
        shouldCraft = {
            3397,  -- Big Bear Steak
            3377,  -- Gooey Spider Cake
            25704, -- Smoked Sagefish
            2544,  -- Crab Cake
            2541,  -- Coyote Steak
            6499,  -- Boiled Clams
            2542,  -- Goretusk Liver Pie
            7754,  -- Loch Frenzy Delight
            7753,  -- Longjaw Mud Snapper
            7827,  -- Rainbow Fin Albacore
            6416,  -- Strider Stew
        };
        shouldCraftRecipe = {
            "1x Big Bear Meat", ---------------------------- Big Bear Steak
            "2x Gooey Spider Leg", ------------------------- Gooey Spider Cake
            "1x Raw Sagefish", ----------------------------- Smoked Sagefish
            "1x Crawler Meat", ----------------------------- Crab Cake
            "1x Coyote Meat", ------------------------------ Coyote Steak
            "1x Clam Meat, 1x Refreshing Spring Water", ---- Boiled Clams
            "1x Goretusk Liver", --------------------------- Goretusk Liver Pie
            "1x Raw Loch Frenzy", -------------------------- Loch Frenzy Delight
            "1x Raw Longjaw Mud Snapper", ------------------ Longjaw Mud Snapper
            "1x Raw Rainbow Fin Albacore", ----------------- Rainbow Fin Albacore
            "1x Strider Meat" ------------------------------ Strider Stew
        };
    elseif rank > 129 and rank < 140 then -- 130-139
        shouldCraft = {
            3376,  -- Curiously Tasty Omelet
            3398,  -- Hot Lion Chops
            15853, -- Lean Wolf Steak
            6500,  -- Goblin Deviled Clams
            3373,  -- Crocolisk Gumbo
            3397,  -- Big Bear Steak
            3377,  -- Gooey Spider Cake
            25704, -- Smoked Sagefish
            2544,  -- Crab Cake
            2541,  -- Coyote Steak
            6499,  -- Boiled Clams
            2542,  -- Goretusk Liver Pie
            7754,  -- Loch Frenzy Delight
            7753,  -- Longjaw Mud Snapper
            7827,  -- Rainbow Fin Albacore
            6416,  -- Strider Stew
        };
        shouldCraftRecipe = {
            "1x Raptor Egg", ------------------------------- Curiously Tasty Omelet
            "1x Lion Meat", -------------------------------- Hot Lion Chops
            "1x Lean Wolf Flank", -------------------------- Lean Wolf Steak
            "1x Tangy Clam Meat", -------------------------- Goblin Deviled Clams
            "1x Tender Crocolisk Meat", -------------------- Crocolisk Gumbo
            "1x Big Bear Meat", ---------------------------- Big Bear Steak
            "2x Gooey Spider Leg", ------------------------- Gooey Spider Cake
            "1x Raw Sagefish", ----------------------------- Smoked Sagefish
            "1x Crawler Meat", ----------------------------- Crab Cake
            "1x Coyote Meat", ------------------------------ Coyote Steak
            "1x Clam Meat, 1x Refreshing Spring Water", ---- Boiled Clams
            "1x Goretusk Liver", --------------------------- Goretusk Liver Pie
            "1x Raw Loch Frenzy", -------------------------- Loch Frenzy Delight
            "1x Raw Longjaw Mud Snapper", ------------------ Longjaw Mud Snapper
            "1x Raw Rainbow Fin Albacore", ----------------- Rainbow Fin Albacore
            "1x Strider Meat" ------------------------------ Strider Stew
        };
    elseif rank > 139 and rank < 175 then -- 140-174
        shouldCraft = {
            3376,  -- Curiously Tasty Omelet
            3398,  -- Hot Lion Chops
            15853, -- Lean Wolf Steak
            6500,  -- Goblin Deviled Clams
            3373,  -- Crocolisk Gumbo
            3397,  -- Big Bear Steak
            3377,  -- Gooey Spider Cake
        };
        shouldCraftRecipe = {
            "1x Raptor Egg", ------------- Curiously Tasty Omelet
            "1x Lion Meat", -------------- Hot Lion Chops
            "1x Lean Wolf Flank", -------- Lean Wolf Steak
            "1x Tangy Clam Meat", -------- Goblin Deviled Clams
            "1x Tender Crocolisk Meat", -- Crocolisk Gumbo
            "1x Big Bear Meat", ---------- Big Bear Steak
            "2x Gooey Spider Leg", ------- Gooey Spider Cake
        };
    elseif rank > 174 and rank < 225 then -- 175-224
        shouldCraft = {
            15855, -- Roast Raptor
            4094,  -- Barbecued Buzzard Wing
            25954, -- Sagefish Delight
            7828,  -- Rockscale Cod
            15863, -- Carrion Surprise
            7213,  -- Giant Clam Scorcho
            20916, -- Mithril Head Trout
            3400,  -- Soothing Turtle Bisque
            15861, -- Jungle Stew
            15865, -- Mystery Stew
        };
        shouldCraftRecipe = {
            "1x Raptor Flesh", ---------------------------- Roast Raptor
            "1x Buzzard Wing", ---------------------------- Barbecued Buzzard Wing
            "1x Raw Greater Sagefish", -------------------- Sagefish Delight
            "1x Raw Rockscale Cod", ----------------------- Rockscale Cod
            "1x Mystery Meat", ---------------------------- Carrion Surprise
            "1x Giant Clam Meat", ------------------------- Giant Clam Scorcho
            "1x Raw Mithril Head Trout", ------------------ Mithril Head Trout
            "1x Turtle Meat", ----------------------------- Soothing Turtle Bisque
            "1x Tiger Meat, 1x Refreshing Spring Water", -- Jungle Stew
            "1x Mystery Meat, 1x Skin of DwarvenStout" ---- Mystery Stew
        };
    elseif rank > 224 and rank < 250 then -- 225-249
        shouldCraft = {
            15933, -- Monster Omelet
            22480, -- Tender Wolf Steak
            15915, -- Spiced Chili Crab
            18239, -- Cooked Glossy Mightfish
            18241, -- Filet of Redgill
            18238, -- Spotted Yellowtail
        };
        shouldCraftRecipe = {
            "1x Giant Egg", --------------- Monster Omelet
            "1x Tender Wolf Meat", -------- Tender Wolf Steak
            "1x Tender Crab Meat", -------- Spiced Chili Crab
            "1x Raw Glossy Mightfish", ---- Cooked Glossy Mightfish
            "1x Raw Redgill", ------------- Filet of Redgill
            "1x Raw Spotted Yellowtail" --- Spotted Yellowtail
        };
    elseif rank > 249 and rank < 285 then -- 250-284
        shouldCraft = {
            46688, -- Juicy Bear Burger
            46684, -- Charred Bear Kabobs
            18244, -- Poached Sunscale Salmon
        };
        shouldCraftRecipe = {
            "1x Bear Flank", ---------- Juicy Bear Burger
            "1x Bear Flank", ---------- Charred Bear Kabobs
            "1x Raw Sunscale Salmon" -- Poached Sunscale Salmon
        };
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {
            24801, -- Smoked Desert Dumplings
            18247, -- Baked Salmon
            18246, -- Mightfish Steak
            18245, -- Lobster Stew
            22761, -- Runn Tum Tuber Surprise
        };
        shouldCraftRecipe = {
            "1x Sandworm Meat", --------------------------------- Smoked Desert Dumplings
            "1x Raw Whitescale Salmon", ------------------------- Baked Salmon
            "1x Large Raw Mightfish", --------------------------- Mightfish Steak
            "1x Darkclaw Lobster, 1x Refreshing Spring Water", -- Lobster Stew
            "1x Runn Tum Tuber" --------------------------------- Runn Tum Tuber Surprise
        };
    elseif rank > 299 and rank < 325 then -- 300-324
        shouldCraft = {
            33284, -- Ravager Dog
            33279, -- Buzzard Bites
            33290, -- Blackened Trout
            33291, -- Feltail Delight
            43761, -- Broiled Bloodfin
            43772, -- Kibler's Bits
        };
        shouldCraftRecipe = {
            "1x Ravager Flesh", ------ Ravager Dog
            "1x Buzzard Meat", ------- Buzzard Bites
            "1x Barbed Gill Trout", -- Blackened Trout
            "1x Spotted Feltail", ---- Feltail Delight
            "1x Bloodfin Catfish", --- Broiled Bloodfin
            "1x Buzzard Meat" -------- Kibler's Bits
        };
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {
            33289, -- Talbuk Steak
            33287, -- Roasted Clefthoof
            33288, -- Warp Burger
        };
        shouldCraftRecipe = {
            "1x Talbuk Venison", -- Talbuk Steak
            "1x Clefthoof Meat", -- Roasted Clefthoof
            "1x Warped Flesh" ----- Warp Burger
        };
    elseif rank > 334 and rank < 350 then -- 335-349
        shouldCraft = {
            33289, -- Talbuk Steak
            33287, -- Roasted Clefthoof
            33288, -- Warp Burger
            38867, -- Mok'Nathal Shortribs
            38868, -- Crunchy Serpent
        };
        shouldCraftRecipe = {
            "1x Talbuk Venison", -- Talbuk Steak
            "1x Clefthoof Meat", -- Roasted Clefthoof
            "1x Warped Flesh", ---- Warp Burger
            "1x Raptor Ribs", ----- Mok'Nathal Shortribs
            "1x Serpent Meat" ----- Crunchy Serpent
        };
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {
            45569, -- Baked Manta Ray
            45549, -- Mammoth Meal
            45565, -- Poached Nettlefish
            45564, -- Smoked Salmon
            45566, -- Pickled Fangtooth
            45563, -- Grilled Sculpin
            45553, -- Rhino Dogs
            45551, -- Worm Delight
            45552, -- Roasted Worg
            45550, -- Shoveltusk Steak
            57421, -- Northern Stew
            45560, -- Smoked Rockfin
            45561, -- Grilled Bonescale
            45562, -- Sauteed Goby
            58065, -- Dalaran Clam Chowder
            33296, -- Spicy Crawdad
            42302, -- Fisherman's Feast
            42305, -- Hot Buttered Trout
        };
        shouldCraftRecipe = {
            "1x Imperial Mantra Ray", -------- Baked Manta Ray
            "1x Chunk o' Mammoth", ----------- Mammoth Meal
            "1x Nettlefish", ----------------- Poached Nettlefish
            "1x Glacial Salmon", ------------- Smoked Salmon
            "1x Fangtooth Herring", ---------- Pickled Fangtooth
            "1x Musselback Sculpin", --------- Grilled Sculpin
            "1x Rhino Meat", ----------------- Rhino Dogs
            "1x Worm Meat", ------------------ Worm Delight
            "1x Worg Haunch", ---------------- Roasted Worg
            "1x Shoveltusk Flank", ----------- Shoveltusk Steak
            "1x Chilled Meat", --------------- Northern Stew
            "1x Rockfin Grouper", ------------ Smoked Rockfin
            "1x Bonescale Snapper", ---------- Grilled Bonescale
            "1x Barrelhead Goby", ------------ Sauteed Goby
            "2x Succulent Clam Meat", -------- Dalaran Clam Chowder
            "1x Furious Crowdad", ------------ Spicy Crawdad
            "1x Huge Spotted Feltail", ------- Fisherman's Feast
            "1x Enormous Barbed Gill Trout" -- Hot Buttered Trout
        };
    elseif rank > 374 and rank < 400 then -- 375-399
        shouldCraft = {
            53056, -- Kungaloosh
            45569, -- Baked Manta Ray
            45549, -- Mammoth Meal
            45565, -- Poached Nettlefish
            45564, -- Smoked Salmon
            45566, -- Pickled Fangtooth
            45563, -- Grilled Sculpin
            45553, -- Rhino Dogs
            45551, -- Worm Delight
            45552, -- Roasted Worg
            45550, -- Shoveltusk Steak
            58065, -- Dalaran Clam Chowder
        };
        shouldCraftRecipe = {
            "2x Tundra Berries, 1x Savory Snowplum", -- Kungaloosh
            "1x Imperial Mantra Ray", ----------------- Baked Manta Ray
            "1x Chunk o' Mammoth", -------------------- Mammoth Meal
            "1x Nettlefish", -------------------------- Poached Nettlefish
            "1x Glacial Salmon", ---------------------- Smoked Salmon
            "1x Fangtooth Herring", ------------------- Pickled Fangtooth
            "1x Musselback Sculpin", ------------------ Grilled Sculpin
            "1x Rhino Meat", -------------------------- Rhino Dogs
            "1x Worm Meat", --------------------------- Worm Delight
            "1x Worg Haunch", ------------------------- Roasted Worg
            "1x Shoveltusk Flank", -------------------- Shoveltusk Steak
            "2x Succulent Clam Meat" ------------------ Dalaran Clam Chowder
        };
    elseif rank > 399 and rank < 425 then -- 400-424
        shouldCraft = {
            57441, -- Blackened Dragonfin
            57442, -- Dragonfin Filet
            57438, -- Blackened Worg Steak
            45558, -- Very Burnt Worg
            57439, -- Cuttlesteak
            45568, -- Firecracker Salmon
            57436, -- Hearty Rhino
            45570, -- Imperial Manta Steak
            45567, -- Poached Northern Sculpin
            57440, -- Spiced Mammoth Treats
            45571, -- Spicy Blue Nettlefish
            57433, -- Spicy Fried Herring
            57443, -- Tracker Snacks
        };
        shouldCraftRecipe = {
            "1x Dragonfin Angelfish, 1x Northern Spices", -- Blackened Dragonfin
            "1x Dragonfin Angelfish, 1x Northern Spices", -- Dragonfin Filet
            "1x Worg Haunch, 1x Northern Spices", ---------- Blackened Worg Steak
            "1x Worg Haunch, 1x Northern Spices", ---------- Very Burnt Worg
            "1x Moonglow Cuttlefish, 1x Northern Spices", -- Cuttlesteak
            "1x Glacial Salmon, 1x Northern Spices", ------- Firecracker Salmon
            "1x Rhino Meat, 1x Northern Spices", ----------- Hearty Rhino
            "1x Imperial Manta Ray, 1x Northern Spices", --- Imperial Manta Steak
            "1x Musselback Sculpin, 1x Northern Spices", --- Poached Northern Sculpin
            "1x Chunk o' Mammoth, 1x Northern Spices", ----- Spiced Mammoth Treats
            "1x Nettlefish, 1x Northern Spices", ----------- Spicy Blue Nettlefish
            "1x Fangtooth Herring, 1x Northern Spices", ---- Spicy Fried Herring
            "1x Shoveltusk Flank, 1x Northern Spices" ------ Tracker Snacks
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {
            58527, -- Gigantic Feast
            58528, -- Small Feast
            57441, -- Blackened Dragonfin
            57442, -- Dragonfin Filet
            57438, -- Blackened Worg Steak
            45558, -- Very Burnt Worg
            57439, -- Cuttlesteak
            45568, -- Firecracker Salmon
            57436, -- Hearty Rhino
            45570, -- Imperial Manta Steak
            45567, -- Poached Northern Sculpin
            57440, -- Spiced Mammoth Treats
            45571, -- Spicy Blue Nettlefish
            57433, -- Spicy Fried Herring
            57443, -- Tracker Snacks
        };
        shouldCraftRecipe = {
            "1x Northern Spices, 2x Chunk o' Mammoth, 2x Deep Sea Monsterbelly, 2x Rockfin Grouper", -- Gigantic Feast
            "1x Northern Spices, 2x Glacial Salmon, 2x Nettlefish, 2x Rhino Meat", -------------------- Small Feast
            "1x Dragonfin Angelfish, 1x Northern Spices", --------------------------------------------- Blackened Dragonfin
            "1x Dragonfin Angelfish, 1x Northern Spices", --------------------------------------------- Dragonfin Filet
            "1x Worg Haunch, 1x Northern Spices", ----------------------------------------------------- Blackened Worg Steak
            "1x Worg Haunch, 1x Northern Spices", ----------------------------------------------------- Very Burnt Worg
            "1x Moonglow Cuttlefish, 1x Northern Spices", --------------------------------------------- Cuttlesteak
            "1x Glacial Salmon, 1x Northern Spices", -------------------------------------------------- Firecracker Salmon
            "1x Rhino Meat, 1x Northern Spices", ------------------------------------------------------ Hearty Rhino
            "1x Imperial Manta Ray, 1x Northern Spices", ---------------------------------------------- Imperial Manta Steak
            "1x Musselback Sculpin, 1x Northern Spices", ---------------------------------------------- Poached Northern Sculpin
            "1x Chunk o' Mammoth, 1x Northern Spices", ------------------------------------------------ Spiced Mammoth Treats
            "1x Nettlefish, 1x Northern Spices", ------------------------------------------------------ Spicy Blue Nettlefish
            "1x Fangtooth Herring, 1x Northern Spices", ----------------------------------------------- Spicy Fried Herring
            "1x Shoveltusk Flank, 1x Northern Spices" ------------------------------------------------- Tracker Snacks
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Cooking module|r');
