local data_util = require("__sa-planets-pack__.data_util")

local modules = {
    -- stationkeeping
    {
        type = "technology",
        name = "stationkeeping-module",
        icon = "__sa-planets-pack__/graphics/technology/stationkeeping-module-1.png",
        icon_size = 256,
        upgrade = true,
    },
    {
        type = "technology",
        name = "stationkeeping-module-2",
        icon = "__sa-planets-pack__/graphics/technology/stationkeeping-module-2.png",
        icon_size = 256,
        upgrade = true,
    },
    {
        type = "technology",
        name = "stationkeeping-module-3",
        icon = "__sa-planets-pack__/graphics/technology/stationkeeping-module-3.png",
        icon_size = 256,
        upgrade = true,
    },
    {
        type = "technology",
        name = "stationkeeping-module-4",
        icon = "__sa-planets-pack__/graphics/technology/stationkeeping-module-4.png",
        icon_size = 256,
        upgrade = true,
    },
    
    -- overclock
    {
        type = "technology",
        name = "overclock-module",
        icon = "__sa-planets-pack__/graphics/technology/overclock-module-1.png",
        icon_size = 256,
    },
    {
        type = "technology",
        name = "overclock-module-2",
        icon = "__sa-planets-pack__/graphics/technology/overclock-module-2.png",
        icon_size = 256,
    },
    {
        type = "technology",
        name = "overclock-module-3",
        icon = "__sa-planets-pack__/graphics/technology/overclock-module-3.png",
        icon_size = 256,
    },
}

for _,v in pairs(modules) do
    if v then
        data_util.conditional_modify(v)
    end
end

local speed_module_4 = table.deepcopy(data.raw["technology"]["speed-module-4-S"])
speed_module_4.name = "speed-module-4"
speed_module_4.icons = nil
speed_module_4.icon = "__sa-planets-pack__/graphics/technology/speed-module-4.png"
speed_module_4.icon_size = 256
speed_module_4.prerequisites = {"golden-science-pack", "speed-module-3"}
speed_module_4.upgrade = true
data.raw["technology"]["speed-module-4-S"] = nil

local efficiency_module_4 = table.deepcopy(data.raw["technology"]["efficiency-module-4-S"])
efficiency_module_4.name = "efficiency-module-4"
efficiency_module_4.icons = nil
efficiency_module_4.icon = "__sa-planets-pack__/graphics/technology/efficiency-module-4.png"
efficiency_module_4.icon_size = 256
efficiency_module_4.prerequisites = {"golden-science-pack", "efficiency-module-3"}
efficiency_module_4.upgrade = true
data.raw["technology"]["efficiency-module-4-S"] = nil

local productivity_module_4 = table.deepcopy(data.raw["technology"]["productivity-module-4-S"])
productivity_module_4.name = "productivity-module-4"
productivity_module_4.icons = nil
productivity_module_4.icon = "__sa-planets-pack__/graphics/technology/productivity-module-4.png"
productivity_module_4.icon_size = 256
productivity_module_4.prerequisites = {"golden-science-pack", "productivity-module-3"}
productivity_module_4.upgrade = true
data.raw["technology"]["productivity-module-4-S"] = nil

local quality_module_4 = table.deepcopy(data.raw["technology"]["quality-module-4-S"])
quality_module_4.name = "quality-module-4"
quality_module_4.icons = nil
quality_module_4.icon = "__sa-planets-pack__/graphics/technology/quality-module-4.png"
quality_module_4.icon_size = 256
quality_module_4.prerequisites = {"golden-science-pack", "productivity-module-3"}
quality_module_4.upgrade = true
data.raw["technology"]["quality-module-4-S"] = nil

data:extend({speed_module_4, efficiency_module_4, productivity_module_4, quality_module_4})

data_util.tech_remove_prerequisites("stationkeeping-module-4", {"efficiency-module-4-S", "speed-module-4-S"})
data_util.tech_add_prerequisites("stationkeeping-module-4", {"efficiency-module-4", "speed-module-4"})

data.raw["technology"]["rubia-efficiency-module4"] = nil
data.raw["technology"][require("__rubia__.lib.technology-lib").get_unknown_tech_name("rubia-efficiency-module4")] = nil
