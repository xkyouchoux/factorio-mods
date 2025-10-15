local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_character({"organic-or-hand-crafting"})
data_util.add_categories_to_god_controller({"organic-or-hand-crafting"})

data_util.add_categories_to_machines_with_category({
    "organic-or-hand-crafting",
    "organic-or-assembling",
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "organic-or-chemistry",
}, "chemistry")
