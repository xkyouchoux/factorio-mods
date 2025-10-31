local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "module",
        name = "overclock-module-4",
        localised_description = {"item-description.overclock-module"},
        icon = "__sa-planets-pack__/graphics/icons/overclock-module-4.png",
        subgroup = "overclock-module",
        color_hint = { text = "P" },
        category = "overclock",
        tier = 4,
        order = "d[overclock-module-4]",
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        stack_size = 50,
        weight = 20 * kg,
        effect =
        {
            productivity = 0.16,
            consumption = 2.0,
        }
    },
})