if not SEI_SPOILAGE_ENABLED then return end

data_util.add_recipes_to_recipe_productivity("se-bio-sludge", {
    "se-bio-sludge-from-spoilage",
})

data_util.add_recipes_to_recipe_productivity("kr-coke", {
    "coke-from-spoilage",
})