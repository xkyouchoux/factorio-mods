if not mods["sei-gleba-fruits"] then return end

local data_util = require("__sei-library__.data_util")

data_util.replace_or_add_ingredient("rocket-turret", "steel-plate", "carbon-fiber", 20)

data_util.tech_add_prerequisites("rocket-turret", {"carbon-fiber"})
data_util.tech_add_ingredients("rocket-turret", {"se-biological-science-pack-1"})
