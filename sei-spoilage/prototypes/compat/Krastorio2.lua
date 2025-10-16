if not mods["Krastorio2"] then return end

local data_util = require("__sei-library__.data_util")

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

data_util.recipe_require_tech("coke-from-spoilage", "se-processing-vitamelange")
data.raw.recipe["coke-from-spoilage"].order = data.raw.item["kr-coke"].order .. "-spoilage"
