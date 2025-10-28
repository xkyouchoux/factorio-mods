local data_util = require("__sa-planets-pack__.data_util")

data.raw["tool"]["cerysian-science-pack"].order = "j"

data.raw["space-connection"]["dea-dia-edge"].from = "asteroid-belt-outer-edge"

data_util.tech_add_ingredients_with_prerequisites("space-discovery-asteroid-belt", {"interstellar-science-pack"})

local interstellar_planets = {
    "planet-discovery-maraxsis",
    "planet-discovery-paracelsin",
    "planet-discovery-cubium",
    "system-discovery-dea-dia",
}

for _,v in pairs(interstellar_planets) do
    data_util.tech_add_prerequisites(v, {"space-discovery-asteroid-belt"})
end

local tiberium_techs = {
    "tiberium-thermal-research",
    "tiberium-chemical-research",
    "tiberium-nuclear-research",
    "tiberium-electromagnetic-research"
}

for _,v in pairs(tiberium_techs) do
    data_util.tech_add_ingredients(v, {"tiberium-science"})
end

data.raw["technology"]["nanite-science-pack"].muluna_adds_progress_to_exploration_science_pack = false
data.raw["technology"]["quantum-science-pack"].muluna_adds_progress_to_exploration_science_pack = false
data.raw["technology"]["anomaly-science-pack"].muluna_adds_progress_to_exploration_science_pack = false
data.raw["technology"]["ring-science-pack"].muluna_adds_progress_to_exploration_science_pack = false