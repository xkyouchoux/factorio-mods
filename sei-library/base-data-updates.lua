local data_util = require("__sei-library__.data_util")

if mods["um-standalone-space-age-lib"] then
    local recipes_to_remove_additional_categories = {
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
        "efficiency-module-9"
    }

    for _,recipe in pairs(recipes_to_remove_additional_categories) do
        if data.raw.recipe[recipe] then data.raw.recipe[recipe]["additional_categories"] = nil end
    end

    data_util.set_category_for_recipes("crafting", {
        "discharge-defense-equipment", -- base
    })
end