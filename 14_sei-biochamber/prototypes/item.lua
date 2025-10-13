local data_util = require("__sei-library__.data_util")

local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item",
        name = "biochamber",
        icon = "__sei-biochamber__/graphics/icons/biochamber.png",
        subgroup = "chemistry",
        order = "f[biochamber]-[biochamber]",
        inventory_move_sound = item_sounds.fluid_inventory_move,
        pick_sound = item_sounds.fluid_inventory_pickup,
        drop_sound = item_sounds.fluid_inventory_move,
        place_result = "biochamber",
        stack_size = 20,
    },
    {
        type = "item",
        name = "nutrients",
        icon = "__sei-biochamber__/graphics/icons/nutrients.png",
        group = "resources",
        subgroup = "organic",
        order = "a[organic]-a[nutrients]-a[nutrients]",
        fuel_category = "nutrients",
        fuel_value = "2MJ",
        stack_size = 100,
        weight = 0.5 * kg,
    },
})

if mods["sei-captive-biters"] then
    data_util.conditional_modify({
        type = "item",
        name = "bioflux",
        subgroup = "organic",
        order = "a[organic]-b[bioflux]"
    })

    data_util.conditional_modify({
        type = "item",
        name = "biter-egg",
        subgroup = "organic",
        order = "a[organic]-d[biter-egg]"
    })
end

if mods["sei-spoilage"] then
    data_util.conditional_modify({
        type = "item",
        name = "nutrients",
        spoil_ticks = 5 * minute,
        spoil_result = "spoilage",
    })

    data_util.conditional_modify({
        type = "item",
        name = "spoilage",
        subgroup = "organic",
        order = "a[organic]-aa[spoilage]",
    })
end
