local data_util = require("__sa-planets-pack__.data_util")

data_util.tech_add_ingredients_with_prerequisites("space-discovery-asteroid-belt", {"interstellar-science-pack"})
data_util.tech_add_ingredients("planet-discovery-cubium", {"interstellar-science-pack"})

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

data_util.tech_add_prerequisites("planet-discovery-sunorbit", {"metallurgic-science-pack"})

-- [interstellar]

data_util.tech_add_prerequisites("golden-science-pack", {"steam-recycler"})

data_util.tech_add_ingredients_with_prerequisites("cubic-science-pack-productivity-infinite", {
    "agricultural-science-pack",
    "golden-science-pack",
    "electrochemical-science-pack",
    "promethium-science-pack"
})

local golden_science_pack_techs = {
    "aop-electromechanics",
    "gold-heat-pipe",
    "gold-plate-productivity",
    "efficiency-module-4-S",
    "speed-module-4-S",
    "gold-railgun-turret",
    "worker-robots-storage-4",
    "hyper-inserter",
    "pentapod-egg-unrestricted",
    "productivity-module-4-S",
    "quality-module-4-S",
    "science-pack-productivity",
    "spaceship-scrap-recycling-productivity",
    "transport-belt-capacity-3-Secretas",
    "aop-advanced-recycling"
}

for _,v in pairs(golden_science_pack_techs) do
    data_util.tech_add_prerequisites(v, {"golden-science-pack"})
end

data_util.tech_add_ingredients_with_prerequisites("planet-discovery-mirandus", {"interstellar-science-pack"})
data_util.tech_add_prerequisites("planet-discovery-mirandus", {"rocket-turret"})

data_util.tech_add_ingredients_with_prerequisites("planet-discovery-nix", {"interstellar-science-pack"})
data_util.tech_add_prerequisites("planet-discovery-nix", {"rocket-turret"})

data_util.tech_add_ingredients_with_prerequisites("slp-solar-system-sun2", {"interstellar-science-pack"})