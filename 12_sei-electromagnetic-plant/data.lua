data.raw["assembling-machine"]["electromagnetic-plant"].effect_receiver.base_effect.productivity = settings.startup["sei-electromagnetic-plant-base-production-bonus"].value / 100

data.raw.item["electromagnetic-plant"].subgroup = "assembling"

data.raw.recipe["electromagnetic-plant"].category = "crafting"
data.raw.recipe["electromagnetic-plant"].ingredients = mods["Krastorio2"] and {
    {type = "item", name = "kr-imersium-beam", amount = 20},
    {type = "item", name = "kr-energy-control-unit", amount = 10},
    {type = "item", name = "se-quantum-processor", amount = 20},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "assembling-machine-3", amount = 1}
} or {
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "se-holmium-solenoid", amount = 10},
    {type = "item", name = "se-quantum-processor", amount = 20},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "assembling-machine-3", amount = 1}
}
