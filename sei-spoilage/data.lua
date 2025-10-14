local data_util = require("__sei-library__.data_util")

SEI_SPACE_AGE_PATH = data_util.space_age_path
SEI_SPRITE_LOAD = data_util.sa_sprite_load

--added from space exploration
se_delivery_cannon_recipes["spoilage"] = {name = "spoilage"}

--added to easily remove fuel categories from heating tower if needed
--sei_fuel_categories[name] = true or false
sei_fuel_categories = {}

require("prototypes.entity.entities")
require("prototypes.entity.explosions")
require("prototypes.entity.remnants")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")

local data_util = require("__sei-library__.data_util")

data.raw.capsule["raw-fish"].spoil_ticks = 453000
data.raw.capsule["raw-fish"].spoil_result = "spoilage"

data.raw.item["se-vitamelange-nugget"].spoil_ticks = 0.5 * hour
data.raw.item["se-vitamelange-nugget"].spoil_result = "spoilage"

data.raw.item["se-vitamelange-bloom"].spoil_ticks = 2 * hour
data.raw.item["se-vitamelange-bloom"].spoil_result = "spoilage"

data_util.replace_or_add_result("se-space-water-decontamination", "se-contaminated-scrap", "spoilage", 1)
data_util.replace_or_add_result("se-bio-sludge-decontamination", "se-contaminated-scrap", "spoilage", 1)

data.raw.recipe["se-vitamelange-bloom"].reset_freshness_on_craft = true

data_util.recipe_require_tech("spoilage-reprocessing", "se-processing-vitamelange")
data_util.recipe_require_tech("se-bio-sludge-from-spoilage", "se-space-growth-facility")

require("prototypes.Krastorio2")
