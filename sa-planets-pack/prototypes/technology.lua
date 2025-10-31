data:extend({

    -- secretas
    {
        type = "technology",
        name = "speed-module-4",
        icon = "__sa-planets-pack__/graphics/technology/speed-module-4.png",
        icon_size = 256,
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-4-S"
            }
        },
        prerequisites = {
            "speed-module-3", 
            "golden-science-pack",
        },
        unit =
        {
            count = 2000,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"nuclear-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"interstellar-science-pack", 1},
                {"cryogenic-science-pack", 1},
                {"golden-science-pack", 1},
            },
            time = 60
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "efficiency-module-4",
        icon = "__sa-planets-pack__/graphics/technology/efficiency-module-4.png",
        icon_size = 256,
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "efficiency-module-4-S"
            }
        },
        prerequisites = {
            "efficiency-module-3", 
            "golden-science-pack",
        },
        unit =
        {
            count = 2000,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"nuclear-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"interstellar-science-pack", 1},
                {"cryogenic-science-pack", 1},
                {"golden-science-pack", 1},
            },
            time = 60
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "productivity-module-4",
        icon = "__sa-planets-pack__/graphics/technology/productivity-module-4.png",
        icon_size = 256,
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-4-S"
            },
            {
                type = "unlock-recipe",
                recipe = "golden-egg"
            }
        },
        prerequisites = {
            "productivity-module-3", 
            "golden-science-pack",
        },
        unit =
        {
            count = 2000,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"nuclear-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"interstellar-science-pack", 1},
                {"cryogenic-science-pack", 1},
                {"golden-science-pack", 1},
            },
            time = 60
        },
        upgrade = true
    },
    {
        type = "technology",
        name = "quality-module-4",
        icon = "__sa-planets-pack__/graphics/technology/quality-module-4.png",
        icon_size = 256,
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "quality-module-4-S"
            }
        },
        prerequisites = {
            "quality-module-3", 
            "golden-science-pack",
        },
        unit =
        {
            count = 2000,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"nuclear-science-pack", 1},
                {"metallurgic-science-pack", 1},
                {"agricultural-science-pack", 1},
                {"electromagnetic-science-pack", 1},
                {"interstellar-science-pack", 1},
                {"cryogenic-science-pack", 1},
                {"golden-science-pack", 1},
            },
            time = 60
        },
        upgrade = true
    },

    -- metal and stars
    {
        type = "technology",
        name = "overclock-module-4",
        icon = "__sa-planets-pack__/graphics/technology/overclock-module-4.png",
        icon_size = 256,
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "overclock-module-4"
            }
        },
        prerequisites = {
            "overclock-module-3", 
            "quantum-science-pack", 
            "ring-science-pack",
        },
        unit =
        {
            count = 2000,
            ingredients = 
            {
                {"space-science-pack", 1},
                {"nanite-science-pack", 1},
                {"ring-science-pack", 1},
                {"anomaly-science-pack", 1},
                {"quantum-science-pack", 1},
            },
            time = 60
        },
        upgrade = true
    },
})