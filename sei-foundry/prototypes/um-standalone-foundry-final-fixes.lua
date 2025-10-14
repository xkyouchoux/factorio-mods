if not mods["um-standalone-foundry"] then return end

local data_util = require("__sei-foundry__.data_util")

local recipes_to_fix ={
	"se-molten-iron",
	"se-iron-ingot",
	"se-steel-ingot",
	"se-molten-copper",
	"se-copper-ingot",
	"se-molten-beryllium",
	"se-beryllium-ingot",
	"se-molten-holmium",
	"se-holmium-ingot",
	"se-iridium-blastcake",
	"se-iridium-ingot",
}

for _,name in pairs(recipes_to_fix) do
    local recipe = data.raw["recipe"][name]
    if recipe and recipe.additional_categories then
        data_util.remove_from_table(recipe.additional_categories, "crafting-with-fluid-or-metallurgy")
        if #recipe.additional_categories == 0 then recipe.additional_categories = nil end
    end
end
