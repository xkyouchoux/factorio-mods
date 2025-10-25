local data_util = require("__sei-library__.data_util")

require("prototypes.recipe-updates")
require("prototypes.Krastorio2-updates")

data_util.add_categories_to_machines_with_category({
    "carbon-casting",
}, "casting")

data_util.remove_category_from_machines("carbon-casting", {"foundry"})

data_util.recipe_require_tech("casting-se-low-density-structure-beryllium", "se-low-density-structure-beryllium")
