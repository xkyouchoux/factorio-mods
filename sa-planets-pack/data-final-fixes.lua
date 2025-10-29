local data_util = require("__sa-planets-pack__.data_util")

-- [nauvis]

-- [space]

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

-- tier 6 [promethium]

data_util.tech_add_ingredients("planet-discovery-skewer-shattered", {"promethium-science-pack"})

local science_packs = {
    -- tier 1 [nauvis/muluna]
    ["automation-science-pack"] = "a[tier-1]-a[automation-science-pack]",
    ["logistic-science-pack"] = "a[tier-1]-b[logistic-science-pack]",
    ["military-science-pack"] = "a[tier-1]-c[military-science-pack]",
    ["chemical-science-pack"] = "a[tier-1]-d[chemical-science-pack]",
    ["utility-science-pack"] = "a[tier-1]-e[utility-science-pack]",
    ["production-science-pack"] = "a[tier-1]-f[production-science-pack]",
    ["nuclear-science-pack"] = "a[tier-1]-g[nuclear-science-pack]",
    ["space-science-pack"] = "a[tier-1]-h[space-science-pack]",
    
    -- tier 2 planets
    ["electromagnetic-science-pack"] = "b[tier-2]-a[electromagnetic-science-pack]",
    ["agricultural-science-pack"] = "b[tier-2]-b[agricultural-science-pack]",
    ["metallurgic-science-pack"] = "b[tier-2]-c[metallurgic-science-pack]",
    ["biorecycling-science-pack"] = "b[tier-2]-d[biorecycling-science-pack]",
    ["nanite-science-pack"] = "b[tier-2]-e[nanite-science-pack]",
    ["cerysian-science-pack"] = "b[tier-2]-f[cerysian-science-pack]",
    ["tiberium-science"] = "b[tier-2]-g[tiberium-science]",

    -- tier 3 planets
    ["electrochemical-science-pack"] = "c[tier-3]-a[electrochemical-science-pack]",
    ["pelagos-science-pack"] = "c[tier-3]-b[pelagos-science-pack]",
    ["vanadium-science-pack"] = "c[tier-3]-c[vanadium-science-pack]",
    ["igrys-mineral-science-pack"] = "c[tier-3]-d[igrys-mineral-science-pack]",
    ["rubia-biofusion-science-pack"] = "c[tier-3]-e[rubia-biofusion-science-pack]",
    ["datacell-empty"] = "c[tier-3]-f[datacell-empty]",
    ["datacell-raw-data"] = "c[tier-3]-g[datacell-raw-data]",
    ["datacell-ai-model-data"] = "c[tier-3]-h[datacell-ai-model-data]",
    ["slp-sun-science-pack"] = "c[tier-3]-i[slp-sun-science-pack]",
    ["ring-science-pack"] = "c[tier-3]-j[ring-science-pack]",
    ["interstellar-science-pack"] = "c[tier-3]-k[interstellar-science-pack]",

    -- tier 4 planets
    ["cryogenic-science-pack"] = "d[tier-4]-a[cryogenic-science-pack]",
    ["hydraulic-science-pack"] = "d[tier-4]-b[hydraulic-science-pack]",
    ["galvanization-science-pack"] = "d[tier-4]-c[galvanization-science-pack]",
    ["insulation-science-pack"] = "d[tier-4]-d[insulation-science-pack]",
    ["thermodynamic-science-pack"] = "d[tier-4]-e[thermodynamic-science-pack]",
    ["datacell-solved-equation"] = "d[tier-4]-f[datacell-solved-equation]",
    ["quantum-science-pack"] = "d[tier-4]-g[quantum-science-pack]",
    ["anomaly-science-pack"] = "d[tier-4]-h[anomaly-science-pack]",

    -- tier 5 planets
    ["golden-science-pack"] = "e[tier-5]-a[golden-science-pack]",
    ["bioluminescent-science-pack"] = "e[tier-5]-b[bioluminescent-science-pack]",
    ["gas-manipulation-science-pack"] = "e[tier-5]-c[gas-manipulation-science-pack]",
    ["aerospace-science-pack"] = "e[tier-5]-d[aerospace-science-pack]",
    
    -- tier 6 promethium
    ["promethium-science-pack"] = "f[tier-6]-a[promethium-science-pack]",
    ["ske_heu_science_pack"] = "f[tier-6]-a[ske_heu_science_pack]",
    ["ske_hep_science_pack"] = "f[tier-6]-b[ske_hep_science_pack]",
    ["ske_hea_science_pack"] = "f[tier-6]-c[ske_hea_science_pack]",
    ["ske_hec_science_pack"] = "f[tier-6]-d[ske_hec_science_pack]",
    ["ske_hef_science_pack"] = "f[tier-6]-e[ske_hef_science_pack]",
    ["ske_antimatter_cell"] = "f[tier-6]-f[ske_antimatter_cell]",
}

for k,v in pairs(science_packs) do
    local science_pack = data.raw["tool"][k]
    if science_pack then
        science_pack.order = v
        local cubic_recipe = data.raw["recipe"][k.."-cubic"]
        if cubic_recipe then cubic_recipe.order = v end
    end
end
