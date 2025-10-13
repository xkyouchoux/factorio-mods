local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "biochamber",
        category = "crafting-with-fluid",
        energy_required = 10,
        ingredients = {
            {type = "item", name = "steel-plate", amount = 25},
            {type = "item", name = "se-vitalic-epoxy", amount = 20},
            {type = "item", name = "nutrients", amount = 50},
            {type = "item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount = 25},
            {type = "item", name = "refined-concrete", amount = 20},
            {type = "fluid", name = "se-bio-sludge", amount = 180},
        },
        results = {{type="item", name="biochamber", amount=1}},
        enabled = false
    },
    {
        type = "recipe",
        name = "nutrients-from-nuggets",
        category = "organic-or-hand-crafting",
        order = "a[organic]-a[nutrients]-c[nugget]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["se-vitamelange-nugget"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-nugget", amount = 2},
        },
        results = {{type="item", name="nutrients", amount=1}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "nutrients-from-bloom",
        category = "organic",
        order = "a[organic]-a[nutrients]-d[bloom]",
        energy_required = 4,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["se-vitamelange-bloom"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-bloom", amount = 2},
        },
        results = {{type="item", name="nutrients", amount=6}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "nutrients-from-spice",
        category = "organic",
        order = "a[organic]-a[nutrients]-e[spice]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["se-vitamelange-spice"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-spice", amount = 3},
        },
        results = {{type="item", name="nutrients", amount = 15}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "nutrients-from-extract",
        category = "organic",
        order = "a[organic]-a[nutrients]-f[extract]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["se-vitamelange-extract"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-extract", amount = 3},
        },
        results = {{type="item", name="nutrients", amount = 40}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "nutrients-from-fish",
        category = "organic-or-hand-crafting",
        order = "a[organic]-a[nutrients]-h[fish]",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.capsule["raw-fish"].icon),
        ingredients = {
            {type = "item", name = "raw-fish", amount = 1},
        },
        results = {{type="item", name="nutrients", amount = 20}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "bioplastic",
        category = "organic",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["plastic-bar"].icon, data.raw.fluid["se-bio-sludge"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-bloom", amount = 5},
            {type = "fluid", name = "se-bio-sludge", amount = 5},
        },
        results = {{type="item", name="plastic-bar", amount = 3}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "biosulfur",
        category = "organic",
        energy_required = 2,
        icons = data_util.sub_icons(data.raw.item["sulfur"].icon, data.raw.fluid["se-bio-sludge"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-nugget", amount = 3},
            {type = "fluid", name = "se-bio-sludge", amount = 5},
        },
        results = {{type="item", name="sulfur", amount = 2}},
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
    },
    {
        type = "recipe",
        name = "fish-breeding",
        icon = "__sei-biochamber__/graphics/icons/fish-breeding.png",
        category = "organic",
        subgroup = "organic",
        order = "a[organic]-c[fish-breeding]",
        reset_freshness_on_craft = true,
        auto_recycle = false,
        energy_required = 6,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "raw-fish", amount = 2, ignored_by_stats = 2},
            {type = "item", name = "nutrients", amount = 100},
            {type = "fluid", name = "water", amount = 100}
        },
        results = {{type="item", name="raw-fish", amount=3, ignored_by_stats = 2, ignored_by_productivity = 2}},
        allow_productivity = false,
        allow_quality = false,
        crafting_machine_tint =
        {
            primary = {0, 0, 1, 1},
            secondary = {0, 0, 1, 1}
        },
        show_amount_in_title = false
    },
    {
        type = "recipe",
        name = "biolubricant",
        icons = data_util.sub_icons(data.raw.fluid["lubricant"].icon, data.raw.item["se-vitamelange-nugget"].icon),
        category = "organic",
        subgroup = "oil",
        order = "a[oil]-f[lube]-c[biolubricant]",
        auto_recycle = false,
        energy_required = 3,
        enabled = false,
        ingredients = {
            {type = "item", name = "se-vitamelange-nugget", amount = 50},
            {type = "fluid", name = "heavy-oil", amount = 1},
        },
        results ={{type = "fluid", name="lubricant", amount = 20}},
        allow_productivity = true,
        crafting_machine_tint =
        {
            primary = {r = 0, g = 1, b = 0, a = 1.000},
            secondary = {r = 0.3, g = 1, b = 0.3, a = 1.000},
        }
    },
})

if mods["Krastorio2"] then
    data:extend({
        {
            type = "recipe",
            name = "fertilizer-with-nutrients",
            category = "organic",
            energy_required = 4,
            icons = data_util.sub_icons(data.raw.item["kr-fertilizer"].icon, data.raw.item["nutrients"].icon),
            ingredients = {
                {type = "item", name = "kr-biomass", amount = 2},
                {type = "item", name = "kr-sand", amount = 5},
                {type = "item", name = "nutrients", amount = 40},
                {type = "fluid", name = "kr-nitric-acid", amount = 10},
                {type = "fluid", name = "kr-mineral-water", amount = 20},
            },
            results = {{type="item", name="kr-fertilizer", amount = 20}},
            enabled = false,
            allow_productivity = true,
        },
    })

    data_util.replace_or_add_ingredient("biochamber", "steel-plate", "kr-imersium-beam", 10)
end

if mods["sei-captive-biters"] then
    data:extend({
        {
            type = "recipe",
            name = "nutrients-from-bioflux",
            category = "organic",
            order = "a[organic]-a[nutrients]-g[bioflux]",
            energy_required = 2,
            icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["bioflux"].icon),
            ingredients = {
                {type = "item", name = "bioflux", amount = 5},
            },
            results = {{type="item", name="nutrients", amount = 40}},
            enabled = false,
            allow_productivity = true,
        },
        {
            type = "recipe",
            name = "nutrients-from-biter-egg",
            category = "organic-or-hand-crafting",
            order = "a[organic]-a[nutrients]-i[biter-egg]",
            energy_required = 2,
            icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["biter-egg"].icon),
            ingredients = {
                {type = "item", name = "biter-egg", amount = 1},
            },
            results = {{type="item", name="nutrients", amount = 20}},
            enabled = false,
            allow_productivity = true,
        },
    })

    data_util.conditional_modify({
        type = "recipe",
        name = "bioplastic",
        icons = data_util.sub_icons(data.raw.item["plastic-bar"].icon, data.raw.item["bioflux"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-bloom", amount = 5},
            {type = "item", name = "bioflux", amount = 1},
        },
    })
    
    data_util.conditional_modify({
        type = "recipe",
        name = "biosulfur",
        icons = data_util.sub_icons(data.raw.item["sulfur"].icon, data.raw.item["bioflux"].icon),
        ingredients = {
            {type = "item", name = "se-vitamelange-nugget", amount = 3},
            {type = "item", name = "bioflux", amount = 1},
        },
    })
end

if mods["sei-spoilage"] then
    data:extend({
        {
            type = "recipe",
            name = "nutrients-from-spoilage",
            category = "organic-or-hand-crafting",
            order = "a[organic]-a[nutrients]-b[spoilage]",
            energy_required = 2,
            icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.item["spoilage"].icon),
            ingredients = {
                {type = "item", name = "spoilage", amount = 10},
            },
            results = {{type="item", name="nutrients", amount=1}},
            auto_recycle = false,
            enabled = false,
            allow_productivity = true,
        },
    })

    data_util.replace_or_add_ingredient("biosulfur", "se-vitamelange-nugget", "spoilage", 5)
end
