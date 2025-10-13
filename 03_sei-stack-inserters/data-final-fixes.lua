local data_util = require("__space-exploration__.data_util")

data.raw.technology["stack-inserter"].prerequisites = {"utility-science-pack", "bulk-inserter"}
data.raw.technology["stack-inserter"].unit.count = 200
data.raw.technology["stack-inserter"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
}

data.raw.technology["transport-belt-capacity-1"].prerequisites = {"se-biological-science-pack-2", "stack-inserter"}
data.raw.technology["transport-belt-capacity-1"].unit.count = 250
data.raw.technology["transport-belt-capacity-1"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"se-biological-science-pack-2", 1},
}

data.raw.technology["transport-belt-capacity-2"].prerequisites = {"se-biological-science-pack-4", "transport-belt-capacity-1"}
data.raw.technology["transport-belt-capacity-2"].unit.count = 500
data.raw.technology["transport-belt-capacity-2"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack", 1},
    {"se-biological-science-pack-4", 1},
}

if mods["aai-loaders"] and settings.startup["sei-add-stacking-to-aai-loaders"].value then
    for k,v in pairs(data.raw["loader-1x1"]) do
        if k:find("aai-") == 1 then
            v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
            v.adjustable_belt_stack_size = true
            v.wait_for_full_stack = true
        end
    end
end

if mods["Krastorio2"] then
    if settings.startup["sei-add-stacking-to-kr-loaders"].value then
        for k,v in pairs(data.raw["loader-1x1"]) do
            if k:find("kr-") == 1 then
                v.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
                v.adjustable_belt_stack_size = true
                v.wait_for_full_stack = true
            end
        end
    end

    if settings.startup["sei-add-stacking-to-kr-inserters"].value then
        data_util.tech_remove_prerequisites("kr-superior-inserters", {"bulk-inserter"})
        data_util.tech_add_prerequisites("kr-superior-inserters", {"stack-inserter"})

        data_util.conditional_modify({
            type = "inserter",
            name = "kr-superior-inserter",
            enter_drop_mode_if_held_stack_spoiled = true,
            wait_for_full_stack = true,
            wait_for_full_hand = true,
            max_belt_stack_size = 4,
            stack_size_bonus = 4,
            energy_per_movement = "53kJ",
            energy_per_rotation = "53kJ",
        })

        data_util.conditional_modify({
            type = "inserter",
            name = "kr-superior-long-inserter",
            enter_drop_mode_if_held_stack_spoiled = true,
            wait_for_full_stack = true,
            wait_for_full_hand = true,
            max_belt_stack_size = 4,
            stack_size_bonus = 4,
            energy_per_movement = "59kJ",
            energy_per_rotation = "59kJ",
        })
    end
end
