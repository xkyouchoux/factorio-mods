local data_util = require("__sa-planets-pack__.data_util")

local modules = {
    -- speed
    {
        type = "module",
        name = "speed-module",
        order = "a[speed-module-1]",
        subgroup = "speed-module"
    },
    {
        type = "module",
        name = "speed-module-2",
        order = "b[speed-module-2]",
        subgroup = "speed-module"
    },
    {
        type = "module",
        name = "speed-module-3",
        order = "c[speed-module-3]",
        subgroup = "speed-module"
    },
    {
        type = "module",
        name = "speed-module-4-S",
        order = "d[speed-module-4-S]",
        subgroup = "speed-module"
    },
    {
        type = "module",
        name = "cerys-overclock-module",
        order = "e[cerys-overclock-module]",
        subgroup = "speed-module"
    },

    -- stationkeeping
    {
        type = "module",
        name = "stationkeeping-module",
        order = "a[stationkeeping-module-1]",
        subgroup = "stationkeeping-module"
    },
    {
        type = "recipe",
        name = "stationkeeping-module",
        order = nil,
        subgroup = nil
    },
    {
        type = "module",
        name = "stationkeeping-module-2",
        order = "b[stationkeeping-module-2]",
        subgroup = "stationkeeping-module"
    },
    {
        type = "module",
        name = "stationkeeping-module-3",
        order = "c[stationkeeping-module-3]",
        subgroup = "stationkeeping-module"
    },
    {
        type = "module",
        name = "stationkeeping-module-4",
        order = "d[stationkeeping-module-4]",
        subgroup = "stationkeeping-module"
    },
    
    -- efficiency
    {
        type = "module",
        name = "efficiency-module",
        order = "a[efficiency-module-1]",
        subgroup = "efficiency-module"
    },
    {
        type = "module",
        name = "efficiency-module-2",
        order = "b[efficiency-module-2]",
        subgroup = "efficiency-module"
    },
    {
        type = "module",
        name = "efficiency-module-3",
        order = "c[efficiency-module-3]",
        subgroup = "efficiency-module"
    },
    {
        type = "module",
        name = "rubia-efficiency-module4",
        order = "d[rubia-efficiency-module4]",
        subgroup = "efficiency-module"
    },
    {
        type = "module",
        name = "efficiency-module-4-S",
        order = "d[efficiency-module-4-S]",
        subgroup = "efficiency-module"
    },

    -- overclock
    {
        type = "module",
        name = "overclock-module",
        order = "a[overclock-module-1]",
        subgroup = "overclock-module"
    },
    {
        type = "module",
        name = "overclock-module-2",
        order = "b[overclock-module-2]",
        subgroup = "overclock-module"
    },
    {
        type = "module",
        name = "overclock-module-3",
        order = "c[overclock-module-3]",
        subgroup = "overclock-module"
    },

    -- productivity
    {
        type = "module",
        name = "productivity-module",
        order = "a[productivity-module-1]",
        subgroup = "productivity-module"
    },
    {
        type = "module",
        name = "productivity-module-2",
        order = "b[productivity-module-2]",
        subgroup = "productivity-module"
    },
    {
        type = "module",
        name = "productivity-module-3",
        order = "c[productivity-module-3]",
        subgroup = "productivity-module"
    },
    {
        type = "module",
        name = "productivity-module-4-S",
        order = "d[productivity-module-4-S]",
        subgroup = "productivity-module"
    },
    {
        type = "module",
        name = "cerys-radioactive-module-charged",
        order = "e[cerys-radioactive-module-charged]",
        subgroup = "productivity-module"
    },
    {
        type = "module",
        name = "cerys-radioactive-module-decayed",
        order = "f[cerys-radioactive-module-decayed]",
        subgroup = "productivity-module"
    },

    -- degradation
    {
        type = "module",
        name = "degradation-module",
        order = "a[degradation-module-1]",
        subgroup = "degradation-module"
    },
    {
        type = "module",
        name = "degradation-module-2",
        order = "b[degradation-module-2]",
        subgroup = "degradation-module"
    },
    {
        type = "module",
        name = "degradation-module-3",
        order = "c[degradation-module-3]",
        subgroup = "degradation-module"
    },
    
    -- quality
    {
        type = "module",
        name = "quality-module",
        order = "a[quality-module-1]",
        subgroup = "quality-module"
    },
    {
        type = "module",
        name = "quality-module-2",
        order = "b[quality-module-2]",
        subgroup = "quality-module"
    },
    {
        type = "module",
        name = "quality-module-3",
        order = "c[quality-module-3]",
        subgroup = "quality-module"
    },
    {
        type = "module",
        name = "quality-module-4-S",
        order = "d[quality-module-4-S]",
        subgroup = "quality-module"
    },
}

for _,v in pairs(modules) do
    if v then
        data_util.conditional_modify(v)
    end
end
