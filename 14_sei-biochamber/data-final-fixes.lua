local data_util = require("__sei-library__.data_util")

local organic_or_chemistry_recipes = {
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

for _,recipe in pairs(organic_recipes) do
    if data.raw.recipe[recipe] then
        data.raw.recipe[recipe]["additional_categories"] = {
            "organic"
        }
    end
end

data.raw.recipe["bioplastic"].order = data.raw.item["plastic-bar"].order .. "-bio"
data.raw.recipe["biosulfur"].order = data.raw.item["sulfur"].order .. "-bio"

data.raw.recipe["se-vitalic-epoxy"].order = "a[vitamelange]-h[vitalic-epoxy]-a[vitalic-epoxy]"
data.raw.recipe["se-self-sealing-gel"].order = "a[vitamelange]-i[self-sealing-gel]-a[self-sealing-gel]"

if mods["Krastorio2"] then
    data.raw.recipe["se-kr-fertilizer-with-nutrients"].icon = nil
    data.raw.recipe["se-kr-fertilizer-with-nutrients"].icons = data_util.sub_icons(data.raw.item["kr-fertilizer"].icon, data.raw.fluid["se-nutrient-gel"].icon)
    data.raw.recipe["fertilizer-with-nutrients"].order = data.raw.recipe["se-kr-fertilizer-with-nutrients"].order .. "-bio"
end
