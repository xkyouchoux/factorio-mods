local data_util = require("__space-exploration__.data_util")

local science_to_add_automation_science = {
    "kr-crusher",
    "kr-stone-processing",
    "steam-power",
    "kr-greenhouse",
    "kr-decorations"
}

for _,science in pairs(science_to_add_automation_science) do
    data_util.tech_add_ingredients(science, {"automation-science-pack"})
end

data_util.tech_add_prerequisites("kr-crusher", {"automation-science-pack"})

data_util.tech_remove_prerequisites("kr-greenhouse", {"steam-power"})
data_util.tech_add_prerequisites("kr-greenhouse", {"basic-fluid-handling"})

local essential_techs = {
    "kr-automation-core",
    "automation-science-pack",
    "fuel-processing",
    "electricity",
    "basic-fluid-handling",
    "kr-crusher",
    "kr-stone-processing",
    "kr-greenhouse"
}

for _,tech in pairs(essential_techs) do
    data.raw["technology"][tech].ignore_tech_cost_multiplier = true
end

data_util.recipe_require_tech("se-kr-rare-metal-electric-motor", "kr-rare-metal-processing")