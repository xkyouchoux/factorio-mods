if not mods["se-sa-prod-tech"] then return end

local multiplier = require("__se-sa-prod-tech__.data_util").multiplier

table.insert(data.raw["technology"]["rocket-fuel-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "rocket-fuel-from-jelly",
    change = multiplier,
})
