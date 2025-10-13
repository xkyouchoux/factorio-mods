local data_util = require("__sei-library__.data_util")

data.raw.technology["electromagnetic-plant"].prerequisites = {"se-quantum-processor", "automation-3"}
data.raw.technology["electromagnetic-plant"].order = "e-g"
data.raw.technology["electromagnetic-plant"].unit.count = 500
data.raw.technology["electromagnetic-plant"].unit.time = 60
data.raw.technology["electromagnetic-plant"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"se-energy-science-pack-3", 1},
}

if mods["Krastorio2"] then
    data_util.tech_add_prerequisites("electromagnetic-plant", {"kr-energy-control-unit"})
end

data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories = {
    "electromagnetics",
    "electronics",
    "electronics-with-fluid",
    "electromagnetics",
    "chemistry-or-electromagnetics",
    "crafting-or-electromagnetics",
}

local electronics_recipes = {
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
    "efficiency-module",
    "efficiency-module-2",
    "efficiency-module-3",
    "efficiency-module-4",
    "efficiency-module-5",
    "efficiency-module-6",
    "efficiency-module-7",
    "productivity-module",
    "productivity-module-2",
    "productivity-module-3",
    "productivity-module-4",
    "productivity-module-5",
    "productivity-module-6",
    "productivity-module-7",
    "quality-module",
    "quality-module-2",
    "quality-module-3",
    "quality-module-4",
    "quality-module-5",
    "quality-module-6",
    "quality-module-7",
    "flying-robot-frame",
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
}

local chemistry_or_electromagnetics_recipes = {
    "battery",
    
    "kr-lithium-sulfur-battery",
}

local electronics_with_fluid_recipes = {
    "speed-module-8",
    "speed-module-9",
    "efficiency-module-8",
    "efficiency-module-9",
    "productivity-module-8",
    "productivity-module-9",
    "quality-module-8",
    "quality-module-9",
    "electric-engine-unit",
    "processing-unit",
    "se-processing-unit-holmium",

    "kr-advanced-solar-panel",
    "kr-ai-core",
}

data_util.set_category_for_recipes("electronics", electronics_recipes)
data_util.set_category_for_recipes("chemistry-or-electromagnetics", chemistry_or_electromagnetics_recipes)
data_util.set_category_for_recipes("electronics-with-fluid", electronics_with_fluid_recipes)

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

    for _,recipe in pairs(electromagnetic_recipes) do
        data.raw.recipe[recipe]["additional_categories"] = {
            "electromagnetics"
        }
    end
end