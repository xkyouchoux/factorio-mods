local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
    {
        type = "item",
        name = "spoilage",
        icon = SEI_SPACE_AGE_PATH.."graphics/icons/spoilage.png",
        pictures =
        {
            { size = 64, filename = SEI_SPACE_AGE_PATH.."graphics/icons/spoilage.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = SEI_SPACE_AGE_PATH.."graphics/icons/spoilage-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = SEI_SPACE_AGE_PATH.."graphics/icons/spoilage-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = SEI_SPACE_AGE_PATH.."graphics/icons/spoilage-3.png", scale = 0.5, mipmap_count = 4 },
        },
        fuel_value = "250kJ",
        fuel_category = "chemical",
        fuel_acceleration_multiplier = 0.5,
        fuel_top_speed_multiplier = 0.5,
        subgroup = "chemical",
        order = "a[chemical]-s[spoilage]",
        stack_size = 200,
        weight = 0.5 * kg,
        random_tint_color = item_tints.organic_green,
        spoil_level = 1
    },
    {
        type = "item",
        name = "heating-tower",
        icon = SEI_SPACE_AGE_PATH.."graphics/icons/heating-tower.png",
        subgroup = "energy",
        order = "c[heating-tower]",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = "heating-tower",
        stack_size = 20,
        weight = 100 * kg
    }
})
