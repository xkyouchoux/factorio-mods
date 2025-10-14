local path_util = require("__sei-library__.path_util")

data:extend({
    {
        type = "technology",
        name = "heating-tower",
        icon = path_util.space_age_path.."graphics/technology/heating-tower.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "heating-tower"
            },
            {
                type = "unlock-recipe",
                recipe = "heat-pipe"
            },
            {
                type = "unlock-recipe",
                recipe = "heat-exchanger"
            },
            {
                type = "unlock-recipe",
                recipe = "steam-turbine"
            }
        },
        prerequisites = {
            "concrete",
            "advanced-material-processing",
            "se-heat-shielding",
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 60
        }
    }
})
