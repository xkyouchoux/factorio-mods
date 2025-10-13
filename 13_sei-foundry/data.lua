local data_util = require("__sei-foundry__.data_util")

data.raw.fluid["molten-iron"] = nil
data.raw.fluid["molten-copper"] = nil

data.raw.recipe["iron-ore-melting"] = nil
data.raw.recipe["copper-ore-melting"] = nil
data.raw.recipe["casting-iron"] = nil
data.raw.recipe["casting-copper"] = nil
data.raw.recipe["casting-steel"] = nil
data.raw.recipe["concrete-from-molten-iron"] = nil

data:extend({
    {
        type = "recipe",
        name = "casting-se-heat-shielding",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "sulfur", amount = 8},
            {type = "item", name = "stone-tablet", amount = 20},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
        results = {{type = "item", name = "se-heat-shielding", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-se-steel-ingot",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = 500},
        },
        results = {{type = "item", name = "se-steel-ingot", amount = 1}},
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "casting-pipe",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)}
        },
        results = {{type = "item", name = "pipe", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-pipe-to-ground",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "pipe", amount = 10},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(5)},
        },
        results = {{type = "item", name = "pipe-to-ground", amount = 2}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-iron-gear-wheel",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
        results = {{type = "item", name = "iron-gear-wheel", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-iron-stick",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
        results = {{type = "item", name = "iron-stick", amount = 4}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-copper-cable",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
        },
        results = {{type = "item", name = "copper-cable", amount = 2}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-low-density-structure",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "plastic-bar", amount = 10},
            {type = "item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount = 10},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(5)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(10)},
        },
        results = {{type = "item", name = "low-density-structure", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-se-low-density-structure-beryllium",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "se-aeroframe-scaffold", amount = 1},
            {type = "item", name = "plastic-bar", amount = 2},
            {type = "item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
        results = {{type = "item", name = "low-density-structure", amount = 2}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-concrete",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            {type = "item", name = "stone-brick", amount = 5},
            {type = "item", name = mods["Krastorio2"] and "kr-sand" or "sand", amount = 10},
            {type = "fluid", name = "water", amount = 100},
        },
        results = {{type = "item", name = "concrete", amount = 10}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-barrel",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
        results = {{type = "item", name = "barrel", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-motor",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "iron-gear-wheel", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
        },
        results = {{type = "item", name = "motor", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-engine-unit",
        category = "metallurgy",
        enabled = false,
        ingredients =
        { 
            {type = "item", name = "motor", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(4) + data_util.get_iron_cost_for_steel(2)},
        },
        results = {{type = "item", name = "engine-unit", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-se-material-testing-pack",
        category = "metallurgy",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "plastic-bar", amount = 1},
            {type = "item", name = "stone", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
        },
        results = {{type = "item", name = "se-material-testing-pack", amount = 1}},
        allow_productivity = true
    },
})

if mods["Krastorio2"] then
    data:extend({
        {
            type = "recipe",
            name = "casting-se-steel-ingot",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = 700},
            },
            results = {{type = "item", name = "se-steel-ingot", amount = 2}},
            allow_productivity = false
        },
        {
            type = "recipe",
            name = "casting-iron-gear-wheel",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            },
            results = {{type = "item", name = "iron-gear-wheel", amount = 1}},
            allow_productivity = true
        },
        
        {
            type = "recipe",
            name = "casting-engine-unit",
            category = "metallurgy",
            enabled = false,
            ingredients =
            { 
                {type = "item", name = "motor", amount = 2},
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2) + data_util.get_iron_cost_for_steel(1)},
            },
            results = {{type = "item", name = "engine-unit", amount = 1}},
            allow_productivity = true
        },
        
        {
            type = "recipe",
            name = "casting-se-material-testing-pack",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "item", name = "plastic-bar", amount = 1},
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
                {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
                {type = "item", name = "kr-rare-metals", amount = 1},
                {type = "item", name = "kr-lithium-chloride", amount = 1},
            },
            results = {{type = "item", name = "se-material-testing-pack", amount = 1}},
            allow_productivity = true
        },
        {
            type = "recipe",
            name = "casting-kr-steel-pipe",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
            },
            results = {{type = "item", name = "kr-steel-pipe", amount = 1}},
            allow_productivity = false
        },
        {
            type = "recipe",
            name = "casting-kr-steel-pipe-to-ground",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "item", name = "kr-steel-pipe", amount = 15},
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(5)},
            },
            results = {{type = "item", name = "kr-steel-pipe-to-ground", amount = 2}},
            allow_productivity = false
        },
        {
            type = "recipe",
            name = "casting-kr-steel-gear-wheel",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
            },
            results = {{type = "item", name = "kr-steel-gear-wheel", amount = 1}},
            allow_productivity = true
        },
        {
            type = "recipe",
            name = "casting-kr-iron-beam",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
            },
            results = {{type = "item", name = "kr-iron-beam", amount = 1}},
            allow_productivity = true
        },
        {
            type = "recipe",
            name = "casting-kr-steel-beam",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
            },
            results = {{type = "item", name = "kr-steel-beam", amount = 1}},
            allow_productivity = true
        },
        {
            type = "recipe",
            name = "casting-kr-inserter-parts",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "item", name = "iron-gear-wheel", amount = 2},
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
            },
            results = {{type = "item", name = "kr-inserter-parts", amount = 1}},
            allow_productivity = true
        },
        {
            type = "recipe",
            name = "casting-kr-automation-core",
            category = "metallurgy",
            enabled = false,
            ingredients =
            {
                {type = "item", name = "iron-gear-wheel", amount = 4},
                {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
                {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(6)},
            },
            results = {{type = "item", name = "kr-automation-core", amount = 1}},
            allow_productivity = true
        },
    })
end

data.raw["assembling-machine"]["foundry"].effect_receiver.base_effect.productivity = settings.startup["sei-foundry-base-production-bonus"].value / 100

data.raw.recipe["foundry"].category = "crafting-with-fluid"
data.raw.recipe["foundry"].ingredients = mods["Krastorio2"] and {
    {type = "item", name = "se-heavy-composite", amount = 20},
    {type = "item", name = "se-heat-shielding", amount = 10},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "kr-imersium-beam", amount = 20},
    {type = "fluid", name = "lubricant", amount = 80}
} or {
    {type = "item", name = "se-heavy-composite", amount = 20},
    {type = "item", name = "se-heat-shielding", amount = 10},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "steel-plate", amount = 50},
    {type = "fluid", name = "lubricant", amount = 80}
}
