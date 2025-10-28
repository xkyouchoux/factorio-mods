local data_util = require("__sa-planets-pack__.data_util")

data_util.tech_add_prerequisites("golden-science-pack", {"steam-recycler"})

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
