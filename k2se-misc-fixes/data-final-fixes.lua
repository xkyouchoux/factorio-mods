local data_util = require("__space-exploration__.data_util")

if data.raw.technology["aai-express-loader"] and data.raw.technology["aai-kr-advanced-loader"] then
    data_util.tech_add_prerequisites("aai-kr-advanced-loader", {"aai-express-loader"})
end

if data.raw.technology["aai-kr-advanced-loader"] and data.raw.technology["aai-kr-superior-loader"] then
    data_util.tech_add_prerequisites("aai-kr-superior-loader", {"aai-kr-advanced-loader"})
end

local crafting_categories = {
    ["character"] = data.raw.character.character.crafting_categories,
    ["god-controller"] = data.raw["god-controller"].default.crafting_categories
}

if mods["Krastorio2"] then
    data.raw["autoplace-control"]["kr-imersite"].hidden = true
    data.raw["autoplace-control"]["kr-imersite"].enabled = false
end