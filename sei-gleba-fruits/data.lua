require("prototypes.entity.plants")
require("prototypes.tile.tiles")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

local data_util = require("__sei-library__.data_util")

-- sei-captive-biters

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "nutrients-from-spice")
data.raw["recipe"]["nutrients-from-spice"] = nil

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "nutrients-from-extract")
data.raw["recipe"]["nutrients-from-extract"] = nil

data_util.remove_recipe_from_effects(data.raw["technology"]["captivity"].effects, "bioflux")
data_util.recipe_require_tech("crude-bioflux", "captivity")

data_util.tech_add_prerequisites("captivity", {"se-space-growth-facility"})

-- sei-biochamber

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "bioplastic")
data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "biosulfur")
data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "biolubricant")

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "nutrients-from-nuggets")
data.raw["recipe"]["nutrients-from-nuggets"] = nil

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "nutrients-from-bloom")
data.raw["recipe"]["nutrients-from-bloom"] = nil

data_util.remove_recipe_from_effects(data.raw["technology"]["biochamber"].effects, "nutrients-from-bioflux")
table.insert(data.raw["technology"]["biochamber"].effects, 2, {
    type = "unlock-recipe",
    recipe = "nutrients-from-bioflux"
})

table.insert(data.raw["technology"]["biochamber"].effects, 2, {
    type = "unlock-recipe",
    recipe = "nutrients-from-yumako-mash"
})

data_util.recipe_require_tech("fish-breeding", "biochamber")

data_util.replace_or_add_ingredient("biochamber", "steel-plate", "carbon-fiber", 25)

data_util.conditional_modify({
    type = "recipe",
    name = "bioplastic",
    category = "organic-or-chemistry",
    ingredients = {
        {type = "item", name = "bioflux", amount = 1},
        {type = "item", name = "yumako-mash", amount = 4},
    }
})

data_util.conditional_modify({
    type = "recipe",
    name = "biolubricant",
    category = "organic-or-chemistry",
    icons = data_util.sub_icons(data.raw["fluid"]["lubricant"].icon, data.raw["capsule"]["jelly"].icon),
    ingredients = {
        {type = "item", name = "jelly", amount = 60},
    }
})

-- bio 1

data_util.tech_add_prerequisites("se-vitalic-acid", {"fruits-processing"})
data_util.recipe_require_tech("yumako-processing-vita", "se-vitalic-acid")
data_util.recipe_require_tech("jellynut-processing-vita", "se-vitalic-acid")

data_util.replace_or_add_ingredient("se-experimental-genetic-data", nil, "yumako-seed", 1)
data_util.replace_or_add_ingredient("se-experimental-genetic-data", nil, "jellynut-seed", 1)

data_util.tech_add_prerequisites("se-bioscrubber", {"carbon-fiber"})
data_util.tech_add_prerequisites("spidertron", {"carbon-fiber"})
data_util.tech_add_prerequisites("se-biogun", {"carbon-fiber"})
data_util.replace_or_add_ingredient("se-bioscrubber", "steel-plate", "carbon-fiber", 2)
data_util.replace_or_add_ingredient("spidertron", "low-density-structure", "carbon-fiber", 150)
data_util.replace_or_add_ingredient("se-biogun", "steel-plate", "carbon-fiber", 10)

data_util.tech_add_prerequisites("se-medpack-3", {"fruits-processing"})
data_util.replace_or_add_ingredient("se-medpack-3", "se-chemical-gel", "yumako-mash", 10)


-- bio 2

-- bio 4

data_util.replace_or_add_ingredient("se-self-sealing-gel", nil, "jelly", 20)

require("prototypes.compat.sei-stack-inserters")
