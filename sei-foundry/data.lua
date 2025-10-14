local data_util = require("__sei-library__.data_util")

data.raw["assembling-machine"]["foundry"].effect_receiver.base_effect.productivity = settings.startup["sei-foundry-base-production-bonus"].value / 100

data.raw.recipe["foundry"].category = "crafting-with-fluid"
data.raw.recipe["foundry"].ingredients = {
    {type = "item", name = "se-heavy-composite", amount = 20},
    {type = "item", name = "se-heat-shielding", amount = 10},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "steel-plate", amount = 50},
    {type = "fluid", name = "lubricant", amount = 80}
}

data.raw.recipe["se-heat-shielding-iridium"].order = data.raw.item["se-heat-shielding"].order .. "-z"
data.raw.recipe["se-low-density-structure-beryllium"].order = data.raw.item["low-density-structure"].order .. "-z"

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

    "turbo-transport-belt", -- turbo belts
    "turbo-underground-belt", -- turbo belts
    "turbo-splitter", -- turbo belts

    "refined-concrete",
    "se-heavy-bearing",
    "se-heavy-assembly",
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

data_util.recipe_require_tech("casting-" .. "se-low-density-structure-beryllium", "se-low-density-structure-beryllium")
