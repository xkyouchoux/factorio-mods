if not mods["um-standalone-electromagnetic-plant"] then return end

local data_util = require("__sei-foundry__.data_util")

local recipes_to_fix = {
    "electronic-circuit",
	"electronic-circuit-wood",
	"advanced-circuit",
	"processing-unit",
	"se-processing-unit-holmium",
	"se-empty-data",
	"speed-module",
	"speed-module-2",
	"speed-module-3",
	"speed-module-4",
	"speed-module-5",
	"speed-module-6",
	"speed-module-7",
	"speed-module-8",
	"speed-module-9",
	"productivity-module",
	"productivity-module-2",
	"productivity-module-3",
	"productivity-module-4",
	"productivity-module-5",
	"productivity-module-6",
	"productivity-module-7",
	"productivity-module-8",
	"productivity-module-9",
	"efficiency-module",
	"efficiency-module-2",
	"efficiency-module-3",
	"efficiency-module-4",
	"efficiency-module-5",
	"efficiency-module-6",
	"efficiency-module-7",
	"efficiency-module-8",
	"efficiency-module-9",
}

for _,name in pairs(recipes_to_fix) do
    local recipe = data.raw["recipe"][name]
    if recipe and recipe.additional_categories then
        data_util.remove_from_table(recipe.additional_categories, "electromagnetics")
        if #recipe.additional_categories == 0 then recipe.additional_categories = nil end
    end
end
