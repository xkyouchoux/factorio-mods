local data_util = require("__sei-library__.data_util")

local cryogenic_plant_entity = data.sap["assembling-machine"]["cryogenic-plant"]
local cryogenic_plant_remnants = data.sap["corpse"]["cryogenic-plant-remnants"]
local cryogenic_plant_explosion = data.sap["explosion"]["cryogenic-plant-explosion"]
local cryogenic_plant_item = data.sap["item"]["cryogenic-plant"]
local cryogenic_plant_recipe = data.sap["recipe"]["cryogenic-plant"]
local cryogenic_plant_technology = data.sap["technology"]["cryogenic-plant"]


data:extend({
    cryogenic_plant_entity,
    cryogenic_plant_remnants,
    cryogenic_plant_explosion,
    cryogenic_plant_item,
    cryogenic_plant_recipe,
    cryogenic_plant_technology,
    data.sap["recipe-category"]["cryogenics"],
    data.sap["recipe-category"]["chemistry-or-cryogenics"],
    data.sap["recipe-category"]["organic-or-chemistry"],
    {
        type = "recipe-category",
        name = "chemistry-or-electromagnetics",
    }
})

data.raw.recipe["cryogenic-plant"].category = "crafting"
data.raw.recipe["cryogenic-plant"].ingredients = {
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = "glass", amount = 16}
}

data.raw.item["cryogenic-plant"].order = "e[chemical-plant]-a[cryogenic-plant]"
data.raw.item["cryogenic-plant"].subgroup = "chemistry"
data.raw.item["cryogenic-plant"].stack_size = 10

data.raw["assembling-machine"]["cryogenic-plant"].module_slots = 6

if mods["Krastorio2"] then
    data.raw["assembling-machine"]["cryogenic-plant"].module_slots = 3

    data_util.replace_or_add_ingredient("cryogenic-plant", "glass", "kr-glass", 16)
    data_util.replace_or_add_ingredient("cryogenic-plant", "steel-plate", "kr-steel-beam", 10)
    data_util.replace_or_add_ingredient("kr-advanced-chemical-plant", "chemical-plant", "cryogenic-plant", 2)
end