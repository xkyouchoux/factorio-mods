if not mods["um-standalone-cryogenic-plant"] then return end

data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"].crafting_categories)

table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "cryogenics")
table.insert(data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories, "cryogenics-or-assembling")
