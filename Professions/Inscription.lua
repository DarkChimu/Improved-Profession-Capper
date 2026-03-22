local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getInscriptionCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 19 then -- 1-18
        shouldCraft = {52738}; -- Ivory Ink
        shouldCraftRecipe = {"1x Alabaster Pigment"};
    elseif rank > 18 and rank < 35 then -- 19-34
        shouldCraft = {45382}; -- Scroll of Stamina
        shouldCraftRecipe = {"1x Ivory Ink, 1x Light Parchment"};
    elseif rank > 34 and rank < 53 then -- 35-52
        shouldCraft = {52843}; -- Moonglow Ink
        shouldCraftRecipe = {"2x Alabaster Pigment"};
    elseif rank > 52 and rank < 75 then -- 53-74
        shouldCraft = {52739}; -- Armor Vellum
        shouldCraftRecipe = {"1x Moonglow Ink, 2x Light Parchment"};
    elseif rank > 74 and rank < 80 then -- 75-79
        shouldCraft = {53462}; -- Midnight Ink
        shouldCraftRecipe = {"2x Dusky Pigment"};
    elseif rank > 79 and rank < 85 then -- 80-84
        shouldCraft = {
            57114, -- Glyph of Backstab
            56976, -- Glyph of Frost Nova
            57004, -- Glyph of Hunter's Mark
            57194, -- Glyph of Power Word: Shield
            56955, -- Glyph of Rejuvenation
            57022, -- Glyph of Spiritual Attunement
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
        };
    elseif rank > 84 and rank < 90 then -- 85-89
        shouldCraft = {
            57114, -- Glyph of Backstab
            56976, -- Glyph of Frost Nova
            57004, -- Glyph of Hunter's Mark
            57194, -- Glyph of Power Word: Shield
            56955, -- Glyph of Rejuvenation
            57022, -- Glyph of Spiritual Attunement
            57259, -- Glyph of Corruption
            57239, -- Glyph of Flame Shock
            57162, -- Glyph of Rapid Charge
            56963, -- Glyph of Wrath
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
        };
    elseif rank > 89 and rank < 95 then -- 90-94
        shouldCraft = {
            57259, -- Glyph of Corruption
            57239, -- Glyph of Flame Shock
            57162, -- Glyph of Rapid Charge
            56963, -- Glyph of Wrath
            57027, -- Glyph of Hammer of Justice
            56978, -- Glyph of Ice Armor
            56961, -- Glyph of Maul
            57009, -- Glyph of Serpent Sting
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
        };
    elseif rank > 94 and rank < 100 then -- 95-99
        shouldCraft = {
            57027, -- Glyph of Hammer of Justice
            56978, -- Glyph of Ice Armor
            56961, -- Glyph of Maul
            57009, -- Glyph of Serpent Sting
        };
        shouldCraftRecipe = {
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
            "1x Midnight Ink, 1x Light Parchment",
        };
    elseif rank > 99 and rank < 105 then -- 100-104
        shouldCraft = {57704}; -- Lion's Ink
        shouldCraftRecipe = {"2x Golden Pigment"};
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {
            57120, -- Glyph of Eviscerate
            57184, -- Glyph of Fade
            57029, -- Glyph of Holy Light
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 109 and rank < 115 then -- 110-114
        shouldCraft = {
            57238, -- Glyph of Fire Nova
            57163, -- Glyph of Rending
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 114 and rank < 120 then -- 115-119
        shouldCraft = {
            56971, -- Glyph of Arcane Missiles
            56945, -- Glyph of Healing Touch
            56997, -- Glyph of Mending
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 119 and rank < 125 then -- 120-124
        shouldCraft = {
            57121, -- Glyph of Expose Armor
            57186, -- Glyph of Flash Heal
            57030, -- Glyph of Judgement
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 124 and rank < 130 then -- 125-129
        shouldCraft = {
            57262, -- Glyph of Fear
            57240, -- Glyph of Flametongue Weapon
            57157, -- Glyph of Hamstring
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 129 and rank < 135 then -- 130-134
        shouldCraft = {
            56973, -- Glyph of Blink
            57005, -- Glyph of Immolation Trap
            56951, -- Glyph of Moonfire
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 134 and rank < 140 then -- 135-139
        shouldCraft = {
            57031, -- Glyph of Divinity
            57123, -- Glyph of Garrote
            57188, -- Glyph of Inner Fire
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 139 and rank < 150 then -- 140-149
        shouldCraft = {
            57245, -- Glyph of Lightning Bolt
            57167, -- Glyph of Sunder Armor
        };
        shouldCraftRecipe = {
            "1x Lion's Ink, 1x Light Parchment",
            "1x Lion's Ink, 1x Light Parchment",
        };
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {57707}; -- Jadefire Ink
        shouldCraftRecipe = {"2x Verdant Pigment"};
    elseif rank > 154 and rank < 160 then -- 155-159
        shouldCraft = {
            56974, -- Glyph of Evocation
            57032, -- Glyph of Righteous Defense
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 159 and rank < 165 then -- 160-164
        shouldCraft = {
            57125, -- Glyph of Gouge
            57197, -- Glyph of Renew
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 164 and rank < 170 then -- 165-169
        shouldCraft = {
            57249, -- Glyph of Lava Lash
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 169 and rank < 175 then -- 170-174
        shouldCraft = {
            57161, -- Glyph of Overpower
            56953, -- Glyph of Rebirth
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 174 and rank < 180 then -- 175-179
        shouldCraft = {
            56994, -- Glyph of Aimed Shot
            56981, -- Glyph of Icy Veins
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 179 and rank < 185 then -- 180-184
        shouldCraft = {
            57020, -- Glyph of Cleansing
            57200, -- Glyph of Mind Flay
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 184 and rank < 190 then -- 185-189
        shouldCraft = {
            57241, -- Glyph of Frost Shock
            57129, -- Glyph of Sap
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {
            57165, -- Glyph of Revenge
        };
        shouldCraftRecipe = {
            "1x Jadefire Ink, 1x Light Parchment",
        };
    elseif rank > 199 and rank < 205 then -- 200-204
        shouldCraft = {57709}; -- Celestial Ink
        shouldCraftRecipe = {"2x Silvery Pigment"};
    elseif rank > 204 and rank < 210 then -- 205-209
        shouldCraft = {59499}; -- Armor Vellum II
        shouldCraftRecipe = {"1x Celestial Ink, 2x Light Parchment"};
    elseif rank > 209 and rank < 215 then -- 210-214
        shouldCraft = {
            57131, -- Glyph of Sinister Strike
            57201, -- Glyph of Smite
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
            57242, -- Glyph of Healing Stream Totem
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            57151, -- Glyph of Barbaric Insults
            56959, -- Glyph of Starfire
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 224 and rank < 230 then -- 225-229
        shouldCraft = {
            57001, -- Glyph of Disengage
            56979, -- Glyph of Ice Block
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 229 and rank < 235 then -- 230-234
        shouldCraft = {
            57024, -- Glyph of Crusader Strike
            57183, -- Glyph of Dispel Magic
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 234 and rank < 240 then -- 235-239
        shouldCraft = {
            57244, -- Glyph of Lesser Healing Wave
            57132, -- Glyph of Slice and Dice
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 239 and rank < 250 then -- 240-249
        shouldCraft = {
            57154, -- Glyph of Cleaving
        };
        shouldCraftRecipe = {
            "1x Celestial Ink, 1x Light Parchment",
        };
    elseif rank > 249 and rank < 255 then -- 250-254
        shouldCraft = {57711}; -- Shimmering Ink
        shouldCraftRecipe = {"2x Burnt Pigment"};
    elseif rank > 254 and rank < 260 then -- 255-259
        shouldCraft = {50608}; -- Scroll of Spirit V
        shouldCraftRecipe = {"1x Shimmering Ink, 1x Light Parchment"};
    elseif rank > 259 and rank < 265 then -- 260-264
        shouldCraft = {
            57002, -- Glyph of Freezing Trap
            56957, -- Glyph of Shred
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 264 and rank < 270 then -- 265-269
        shouldCraft = {
            57210, -- Glyph of Bone Shield
            57025, -- Glyph of Exorcism
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 269 and rank < 275 then -- 270-274
        shouldCraft = {
            57185, -- Glyph of Fear Ward
            57216, -- Glyph of Frost Strike
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 274 and rank < 280 then -- 275-279
        shouldCraft = {
            57251, -- Glyph of Water Mastery
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 279 and rank < 285 then -- 280-284
        shouldCraft = {
            57219, -- Glyph of Icy Touch
            56985, -- Glyph of Mana Gem
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 284 and rank < 290 then -- 285-289
        shouldCraft = {
            57213, -- Glyph of Death Grip
            57156, -- Glyph of Execution
            57133, -- Glyph of Sprint
        };
        shouldCraftRecipe = {
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
            "1x Shimmering Ink, 1x Light Parchment",
        };
    elseif rank > 289 and rank < 305 then -- 290-304
        shouldCraft = {57713}; -- Ethereal Ink
        shouldCraftRecipe = {"2x Nether Pigment"};
    elseif rank > 304 and rank < 310 then -- 305-309
        shouldCraft = {
            57122, -- Glyph of Feint
            57226, -- Glyph of Unbreakable Armor
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 309 and rank < 315 then -- 310-314
        shouldCraft = {
            56952, -- Glyph of Rake
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 314 and rank < 320 then -- 315-319
        shouldCraft = {
            56991, -- Glyph of Arcane Blast
            57187, -- Glyph of Holy Nova
            57008, -- Glyph of Rapid Fire
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            57168, -- Glyph of Sweeping Strikes
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 324 and rank < 330 then -- 325-329
        shouldCraft = {
            56984, -- Glyph of Mage Armor
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 329 and rank < 335 then -- 330-334
        shouldCraft = {
            57224, -- Glyph of Scourge Strike
            57252, -- Glyph of Windfury Weapon
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {
            56972, -- Glyph of Arcane Power
            57033, -- Glyph of Seal of Command
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 339 and rank < 345 then -- 340-344
        shouldCraft = {
            57113, -- Glyph of Ambush
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 344 and rank < 350 then -- 345-349
        shouldCraft = {
            57227, -- Glyph of Vampiric Blood
            57172, -- Glyph of Whirlwind
        };
        shouldCraftRecipe = {
            "1x Ethereal Ink, 1x Light Parchment",
            "1x Ethereal Ink, 1x Light Parchment",
        };
    elseif rank > 349 and rank < 355 then -- 350-354
        shouldCraft = {57715}; -- Ink of the Sea
        shouldCraftRecipe = {"2x Azure Pigment"};
    elseif rank > 354 and rank < 380 then -- 355-379
        shouldCraft = {50610}; -- Scroll of Spirit VII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {62162}; -- Glyph of Focus
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank == 385 then -- 385
        shouldCraft = {
            61177, -- Northrend Inscription Research
            56987, -- Glyph of Polymorph
        };
        shouldCraftRecipe = {
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
        };
    elseif rank > 385 and rank < 400 then -- 386-399
        shouldCraft = {
            61177, -- Northrend Inscription Research
            56943, -- Glyph of Frenzied Regeneration
            57192, -- Glyph of Shadow Word: Pain
            57003, -- Glyph of Frost Trap
            57006, -- Glyph of the Hawk
            57036, -- Glyph of Turn Evil
            57198, -- Glyph of Scourge Imprisonment
            57248, -- Glyph of Stormstrike
            57225, -- Glyph of Strangulate
            57222, -- Glyph of the Ghoul
        };
        shouldCraftRecipe = {
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
        };
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {50620}; -- Scroll of Stamina VIII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {50611}; -- Scroll of Spirit VIII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {50604}; -- Scroll of Intellect VIII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {58491}; -- Scroll of Strength VIII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {58483}; -- Scroll of Agility VIII
        shouldCraftRecipe = {"1x Ink of the Sea, 1x Light Parchment"};
    elseif rank > 424 and rank < 440 then -- 425-439
        shouldCraft = {
            61177, -- Northrend Inscription Research
            56980, -- Glyph of Ice Lance
            57257, -- Glyph of Incinerate
            57221, -- Glyph of Plague Strike
        };
        shouldCraftRecipe = {
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            69385, -- Runescroll of Fortitude
            61177, -- Northrend Inscription Research
        };
        shouldCraftRecipe = {
            "3x Ink of the Sea, 1x Light Parchment",
            "1x Ink of the Sea, 1x Light Parchment",
        };
    end

    return shouldCraft, shouldCraftRecipe;
end
