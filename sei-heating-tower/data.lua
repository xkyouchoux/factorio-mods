local data_util = require("__sei-library__.data_util")

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

--data.raw["reactor"]["heating-tower"].collision_mask.layers[space_collision_layer] = true
data.raw["reactor"]["heating-tower"].collision_mask = {
    ["layers"] = {
        ["is_lower_object"] = true,
        ["is_object"] = true,
        ["water_tile"] = true,
        ["item"] = true,
        ["object"] = true,
        ["player"] = true,
        ["meltable"] = true,
        [space_collision_layer] = true,
    }
}

data_util.collision_description(data.raw["reactor"]["heating-tower"])