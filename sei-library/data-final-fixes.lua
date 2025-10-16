require("prototypes.um-standalone-space-age-lib-final-fixes")

local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_character({
    "electronics",
    "pressing",
    "organic-or-hand-crafting",
})

data_util.add_categories_to_god_controller({
    "electronics",
    "pressing",
    "organic-or-hand-crafting",
})

data_util.add_categories_to_machines_with_category({
    "electronics",
    "pressing",
}, "crafting")

data_util.add_categories_to_machines_with_category({
    "cryogenics-or-assembling",
    "electronics-with-fluid",
    "electronics-or-assembling",
    "crafting-with-fluid-or-metallurgy",
    "metallurgy-or-assembling",
    "organic-or-hand-crafting",
    "organic-or-assembling",
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "chemistry-or-cryogenics",
    "organic-or-chemistry",
}, "chemistry")
