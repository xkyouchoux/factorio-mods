if not mods["sei-gleba-fruits"] then return end

local data_util = require("__sei-library__.data_util")

data_util.conditional_modify({
    type = "item",
    name = "se-vitamelange-nugget",
    spoil_ticks = 0,
    spoil_result = nil,
})

data_util.conditional_modify({
    type = "item",
    name = "se-vitamelange-bloom",
    spoil_ticks = 0,
    spoil_result = nil,
})

data_util.conditional_modify{
    type = "capsule",
    name = "yumako",
    spoil_ticks = 60 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "jellynut",
    spoil_ticks = 60 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "yumako-mash",
    spoil_ticks = 3 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "jelly",
    spoil_ticks = 4 * minute,
    spoil_result = "spoilage",
}

data_util.conditional_modify{
    type = "capsule",
    name = "bioflux",
    spoil_ticks = 2 * hour,
    spoil_result = "spoilage",
}
