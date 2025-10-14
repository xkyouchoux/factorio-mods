local data_util = require("__sei-library__.data_util")

data.raw["item"]["cryogenic-plant"].default_import_location = nil

data.raw["technology"]["cryogenic-plant"].effects = {
    {
        type = "unlock-recipe",
        recipe = "cryogenic-plant"
    }
}
data.raw["technology"]["cryogenic-plant"].research_trigger = nil
data.raw.technology["cryogenic-plant"].prerequisites = {"space-science-pack"}
data.raw.technology["cryogenic-plant"].order = "e-g"
data.raw.technology["cryogenic-plant"].unit = {
    count = 200,
    time = 60,
    ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1}
    }
}

data_util.tech_add_prerequisites("se-processing-cryonite", {"cryogenic-plant"})

data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories = {
    "chemistry",
    "chemistry-or-cryogenics",
    "organic-or-chemistry",
    "cryogenics",
    "chemistry-or-electromagnetics",
    "melting",
}

local cryogenics_recipes = {
    "se-cryonite-lubricant",
    "se-cryonite-crystal",
    "se-cryonite-ion-exchange-beads",
    "se-cryonite-slush",
    "se-water-ice",
    "se-methane-ice",
    "se-beryllium-hydroxide",
    "se-naquium-refined",
    "se-holmium-chloride",
    "se-naquium-powder",
}

data_util.set_category_for_recipes("cryogenics", cryogenics_recipes)
