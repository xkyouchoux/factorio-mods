data.raw["reactor"]["heating-tower"].circuit_connector = circuit_connector_definitions["heating-tower"]

data_util.replace_or_add_ingredient("heating-tower", "boiler", "heat-exchanger", 2)
data_util.replace_or_add_ingredient("heating-tower", nil, "se-heat-shielding", 4)

data.raw.recipe["se-vitamelange-bloom"].result_is_always_fresh = true
data.raw.recipe["se-vitamelange-bloom"].reset_freshness_on_craft = true

data_util.tech_add_ingredients_with_prerequisites("heating-tower", {"production-science-pack"})

data_util.recipe_require_tech("spoilage-reprocessing", "se-processing-vitamelange")
data_util.recipe_require_tech("se-bio-sludge-from-spoilage", "se-space-growth-facility")

data.raw.capsule["raw-fish"].spoil_ticks = 453000
data.raw.capsule["raw-fish"].spoil_result = "spoilage"

data.raw.item["se-vitamelange-nugget"].spoil_ticks = 0.5 * hour
data.raw.item["se-vitamelange-nugget"].spoil_result = "spoilage"

data.raw.item["se-vitamelange-bloom"].spoil_ticks = 2 * hour
data.raw.item["se-vitamelange-bloom"].spoil_result = "spoilage"

if mods["Krastorio2"] then
    data_util.recipe_require_tech("coke-from-spoilage", "se-processing-vitamelange")
    data.raw.recipe["coke-from-spoilage"].order = data.raw.item["kr-coke"].order .. "-spoilage"
end