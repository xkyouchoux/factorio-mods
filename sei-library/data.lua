require("prototypes.particles")
require("prototypes.entity.circuit-network")

require("base-data-updates")

-- Required to load space-travel feature flag without space age enabled
if not data.raw.tile["empty-space"] then
    local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
    empty_space.name = "empty-space"
    data:extend{empty_space}
end
