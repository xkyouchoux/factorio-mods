local data_util = require("__sei-library__.data_util")

data:extend({
    {
        type = "recipe",
        name = "fusion-power-cell",
        category = "cryogenics",
        subgroup = "fuel",
        order = "c[lithium]-d[fusion-power-cell]",
        auto_recycle = false,
        allow_productivity = true, 
        energy_required = 10,
        ingredients =
        {
            {type = "item", name = "se-superconductive-cable", amount = 1},
            {type = "item", name = "se-holmium-plate", amount = 1},
            {type = "fluid", name = "se-cryonite-slush", amount = 10}
        },
        results = {{type="item", name="fusion-power-cell", amount=1}},
        enabled = false,
        crafting_machine_tint =
        {
            primary = {r = 0.054, g = 0.897, b = 1.000, a = 1.000}, -- #0de4ffff
            secondary = {r = 1.000, g = 0.779, b = 0.974, a = 1.000}, -- #ffc6f8ff
            tertiary = {r = 0.497, g = 0.655, b = 0.757, a = 1.000}, -- #7ea7c1ff
            quaternary = {r = 0.761, g = 0.312, b = 1.000, a = 1.000}, -- #c14fffff
        }
    },
    {
        type = "recipe",
        name = "flash-coolant-cold",
        category = "cryogenic-cooling",
        subgroup = "thermofluid",
        icons = data_util.sub_icons(data.raw["fluid"]["se-space-coolant-cold"].icon, data.raw["fluid"]["se-cryonite-slush"].icon),
        order = "a[thermofluid]-c[cold]-c[flash]",
        auto_recycle = false,
        energy_required = 4,
        ingredients = {
            {type = "fluid", name = "se-space-coolant-hot", amount = 40},
            {type = "fluid", name = "se-cryonite-slush", amount = 1},
        },
        results = {
            {type = "fluid", name="se-space-coolant-cold", amount = 32},
        },
        enabled = false,
        main_product = "se-space-coolant-cold",
    },
    {
        type = "recipe",
        name = "fusion-reactor",
        energy_required = 60,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "refined-concrete", amount = 400},
            {type = "item", name = "se-heavy-girder", amount = 200},
            {type = "item", name = "low-density-structure", amount = 200},
            {type = "item", name = "se-heat-shielding", amount = 200},
            {type = "item", name = "se-superconductive-cable", amount = 200},
            {type = "item", name = "se-quantum-processor", amount = 100},
        },
        results = {{type="item", name="fusion-reactor", amount=1}},
        requester_paste_multiplier = 1,
    },
    {
        type = "recipe",
        name = "fusion-generator",
        energy_required = 30,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "refined-concrete", amount = 100},
            {type = "item", name = "se-heavy-girder", amount = 50},
            {type = "item", name = "low-density-structure", amount = 50},
            {type = "item", name = "se-heat-shielding", amount = 50},
            {type = "item", name = "se-superconductive-cable", amount = 50},
            {type = "item", name = "se-holmium-solenoid", amount = 50},
        },
        results = {{type="item", name="fusion-generator", amount=1}},
        requester_paste_multiplier = 1,
    },
})
