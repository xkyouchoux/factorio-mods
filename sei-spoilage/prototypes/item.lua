local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")

data:extend({
    {
        type = "item",
        name = "spoilage",
        icon = "__sei-spoilage__/graphics/icons/spoilage.png",
        pictures =
        {
            { size = 64, filename = "__sei-spoilage__/graphics/icons/spoilage.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__sei-spoilage__/graphics/icons/spoilage-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__sei-spoilage__/graphics/icons/spoilage-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = "__sei-spoilage__/graphics/icons/spoilage-3.png", scale = 0.5, mipmap_count = 4 },
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
})

