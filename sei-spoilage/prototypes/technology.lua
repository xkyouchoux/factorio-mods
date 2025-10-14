data:extend({
    {
        type = "technology",
        name = "heating-tower",
        icon = SEI_SPACE_AGE_PATH.."graphics/technology/heating-tower.png",
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
            "chemical-science-pack", 
            "concrete",
            "advanced-material-processing",
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
