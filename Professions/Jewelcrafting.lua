local addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 30 then -- 1-29
        shouldCraft = {25255}; -- Delicate Copper Wire
        shouldCraftRecipe = {"2x Copper Bar"};
    elseif rank > 29 and rank < 50 then -- 30-49
        shouldCraft = {
            32179, -- Tigerseye Band
            32178, -- Malachite Pendant
        };
        shouldCraftRecipe = {
            "1x Tigerseye, 1x Delicate Copper Wire",
            "1x Malachite, 1x Delicate Copper Wire",
        };
    elseif rank > 49 and rank < 80 then -- 50-79
        shouldCraft = {
            25278, -- Bronze Setting
            32179, -- Tigerseye Band
            32178, -- Malachite Pendant
        };
        shouldCraftRecipe = {
            "2x Bronze Bar",
            "1x Tigerseye, 1x Delicate Copper Wire",
            "1x Malachite, 1x Delicate Copper Wire",
        };
    elseif rank > 79 and rank < 100 then -- 80-99
        shouldCraft = {
            25317, -- Ring of Silver Might
            25287, -- Gloom Band
            25284, -- Simple Pearl Ring
        };
        shouldCraftRecipe = {
            "2x Silver Bar",
            "1x Bronze Setting, 2x Shadowgem, 2x Delicate Copper Wire",
            "1x Small Lustrous Pearl, 1x Bronze Setting, 2x Copper Bar",
        };
    elseif rank > 99 and rank < 110 then -- 100-109
        shouldCraft = {
            25318, -- Ring of Twilight Shadows
            25317, -- Ring of Silver Might
            25287, -- Gloom Band
            25284, -- Simple Pearl Ring
        };
        shouldCraftRecipe = {
            "2x Shadowgem, 2x Bronze Bar",
            "2x Silver Bar",
            "1x Bronze Setting, 2x Shadowgem, 2x Delicate Copper Wire",
            "1x Small Lustrous Pearl, 1x Bronze Setting, 2x Copper Bar",
        };
    elseif rank > 109 and rank < 120 then -- 110-119
        shouldCraft = {
            32807, -- Heavy Stone Statue
            25318, -- Ring of Twilight Shadows
            25317, -- Ring of Silver Might
        };
        shouldCraftRecipe = {
            "8x Heavy Stone",
            "2x Shadowgem, 2x Bronze Bar",
            "2x Silver Bar",
        };
    elseif rank > 119 and rank < 150 then -- 120-149
        shouldCraft = {
            25610, -- Pendant of the Agate Shield
            32807, -- Heavy Stone Statue
            25318, -- Ring of Twilight Shadows
        };
        shouldCraftRecipe = {
            "1x Moss Agate, 1x Bronze Setting",
            "8x Heavy Stone",
            "2x Shadowgem, 2x Bronze Bar",
        };
    elseif rank > 149 and rank < 180 then -- 150-179
        shouldCraft = {25615}; -- Mithril Filigree
        shouldCraftRecipe = {"2x Mithril Bar"};
    elseif rank > 179 and rank < 200 then -- 180-199
        shouldCraft = {25620}; -- Engraved Truesilver Ring
        shouldCraftRecipe = {"1x Truesilver Bar, 2x Mithril Filigree"};
    elseif rank > 199 and rank < 220 then -- 200-219
        shouldCraft = {25621}; -- Citrine Ring of Rapid Healing
        shouldCraftRecipe = {"1x Citrine, 2x Mithril Bar"};
    elseif rank > 219 and rank < 225 then -- 220-224
        shouldCraft = {
            26876, -- Aquamarine Pendant of the Warrior
            25621, -- Citrine Ring of Rapid Healing
        };
        shouldCraftRecipe = {
            "1x Aquamarine, 3x Mithril Filigree",
            "1x Citrine, 2x Mithril Bar",
        };
    elseif rank > 224 and rank < 245 then -- 225-244
        shouldCraft = {26880}; -- Thorium Setting
        shouldCraftRecipe = {"1x Thorium Bar"};
    elseif rank > 244 and rank < 260 then -- 245-259
        shouldCraft = {26883}; -- Ruby Pendant of Fire
        shouldCraftRecipe = {"1x Star Ruby, 1x Thorium Setting"};
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {26902}; -- Simple Opal Ring
        shouldCraftRecipe = {"1x Large Opal, 1x Thorium Setting"};
    elseif rank > 279 and rank < 290 then -- 280-289
        shouldCraft = {
            34960, -- Glowing Thorium Band
            26908, -- Sapphire Pendant of Winter Night
            26907, -- Onslaught Ring
        };
        shouldCraftRecipe = {
            "2x Azerothian Diamond",
            "1x Blue Sapphire, 1x Essence of Undeath, 1x Thorium Setting",
            "1x Powerful Mojo, 1x Essence of Earth, 1x Thorium Setting",
        };
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {
            34961, -- Emerald Lion Ring
            34960, -- Glowing Thorium Band
            26908, -- Sapphire Pendant of Winter Night
            26907, -- Onslaught Ring
        };
        shouldCraftRecipe = {
            "2x Huge Emerald, 1x Thorium Setting",
            "2x Azerothian Diamond",
            "1x Blue Sapphire, 1x Essence of Undeath, 1x Thorium Setting",
            "1x Powerful Mojo, 1x Essence of Earth, 1x Thorium Setting",
        };
    elseif rank > 299 and rank < 320 then -- 300-319
        shouldCraft = {
            28903, -- Teardrop Blood Garnet
            28938, -- Brilliant Golden Draenite
            28950, -- Solid Azure Moonstone
            28916, -- Radiant Deep Peridot
            28910, -- Inscribed Flame Spessarite
            28925, -- Glowing Shadow Draenite
        };
        shouldCraftRecipe = {
            "1x Blood Garnet",
            "1x Golden Draenite",
            "1x Azure Moonstone",
            "1x Deep Peridot",
            "1x Flame Spessarite",
            "1x Shadow Draenite",
        };
    elseif rank > 319 and rank < 325 then -- 320-324
        shouldCraft = {
            28905, -- Bold Blood Garnet
            28917, -- Jagged Deep Peridot
            28953, -- Sparkling Azure Moonstone
        };
        shouldCraftRecipe = {
            "1x Blood Garnet",
            "1x Deep Peridot",
            "1x Azure Moonstone",
        };
    elseif rank > 324 and rank < 340 then -- 325-339
        shouldCraft = {
            38068, -- Mercurial Adamantite
            28948, -- Rigid Golden Draenite
            28936, -- Sovereign Shadow Draenite
            28924, -- Dazzling Deep Peridot
        };
        shouldCraftRecipe = {
            "4x Adamantite Powder, 1x Primal Earth",
            "1x Golden Draenite",
            "1x Shadow Draenite",
            "1x Deep Peridot",
        };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            31052, -- Heavy Adamantite Ring
            28948, -- Rigid Golden Draenite
            28936, -- Sovereign Shadow Draenite
            28924, -- Dazzling Deep Peridot
        };
        shouldCraftRecipe = {
            "1x Adamantite Bar, 1x Mercurial Adamantite",
            "1x Golden Draenite",
            "1x Shadow Draenite",
            "1x Deep Peridot",
        };
    elseif rank > 349 and rank < 395 then -- 350-394
        shouldCraft = {
            53831, -- Bold Bloodstone
            53835, -- Bright Bloodstone
            53832, -- Delicate Bloodstone
            53934, -- Solid Chalcedony
            53926, -- Dazzling Dark Jade
            53892, -- Accurate Huge Citrine
            53866, -- Balanced Shadow Crystal
            53852, -- Brilliant Sun Crystal
        };
        shouldCraftRecipe = {
            "1x Bloodstone",
            "1x Bloodstone",
            "1x Bloodstone",
            "1x Chalcedony",
            "1x Dark Jade",
            "1x Huge Citrine",
            "1x Shadow Crystal",
            "1x Sun Crystal",
        };
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {
            56193, -- Bloodstone Band
            58142, -- Crystal Chalcedony Amulet
            58141, -- Crystal Citrine Necklace
            56194, -- Sun Rock Ring
        };
        shouldCraftRecipe = {
            "1x Bloodstone, 2x Crystallized Earth",
            "1x Chalcedony, 2x Crystallized Earth",
            "1x Huge Citrine, 2x Crystallized Earth",
            "1x Sun Crystal, 2x Crystallized Earth",
        };
    elseif rank > 399 and rank < 420 then -- 400-419
        shouldCraft = {
            58145, -- Stoneguard Band
            58146, -- Shadowmight Ring
        };
        shouldCraftRecipe = {
            "2x Eternal Earth",
            "1x Eternal Earth, 1x Eternal Shadow",
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {
            54007, -- Dazzling Forest Emerald
            53969, -- Balanced Twilight Opal
            53947, -- Bright Scarlet Ruby
            53956, -- Brilliant Autumn's Glow
            53989, -- Pristine Monarch Topaz
            53953, -- Sparkling Sky Sapphire
            56531, -- Enchanted Tear
        };
        shouldCraftRecipe = {
            "1x Forest Emerald",
            "1x Twilight Opal",
            "1x Scarlet Ruby",
            "1x Autumn's Glow",
            "1x Monarch Topaz",
            "1x Sky Sapphire",
            "1x Siren's Tear, 4x Infinite Dust",
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {
            55394, -- Swift Skyflare Diamond
            55386, -- Tireless Skyflare Diamond
            55389, -- Chaotic Skyflare Diamond
            55390, -- Destructive Skyflare Diamond
            55384, -- Effulgent Skyflare Diamond
            55392, -- Ember Skyflare Diamond
            55393, -- Enigmatic Skyflare Diamond
            55387, -- Forlorn Skyflare Diamond
            55388, -- Impassive Skyflare Diamond
            55407, -- Revitalizing Skyflare Diamond
            55395, -- Thundering Skyflare Diamond
            55402, -- Persistent Earthsiege Diamond
            55399, -- Powerful Earthsiege Diamond
            55401, -- Austere Earthsiege Diamond
            55405, -- Beaming Earthsiege Diamond
            55397, -- Bracing Earthsiege Diamond
            55398, -- Eternal Earthsiege Diamond
            55396, -- Insightful Earthsiege Diamond
            55404, -- Invigorating Earthsiege Diamond
            55400, -- Relentless Earthsiege Diamond
            55403, -- Trenchant Earthsiege Diamond
        };
        shouldCraftRecipe = {
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Skyflare Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
            "1x Earthsiege Diamond",
        };
    end
    return shouldCraft, shouldCraftRecipe;
end
