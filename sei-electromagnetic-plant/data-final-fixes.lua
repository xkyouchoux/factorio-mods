local data_util = require("__sei-library__.data_util")

local chemistry_or_electromagnetics_recipes = {
    "battery",

    "kr-lithium-sulfur-battery",
}

data_util.set_category_for_recipes("chemistry-or-electromagnetics", chemistry_or_electromagnetics_recipes)

if settings.startup["sei-electromagnetic-plant-allow-space-recipes"].value then
    local electromagnetic_recipes = {
        "se-space-solar-panel",
        "se-space-solar-panel-2",
        "se-space-solar-panel-3",
        "se-space-accumulator",
        "se-space-accumulator-2",
        "se-superconductive-cable",
        "se-dynamic-emitter",
        "se-quantum-processor",
    }

    data_util.add_additional_category_to_recipes("electromagnetics", electromagnetic_recipes)
end

local electromagnetic_plant_recipes = {
    "small-electric-pole",
    "small-iron-electric-pole",
    "medium-electric-pole",
    "big-electric-pole",
    "substation",
    "se-addon-power-pole",
    "se-pylon",
    "se-pylon-substation",
    "se-pylon-construction",
    "se-pylon-construction-radar",
    "roboport",
    "se-supercharger",
    "small-lamp",
    "arithmetic-combinator",
    "decider-combinator",
    "selector-combinator",
    "constant-combinator",
    "power-switch",
    "programmable-speaker",
    "display-panel",
    "aai-signal-sender",
    "aai-signal-receiver",
    "solar-panel",
    "accumulator",
    "beacon",
    "se-compact-beacon",
    "se-compact-beacon-2",
    "se-wide-beacon",
    "se-wide-beacon-2",
    "speed-module",
    "speed-module-2",
    "speed-module-3",
    "speed-module-4",
    "speed-module-5",
    "speed-module-6",
    "speed-module-7",
    "speed-module-8",
    "speed-module-9",
    "efficiency-module",
    "efficiency-module-2",
    "efficiency-module-3",
    "efficiency-module-4",
    "efficiency-module-5",
    "efficiency-module-6",
    "efficiency-module-7",
    "efficiency-module-8",
    "efficiency-module-9",
    "productivity-module",
    "productivity-module-2",
    "productivity-module-3",
    "productivity-module-4",
    "productivity-module-5",
    "productivity-module-6",
    "productivity-module-7",
    "productivity-module-8",
    "productivity-module-9",
    "quality-module",
    "quality-module-2",
    "quality-module-3",
    "quality-module-4",
    "quality-module-5",
    "quality-module-6",
    "quality-module-7",
    "quality-module-8",
    "quality-module-9",
    "flying-robot-frame",
    "electric-engine-unit",
    "processing-unit",
    "se-processing-unit-holmium",
    "electric-motor",
    "copper-cable",
    "electronic-circuit",
    "electronic-circuit-wood",
    "advanced-circuit",
    "satellite",
    "rocket-control-unit",

    "kr-superior-substation",
    "kr-tesla-coil",
    "kr-small-roboport",
    "kr-big-roboport",
    "kr-energy-storage",
    "se-kr-rare-metal-electric-motor",
    "kr-electronic-components",
    "kr-energy-control-unit",
    "kr-advanced-solar-panel",
    "kr-ai-core",
}

for _,name in pairs(electromagnetic_plant_recipes) do
    local recipe = data.raw["recipe"][name]
    if recipe then
    local fluid = false
        for _,ingredient in pairs(recipe.ingredients) do
            if ingredient.type == "fluid" then fluid = true break end
        end
        recipe.category = fluid and "electronics-with-fluid" or "electronics"
    end
end

