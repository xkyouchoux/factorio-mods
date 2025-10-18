if not (settings.startup["sei-captive-biters-enable-spoilage"].value or SEI_FORCE_SPOILAGE) then return end

local data_util = require("__sei-library__.data_util")

data_util.conditional_modify({
    type = "item",
    name = "bioflux",
    spoil_ticks = 2 * hour,
    spoil_result = "spoilage",
})
