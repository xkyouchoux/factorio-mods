local data_util = require("__sei-library__.data_util")

local organic_or_chemistry_recipes = {
    "light-oil-cracking",
    "heavy-oil-cracking",
    "se-vitamelange-extract",
    "se-bioscrubber",
    "se-vitalic-acid",
    "se-vitalic-epoxy",
}

data_util.set_category_for_recipes("organic-or-chemistry", organic_or_chemistry_recipes)

local organic_recipes = {
    "se-vitalic-reagent",
    "kr-biomass",    
}

if settings.startup["sei-biochamber-allow-space-recipes"].value then
    table.insert(organic_recipes, "se-self-sealing-gel")
end

data_util.add_additional_category_to_recipes("organic", organic_recipes)
