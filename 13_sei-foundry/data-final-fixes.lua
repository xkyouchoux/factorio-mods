local data_util = require("__sei-foundry__.data_util")

data.raw.recipe["se-heat-shielding-iridium"].order = data.raw.item["se-heat-shielding"].order .. "-z"
data.raw.recipe["se-low-density-structure-beryllium"].order = data.raw.item["low-density-structure"].order .. "-z"

data.raw.technology["foundry"].prerequisites = {"se-heavy-composite"}
data.raw.technology["foundry"].order = "e-g"

data.raw.technology["foundry"].effects = {
    {
        type = "unlock-recipe",
        recipe = "foundry"
    }
}

data.raw.technology["foundry"].unit.count = 500
data.raw.technology["foundry"].unit.time = 60
data.raw.technology["foundry"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"se-material-science-pack-3", 1},
}

local iron_casting_recipes = {
    "se-heat-shielding",
    "se-steel-ingot",
    "pipe",
    "pipe-to-ground",
    "iron-gear-wheel",
    "iron-stick",
    "concrete",
    "barrel",
    "motor",
    "engine-unit",
    "kr-steel-pipe",
    "kr-steel-pipe-to-ground",
    "kr-steel-gear-wheel",
    "kr-iron-beam",
    "kr-steel-beam",
    "kr-inserter-parts"
}

local copper_casting_recipes = {
    "copper-cable"
}

local copper_iron_casting_recipes = {
    "low-density-structure",
    "se-material-testing-pack",
    "kr-automation-core"
}

for k,v in pairs(iron_casting_recipes) do
    data_util.update_casting_recipe(v, {data.raw.fluid["se-molten-iron"].icon})
    data_util.recipe_require_tech("casting-" .. v, "foundry")
end

for k,v in pairs(copper_casting_recipes) do
    data_util.update_casting_recipe(v, {data.raw.fluid["se-molten-copper"].icon})
    data_util.recipe_require_tech("casting-" .. v, "foundry")
end

for k,v in pairs(copper_iron_casting_recipes) do
    data_util.update_casting_recipe(v, {data.raw.fluid["se-molten-copper"].icon, data.raw.fluid["se-molten-iron"].icon})
    data_util.recipe_require_tech("casting-" .. v, "foundry")
end

data_util.update_casting_recipe("se-low-density-structure-beryllium", {data.raw.item["se-aeroframe-scaffold"].icon, data.raw.fluid["se-molten-iron"].icon}, "low-density-structure")
data_util.recipe_require_tech("casting-" .. "se-low-density-structure-beryllium", "se-low-density-structure-beryllium")

data.raw["assembling-machine"]["foundry"].crafting_categories = {
    "metallurgy",
    "pressing",
    "crafting-with-fluid-or-metallurgy",
    "casting",
}

local pressing_recipes = {
    "transport-belt",
    "fast-transport-belt",
    "underground-belt",
    "fast-underground-belt",
    "splitter",
    "fast-splitter",
    "storage-tank",
    "pump",
    "rail",
    "burner-mining-drill",
    "electric-mining-drill",
    "area-mining-drill",
    "se-core-miner-drill",
    "offshore-pump",
    "pumpjack",
    "stone-furnace",
    "steel-furnace",
    "electric-furnace",
    "industrial-furnace",
    "stone-tablet",
    "se-heat-shielding-iridium",
    "se-heavy-girder",
    "se-heavy-composite",
    "se-aeroframe-pole",
    "se-aeroframe-scaffold",
    "se-aeroframe-bulkhead",
    "se-cargo-rocket-cargo-pod",
    "se-cargo-rocket-fuel-tank",
    
    "kr-advanced-transport-belt",
    "kr-superior-transport-belt",
    "express-underground-belt",
    "kr-advanced-underground-belt",
    "kr-superior-underground-belt",
    "express-splitter",
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

	"lane-splitter", -- lane-balancers
	"fast-lane-splitter", -- lane-balancers

	"big-mining-drill", -- um-standalone-mining-drill
	
    "aai-loader", -- aai-loaders
    "aai-fast-loader", -- aai-loaders

    "rail-ramp", -- elevated-rails
    "rail-support", -- elevated-rails
}

local crafting_with_fluid_or_metallurgy_recipes = {
    "express-transport-belt",
    "express-underground-belt",
    "express-splitter",
    "turbo-transport-belt",
    "turbo-underground-belt",
    "turbo-splitter",
    "refined-concrete",
    "se-heavy-bearing",
    "se-heavy-assembly",
    "kr-express-loader",
    "big-mining-drill",
    
	"express-lane-splitter", -- lane-balancers
	"turbo-lane-splitter", -- lane-balancers

	"aai-express-loader", -- aai-loaders
    "aai-turbo-loader", -- aai-loaders
}

data_util.set_category_for_recipes("pressing", pressing_recipes)

data_util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", crafting_with_fluid_or_metallurgy_recipes)

data_util.set_category_for_recipes("carbon-casting", {
	"se-steel-ingot"
})

local metallurgy_recipes = {
    "se-iridium-ingot",
}

if settings.startup["sei-foundry-allow-space-recipes"].value then
    table.insert(metallurgy_recipes, "se-lattice-pressure-vessel")
end

for _,recipe in pairs(metallurgy_recipes) do
    if data.raw.recipe[recipe] then
        data.raw.recipe[recipe]["additional_categories"] = {
            "metallurgy"
        }
    end
end
