local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "crude-bioflux",
        icon = "__sei-gleba-fruits__/graphics/icons/crude-bioflux.png",
        category = "space-growth",
        subgroup = "space-biochemical",
        enabled = false,
        allow_productivity = true,
        energy_required = 6,
        ingredients =
        {
            {type = "item", name = "se-vitamelange-nugget", amount = 12},
            {type = "item", name = "se-vitamelange-bloom", amount = 7},
            {type = "fluid", name = "se-bio-sludge", amount = 5}
        },
        results = {{type="item", name="bioflux", amount=2}},
        crafting_machine_tint =
        {
            primary = {r = 0.3, g = 0.9, b = 0.8, a = 1.000},
            secondary = {r = 0.8, g = 0.5, b = 0.3, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "bioflux",
        category = "organic-or-chemistry",
        subgroup = "agriculture-products",
        auto_recycle = false,
        enabled = false,
        allow_productivity = true,
        energy_required = 6,
        ingredients =
        {
            {type = "item", name = "yumako-mash", amount = 15},
            {type = "item", name = "jelly", amount = 12}
        },
        results = {{type="item", name="bioflux", amount=4}},
        crafting_machine_tint =
        {
            primary = {r = 0.3, g = 0.9, b = 0.8, a = 1.000},
            secondary = {r = 0.8, g = 0.5, b = 0.3, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "yumako-seed-genetic-breeding",
        icons = data_util.sub_icons(data.raw["item"]["yumako-seed"].icon, data.raw["item"]["se-genetic-data"]),
        category = "space-genetics",
        subgroup = "agriculture-processes",
        order = "a[seeds]-b[yumako-genetic-breeding]",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "tree-seed", amount = 10},
            {type = "item", name = "se-vitamelange-extract", amount = 1},
            {type = "item", name = "se-genetic-data", amount = 10},
            {type = "fluid", name = "se-nutrient-gel", amount = 10},
        },
        results = {
            {type = "item", name = "yumako-seed", amount_min = 0, amount_max = 10, probability = 0.10},
            {type = "item", name = "se-genetic-data", amount = 9},
            {type = "item", name = "se-junk-data", amount = 1},
        },
        crafting_machine_tint =
        {
        primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
        secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "jellynut-seed-genetic-breeding",
        icons = data_util.sub_icons(data.raw["item"]["jellynut-seed"].icon, data.raw["item"]["se-genetic-data"]),
        category = "space-genetics",
        subgroup = "agriculture-processes",
        order = "a[seeds]-c[jellynut-gentic-breeding]",
        enabled = false,
        energy_required = 60,
        ingredients = {
            {type = "item", name = "tree-seed", amount = 10},
            {type = "item", name = "se-vitamelange-extract", amount = 1},
            {type = "item", name = "se-genetic-data", amount = 10},
            {type = "fluid", name = "se-nutrient-gel", amount = 10},
        },
        results =
        {
            {type = "item", name = "jellynut-seed", amount_min = 0, amount_max = 10, probability = 0.10},
            {type = "item", name = "se-genetic-data", amount = 9},
            {type = "item", name = "se-junk-data", amount = 1},
        },
        crafting_machine_tint =
        {
            primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
            secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "yumako-processing",
        icon = path_util.space_age_path.."graphics/icons/yumako-processing.png",
        category = "organic-or-hand-crafting",
        subgroup = "agriculture-processes",
        order = "a[seeds]-d[yumako-processing]",
        enabled = false,
        allow_productivity = true,
        energy_required = 1,
        ingredients = {{type = "item", name = "yumako", amount = 1}},
        results =
        {
            {type = "item", name = "yumako-seed", amount = 1, probability = 0.01},
            {type = "item", name = "yumako-mash", amount = 2}
        },
        crafting_machine_tint =
        {
        primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
        secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "jellynut-processing",
        icon = path_util.space_age_path.."graphics/icons/jellynut-processing.png",
        category = "organic-or-hand-crafting",
        subgroup = "agriculture-processes",
        order = "a[seeds]-e[jellynut-processing]",
        enabled = false,
        allow_productivity = true,
        energy_required = 1,
        ingredients =
        {
            {type = "item", name = "jellynut", amount = 1},
        },
        results =
        {
            {type = "item", name = "jellynut-seed", amount = 1, probability = 0.01},
            {type = "item", name = "jelly", amount = 4}
        },
        crafting_machine_tint =
        {
            primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
            secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "yumako-processing-vita",
        icons = data_util.sub_icons(path_util.space_age_path.."graphics/icons/yumako-processing.png", data.raw["fluid"]["se-vitalic-acid"]),
        category = "organic-or-hand-crafting",
        subgroup = "agriculture-processes",
        order = "a[seeds]-d[yumako-processing]-vita",
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients = {
            {type = "item", name = "yumako", amount = 4},
            {type = "fluid", name = "se-vitalic-acid", amount = 1},
        },
        results =
        {
            {type = "item", name = "yumako-seed", amount = 4, probability = 0.05},
            {type = "item", name = "yumako-mash", amount = 10},
        },
        crafting_machine_tint =
        {
        primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
        secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "jellynut-processing-vita",
        icons = data_util.sub_icons(path_util.space_age_path.."graphics/icons/jellynut-processing.png", data.raw["fluid"]["se-vitalic-acid"]),
        category = "organic-or-hand-crafting",
        subgroup = "agriculture-processes",
        order = "a[seeds]-e[jellynut-processing]-vita",
        enabled = false,
        allow_productivity = true,
        energy_required = 4,
        ingredients =
        {
            {type = "item", name = "jellynut", amount = 4},
            {type = "fluid", name = "se-vitalic-acid", amount = 1},
        },
        results =
        {
            {type = "item", name = "jellynut-seed", amount = 4, probability = 0.05 },
            {type = "item", name = "jelly", amount = 20},
        },
        crafting_machine_tint =
        {
            primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
            secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "artificial-yumako-soil",
        category = "space-manufacturing",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "yumako-seed", amount = 2},
            {type = "item", name = "landfill", amount = 10},
            {type = "item", name = "se-vitamelange-extract", amount = 5},
            {type = "fluid", name = "se-nutrient-gel", amount = 20},
        },
        results = {{type="item", name="artificial-yumako-soil", amount=10}}
    },
    {
        type = "recipe",
        name = "artificial-jellynut-soil",
        category = "space-manufacturing",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "jellynut-seed", amount = 2},
            {type = "item", name = "landfill", amount = 10},
            {type = "item", name = "se-vitamelange-extract", amount = 5},
            {type = "fluid", name = "se-nutrient-gel", amount = 20},
        },
        results = {{type="item", name="artificial-jellynut-soil", amount=10}}
    },
    {
        type = "recipe",
        name = "overgrowth-yumako-soil",
        category = "space-manufacturing",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "artificial-yumako-soil", amount = 2},
            {type = "item", name = "yumako-seed", amount = 5},
            {type = "item", name = "biter-egg", amount = 5},
            {type = "item", name = "se-vitalic-epoxy", amount = 1},
            {type = "item", name = "nutrients", amount = 50},
            {type = "fluid", name = "water", amount = 100},
        },
        results = {{type="item", name="overgrowth-yumako-soil", amount=1}}
    },
    {
        type = "recipe",
        name = "overgrowth-jellynut-soil",
        category = "space-manufacturing",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
            {type = "item", name = "artificial-jellynut-soil", amount = 2},
            {type = "item", name = "jellynut-seed", amount = 5},
            {type = "item", name = "biter-egg", amount = 5},
            {type = "item", name = "se-vitalic-epoxy", amount = 1},
            {type = "item", name = "nutrients", amount = 50},
            {type = "fluid", name = "water", amount = 100},
        },
        results = {{type="item", name="overgrowth-jellynut-soil", amount=1}}
    },
    {
        type = "recipe",
        name = "nutrients-from-yumako-mash",
        category = "organic",
        subgroup = "agriculture-processes",
        enabled = false,
        allow_productivity = true,
        order = "c[nutrients]-c[nutrients]-e[yumako-mash]",
        energy_required = 4,
        icons = data_util.sub_icons(data.raw.item["nutrients"].icon, data.raw.capsule["yumako-mash"].icon),
        ingredients = {{type = "item", name = "yumako-mash", amount = 4}},
        results = {{type="item", name="nutrients", amount=6}},
        crafting_machine_tint =
        {
            primary = {r = 0.8, g = 0.9, b = 1, a = 1.000},
            secondary = {r = 0.8, g = 0.2, b = 0.0, a = 1.000},
        }
    },
    {
        type = "recipe",
        name = "carbon-fiber",
        category = "organic-or-assembling",
        subgroup = "agriculture-products",
        order = "a[organic-products]-h[carbon-fiber]",
        auto_recycle = false,
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "yumako-mash", amount = 10},
            {type = "item", name = "coal", amount = 2},
            {type = "fluid", name = "sulfuric-acid", amount = 20}
        },
        results = {{type="item", name="carbon-fiber", amount=1}},
        allow_productivity = true,
        crafting_machine_tint =
        {
            primary = {r = 9, g = 0, b = 220, a = 1.000},
            secondary = {r = 0, g = 0, b = 0, a = 1.000},
        },
    },
    {
        type = "recipe",
        name = "rocket-fuel-from-jelly",
        icons = data_util.sub_icons(data.raw["item"]["rocket-fuel"].icon, data.raw["capsule"]["bioflux"].icon),
        category = "fuel-refining",
        subgroup = "fuel",
        order = "a[fuel]-c[rocket-fuel]-d[rocket-fuel]",
        enabled = false,
        allow_productivity = true,
        energy_required = 10,
        ingredients =
        {
            {type = "fluid", name = "water", amount = 30},
            {type = "item", name =  "jelly", amount = 30},
            {type = "item", name = "bioflux", amount = 2}
        },
        results = {{type="item", name="rocket-fuel", amount=1}},
        crafting_machine_tint =
        {
            primary = {r = 151, g = 66, b = 0, a = 1.000},
            secondary = {r = 0.3, g = 0.9, b = 0.3, a = 1.000},
        }
    },
})