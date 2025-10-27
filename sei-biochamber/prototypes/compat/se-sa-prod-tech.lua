if not mods["se-sa-prod-tech"] then return end

local multiplier = require("__se-sa-prod-tech__.data_util").multiplier

table.insert(data.raw["technology"]["plastic-bar-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "bioplastic",
    change = multiplier,
})
