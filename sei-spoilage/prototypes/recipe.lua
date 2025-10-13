local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "spoilage-reprocessing",
        icons = data_util.sub_icons(data.raw.item["se-vitamelange-nugget"].icon, data.raw.item["spoilage"]),
        category = "chemistry",
        enabled = false,
        energy_required = 3,
        ingredients =
        {
            {type = "item", name = "spoilage", amount = 20},
            {type = "fluid", name = "se-bio-sludge", amount = 1}
        },
        results = {{type="item", name="se-vitamelange-nugget", amount=4}},
        crafting_machine_tint =
        {
            primary = {r = 0.1, g = 0.9, b = 0.1, a = 1.000},
            secondary = {r = 0, g = 0.5, b = 0, a = 1.000},
        }
    },
})

data_util.replace_or_add_ingredient("heating-tower", "boiler", "heat-exchanger", 2)
data_util.replace_or_add_ingredient("heating-tower", nil, "se-heat-shielding", 4)

if mods["Krastorio2"] then
    data:extend({
        {
            type = "recipe",
            name = "coke-from-spoilage",
            icons = data_util.sub_icons(data.raw.item["kr-coke"].icon, data.raw.item["spoilage"]),
            category = "kiln",
            enabled = false,
            energy_required = 16,
            allow_productivity = true,
            ingredients =
            {
                {type = "item", name = "wood", amount = 6},
                {type = "item", name = "spoilage", amount = 6}
            },
            results = {{type="item", name="kr-coke", amount=6}},
        },
    })
end

data_util.make_recipe({
    name = data_util.mod_prefix .. "bio-sludge-from-spoilage",
    localised_description = {"recipe-description.se-bio-sludge-from-fish"},
    ingredients = {
        { type = "item", name = "spoilage", amount = 10},
        { type = "fluid", name = data_util.mod_prefix .. "space-water", amount = 10 },
    },
    results = {
        { type = "fluid", name = data_util.mod_prefix .. "bio-sludge", amount = 1 },
    },
    icons = {
        { icon = data.raw.fluid[data_util.mod_prefix .. "bio-sludge"].icon, scale = 0.5, icon_size = 64  },
        { icon = data.raw.item["spoilage"].icon, scale = 0.375, icon_size = 64  },
    },
    crafting_machine_tint = require("__space-exploration__.prototypes.recipe-tints").bio_sludge_tint,
    energy_required = 10,
    category = "space-biochemical",
    enabled = false,
    subgroup = "sludge",
    order = "a[sludge]-a[bio-sludge]-c[bio-slidge]",
    always_show_made_in = true,
    hide_from_signal_gui = false,
})