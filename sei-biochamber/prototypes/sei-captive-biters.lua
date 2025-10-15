if not mods["sei-captive-biters"] then return end

local data_util = require("__sei-library__.data_util")

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
})
data_util.replace_or_add_ingredient("bioplastic", "se-bio-sludge", "bioflux", 1)
    
data_util.conditional_modify({
    type = "recipe",
    name = "biosulfur",
    icons = data_util.sub_icons(data.raw.item["sulfur"].icon, data.raw.item["bioflux"].icon),
})
data_util.replace_or_add_ingredient("biosulfur", "se-bio-sludge", "bioflux", 1)

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "nutrients-from-bioflux"
    }
)

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "nutrients-from-biter-egg"
    }
)