local data_util = require("__sei-library__.data_util")

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