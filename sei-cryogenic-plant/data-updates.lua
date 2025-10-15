local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_machines_with_category({
    "cryogenics-or-assembling"
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "chemistry-or-cryogenics"
}, "chemistry")

data_util.add_categories_to_machines({
    "cryogenics"
}, {
    "se-space-biochemical-laboratory",
    "se-space-biochemical-laboratory-grounded",
    "kr-advanced-chemical-plant",
})