if not mods["Krastorio2"] then return end

local data_util = require("__sei-foundry__.data_util")

data:extend({
    data_util.create_casting_recipe({
        name = "kr-steel-pipe",
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
        allow_productivity = false,
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-pipe-to-ground",
        ingredients = {
            {type = "item", name = "kr-steel-pipe", amount = 15},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(5)},
        },
        results = {{type = "item", name = "kr-steel-pipe-to-ground", amount = 2}},
        allow_productivity = false,
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-gear-wheel",
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(1)},
        },
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-iron-beam",
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
        },
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-steel-beam",
        ingredients = {
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost_for_steel(2)},
        },
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-inserter-parts",
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
        },
        icons = {data.raw.fluid["se-molten-iron"].icon}
    }),
    data_util.create_casting_recipe({
        name = "kr-automation-core",
        ingredients = {
            {type = "item", name = "iron-gear-wheel", amount = 4},
            {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2)},
            {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(6)},
        },
        icons = {data.raw.fluid["se-molten-copper"].icon, data.raw.fluid["se-molten-iron"].icon}
    })
})
data.raw["recipe"]["foundry"].ingredients = {
    {type = "item", name = "se-heavy-composite", amount = 20},
    {type = "item", name = "se-heat-shielding", amount = 10},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "kr-imersium-beam", amount = 20},
    {type = "fluid", name = "lubricant", amount = 80}
}

data.raw["recipe"]["casting-se-steel-ingot"].ingredients = {type = "fluid", name = "se-molten-iron", amount = 700}
data.raw["recipe"]["casting-se-steel-ingot"].results = {{type = "item", name = "se-steel-ingot", amount = 2}}
data.raw["recipe"]["casting-iron-gear-wheel"].ingredients = {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)}
data.raw["recipe"]["casting-engine-unit"].ingredients = { 
    {type = "item", name = "motor", amount = 2},
    {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(2) + data_util.get_iron_cost_for_steel(1)},
}
data.raw["recipe"]["casting-se-material-testing-pack"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 1},
    {type = "fluid", name = "se-molten-iron", amount = data_util.get_iron_cost(1)},
    {type = "fluid", name = "se-molten-copper", amount = data_util.get_copper_cost(1)},
    {type = "item", name = "kr-rare-metals", amount = 1},
    {type = "item", name = "kr-lithium-chloride", amount = 1},
}

local casting_recipes = {
    "kr-steel-pipe",
    "kr-steel-pipe-to-ground",
    "kr-steel-gear-wheel",
    "kr-iron-beam",
    "kr-steel-beam",
    "kr-inserter-parts",
    "kr-automation-core",
}

for _,recipe in pairs(casting_recipes) do
    data_util.recipe_require_tech("casting-" .. recipe, "foundry")
end

local pressing_recipes = {
    "kr-advanced-transport-belt",
    "kr-superior-transport-belt",
    "kr-advanced-underground-belt",
    "kr-superior-underground-belt",
    "kr-advanced-splitter",
    "kr-superior-splitter",
    "aai-kr-advanced-loader",
    "aai-kr-superior-loader",
    "kr-big-storage-tank",
    "kr-huge-storage-tank",
    "kr-steel-pump",
    "kr-black-reinforced-plate",
    "kr-white-reinforced-plate",
    "kr-electric-mining-drill-mk2",
    "kr-electric-mining-drill-mk3",
    "kr-quarry-drill",
    "kr-mineral-water-pumpjack",
    "kr-imersium-gear-wheel",
    "kr-imersium-beam",
    "kr-loader",
    "kr-fast-loader",
    "kr-advanced-loader",
    "kr-superior-loader",
	"kr-advanced-lane-splitter",
	"kr-superior-lane-splitter",
}

local crafting_with_fluid_or_metallurgy_recipes = {
    "kr-express-loader",
}

data_util.set_category_for_recipes("pressing", pressing_recipes)

data_util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", crafting_with_fluid_or_metallurgy_recipes)