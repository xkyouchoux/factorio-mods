if not mods["se-sa-prod-tech"] then return end

local multiplier = require("__se-sa-prod-tech__.data_util").multiplier

table.insert(data.raw["technology"]["low-density-structure-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "casting-low-density-structure",
    change = multiplier,    
})

table.insert(data.raw["technology"]["low-density-structure-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "casting-se-low-density-structure-beryllium",
    change = multiplier,
})