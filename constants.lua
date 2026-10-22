local addonName, addonTable = ...;

addonTable.chat_frame_default_color = "6BFF75"; ------ pastel green
addonTable.chat_frame_player_name_color = "6BC6FF" --- pastel blue

-- Localization — defaults are English, overrides applied in applyLocale()
local L = {}
addonTable.L = L

L["craft_button"]         = "Craft (%d)"
L["craft_button_unavail"] = "Unavailable"
L["not_learned"]          = "Not learned or unavailable"
L["profession_cap"]       = "Profession Cap already reached"
L["recipe_prefix"]        = "Recipe: "
L["header_label"]         = "Next recipe you should craft"
L["loaded_for"]           = "[Profession Capper] all modules loaded for"
L["crafting"]             = "[Profession Capper] crafting"

addonTable.applyLocale = function()
    local locale = GetLocale()
    if locale == "esES" or locale == "esMX" then
        L["craft_button"]         = "Fabricar (%d)"
        L["craft_button_unavail"] = "No disponible"
        L["not_learned"]          = "No aprendida o no disponible"
        L["profession_cap"]       = "Ya alcanzaste el nivel maximo"
        L["recipe_prefix"]        = "Receta: "
        L["header_label"]         = "Siguiente receta a fabricar"
        L["loaded_for"]           = "[Profession Capper] modulos cargados para"
        L["crafting"]             = "[Profession Capper] fabricando"
    elseif locale == "frFR" then
        L["craft_button"]         = "Fabriquer (%d)"
        L["craft_button_unavail"] = "Indisponible"
        L["not_learned"]          = "Non appris ou indisponible"
        L["profession_cap"]       = "Niveau maximal du métier déjà atteint"
        L["recipe_prefix"]        = "Recette : "
        L["header_label"]         = "Prochaine recette à fabriquer"
        L["loaded_for"]           = "[Profession Capper] modules chargés pour"
        L["crafting"]             = "[Profession Capper] fabrication de"
    end
end
