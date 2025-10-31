local data_util = require("__sa-planets-pack__.data_util")

local science_packs = {
}

for _,v in pairs(science_packs) do
    if v then
        data_util.conditional_modify(v)
    end
end
