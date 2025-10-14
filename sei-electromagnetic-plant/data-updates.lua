local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_character({"electronics"})
data_util.add_categories_to_god_controller({"electronics"})

data_util.add_categories_to_machines_with_category({
    "electronics"
}, "crafting")

data_util.add_categories_to_machines_with_category({
    "electronics-with-fluid",
    "electronics-or-assembling",
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "chemistry-or-electromagnetics",
}, "chemistry")
