local data_util = require("__sei-library__.data_util")

require("prototypes.um-standalone-foundry-final-fixes")

data_util.set_category_for_recipes("carbon-casting", {
	"se-steel-ingot"
})

local metallurgy_recipes = {
    "se-iridium-ingot",
}

if settings.startup["sei-foundry-allow-space-recipes"].value then
    table.insert(metallurgy_recipes, "se-lattice-pressure-vessel")
end

data_util.add_additional_category_to_recipes("metallurgy", metallurgy_recipes)

local foundry_recipes = {
    "transport-belt",
    "fast-transport-belt",
    "express-transport-belt",
    "underground-belt",
    "express-underground-belt",
    "fast-underground-belt",
    "splitter",
    "fast-splitter",
    "express-splitter",
    "refined-concrete",
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
    "se-heavy-bearing",
    "se-heavy-assembly",
    
    "kr-advanced-transport-belt", -- Krastorio2
    "kr-superior-transport-belt", -- Krastorio2
    "kr-advanced-underground-belt", -- Krastorio2
    "kr-superior-underground-belt", -- Krastorio2
    "kr-advanced-splitter", -- Krastorio2
    "kr-superior-splitter", -- Krastorio2
    "kr-big-storage-tank", -- Krastorio2
    "kr-huge-storage-tank", -- Krastorio2
    "kr-steel-pump", -- Krastorio2
    "kr-black-reinforced-plate", -- Krastorio2
    "kr-white-reinforced-plate", -- Krastorio2
    "kr-electric-mining-drill-mk2", -- Krastorio2
    "kr-electric-mining-drill-mk3", -- Krastorio2
    "kr-quarry-drill", -- Krastorio2
    "kr-mineral-water-pumpjack", -- Krastorio2
    "kr-imersium-gear-wheel", -- Krastorio2
    "kr-imersium-beam", -- Krastorio2
    "kr-loader", -- Krastorio2
    "kr-fast-loader", -- Krastorio2
    "kr-advanced-loader", -- Krastorio2
    "kr-superior-loader", -- Krastorio2
    "kr-express-loader", -- Krastorio2

    "rail-ramp", -- elevated-rails
    "rail-support", -- elevated-rails

    "turbo-transport-belt", -- turbo belts
    "turbo-underground-belt", -- turbo belts
    "turbo-splitter", -- turbo belts

    "big-mining-drill", -- um-standalone-big-mining-drill
    
	"lane-splitter", -- lane-balancers
	"fast-lane-splitter", -- lane-balancers
	"express-lane-splitter", -- lane-balancers
	"turbo-lane-splitter", -- lane-balancers
	"kr-advanced-lane-splitter", -- lane-balaners
	"kr-superior-lane-splitter", -- lane-balaners

    "aai-loader", -- aai-loaders
    "aai-fast-loader", -- aai-loaders
	"aai-express-loader", -- aai-loaders
    "aai-turbo-loader", -- aai-loaders
    "aai-kr-advanced-loader", -- aai-loaders
    "aai-kr-superior-loader", -- aai-loaders
}

for _,name in pairs(foundry_recipes) do
    local recipe = data.raw["recipe"][name]
    if recipe then
    local fluid = false
        for _,ingredient in pairs(recipe.ingredients) do
            if ingredient.type == "fluid" then fluid = true break end
        end
        recipe.category = fluid and "crafting-with-fluid-or-metallurgy" or "pressing"
    end
end
