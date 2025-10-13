local data_util = require("__sei-library__.data_util")

se_delivery_cannon_recipes["bioflux"] = {name = "bioflux"}
se_delivery_cannon_recipes["biter-egg"] = {name = "biter-egg"}

data_util.replace_or_add_ingredient("se-biochemical-data", "se-vitamelange-spice", "biter-egg", 1)
data_util.replace_or_add_ingredient("se-capsule-small-biter", nil, "biter-egg", 1)
data_util.replace_or_add_ingredient("se-capsule-small-spitter", nil, "biter-egg", 1)
data_util.replace_or_add_ingredient("se-biological-science-pack-4", "se-core-fragment-se-vitamelange", "biter-egg", 5)

data.raw["unit-spawner"]["biter-spawner"].captured_spawner_entity = "captive-biter-spawner"
data.raw["unit-spawner"]["spitter-spawner"].captured_spawner_entity = "captive-biter-spawner"
