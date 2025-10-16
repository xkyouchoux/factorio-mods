local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "spoilage-reprocessing",
        icons = data_util.sub_icons(data.raw.item["se-vitamelange-nugget"].icon, data.raw.item["spoilage"]),
        category = "organic-or-chemistry",
        enabled = false,
        energy_required = 3,
        allow_productivity = true,
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
    {
        type = "recipe",
        name = "heating-tower",
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "steel-furnace", amount = 1},
            {type = "item", name = "heat-pipe", amount = 5},
            {type = "item", name = "concrete", amount = 20},
            {type = "item", name = "se-heat-shielding", amount = 5},
        },
        results = {{type = "item", name = "heating-tower", amount = 1}},
        enabled = false
    }
})

local bio_sludge_from_spoilage_recipe = table.deepcopy(data.raw["recipe"]["se-bio-sludge-from-wood"])
bio_sludge_from_spoilage_recipe.name = "se-bio-sludge-from-spoilage"
bio_sludge_from_spoilage_recipe.localised_name = {"recipe-name.se-bio-sludge-from-spoilage"}
bio_sludge_from_spoilage_recipe.localised_description = data.raw["recipe"]["se-bio-sludge-from-wood"].localised_description
bio_sludge_from_spoilage_recipe.ingredients[1] = {type = "item", name = "spoilage", amount = 10}
bio_sludge_from_spoilage_recipe.icons[2].icon = data.raw["item"]["spoilage"].icon

data:extend({bio_sludge_from_spoilage_recipe})
