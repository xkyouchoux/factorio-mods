if not mods["sei-spoilage"] then return end

local data_util = require("__sei-library__.data_util")

data.raw["assembling-machine"]["biochamber"].energy_source.burnt_inventory_size = 1

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

table.insert(data.raw.technology["biochamber"].effects, {
        type = "unlock-recipe",
        recipe = "nutrients-from-spoilage"
    }
)
