require("prototypes.um-standalone-space-age-lib-final-fixes")

local data_util = require("__sei-library__.data_util")

data_util.add_categories_to_character({
    "electronics",
    "pressing",
    "organic-or-hand-crafting",
})

data_util.add_categories_to_god_controller({
    "electronics",
    "pressing",
    "organic-or-hand-crafting",
})

data_util.add_categories_to_machines_with_category({
    "electronics",
    "pressing",
}, "crafting")

data_util.add_categories_to_machines_with_category({
    "cryogenics-or-assembling",
    "electronics-with-fluid",
    "electronics-or-assembling",
    "crafting-with-fluid-or-metallurgy",
    "metallurgy-or-assembling",
    "organic-or-hand-crafting",
    "organic-or-assembling",
}, "crafting-with-fluid")

data_util.add_categories_to_machines_with_category({
    "chemistry-or-cryogenics",
    "organic-or-chemistry",
}, "chemistry")

for _,inserter in pairs(data.raw.inserter) do
    if inserter.wait_for_full_hand then inserter.enter_drop_mode_if_held_stack_spoiled = true end
end

for _,recipe in pairs(data.raw.recipe) do
    for _,cannon in pairs({"se-delivery-cannon", "se-delivery-cannon-weapon"}) do
        for _,category in pairs(data.raw["assembling-machine"][cannon].crafting_categories) do
            if recipe.category == category then
                for _,ingredient in pairs(recipe.ingredients) do
                    if not (ingredient.name == "se-delivery-cannon-capsule" or ingredient.name == "se-delivery-cannon-weapon-capsule") then
                        local item = data.raw.item[ingredient.name]
                        if item and item.spoil_ticks and item.spoil_ticks > 0 then
                            data.raw.recipe[recipe.name] = nil
                            goto next_recipe
                        end
                        local capsule = data.raw.capsule[ingredient.name]
                        if capsule and capsule.spoil_ticks and capsule.spoil_ticks > 0 then
                            data.raw.recipe[recipe.name] = nil
                            goto next_recipe
                        end
                    end
                end
            end
        end
    end
    ::next_recipe::
end
