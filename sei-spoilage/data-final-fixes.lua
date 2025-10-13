local data_util = require('__sei-library__.data_util')

local fuel_categories = {
    "nutrients",
    "food",
    "processed-chemical",
    "kr-vehicle-fuel",
}

for k,v in pairs(fuel_categories) do
    if data.raw["fuel-category"][v] then
        table.insert(data.raw["reactor"]["heating-tower"].energy_source.fuel_categories, v)
    end
end

data.raw["reactor"]["heating-tower"].energy_source.effectivity = settings.startup["sei-heating-tower-effectivity"].value

data_util.recipe_require_tech("spoilage-reprocessing", "se-processing-vitamelange")
data_util.recipe_require_tech("se-bio-sludge-from-spoilage", "se-space-growth-facility")

data.raw.recipe["se-vitamelange-bloom"].result_is_always_fresh = true
data.raw.recipe["se-vitamelange-bloom"].reset_freshness_on_craft = true

for _,inserter in pairs(data.raw.inserter) do
    if inserter.wait_for_full_hand then inserter.enter_drop_mode_if_held_stack_spoiled = true end
end

if mods["Krastorio2"] then
    data_util.recipe_require_tech("coke-from-spoilage", "se-processing-vitamelange")
    data.raw.recipe["coke-from-spoilage"].order = data.raw.item["kr-coke"].order .. "-spoilage"
end

local spoilage_fuel_categories = {}
for k,v in pairs(data.raw.item) do
    if v.spoil_ticks and v.spoil_ticks > 0 and v.fuel_category then
        if not data_util.table_contains(spoilage_fuel_categories, v.fuel_category) then
            table.insert(spoilage_fuel_categories, v.fuel_category)
        end
    end
end

for prototype_type,_ in pairs(data.raw) do
    for prototype_name,_ in pairs(data.raw[prototype_type]) do
        local prototype = data.raw[prototype_type][prototype_name]
        if prototype.energy_source and prototype.energy_source.type == "burner" then
            for k,v in pairs(spoilage_fuel_categories) do
                if data_util.table_contains(prototype.energy_source.fuel_categories, v) then
                    if not prototype.energy_source.burnt_inventory_size or prototype.energy_source.burnt_inventory_size == 0 then
                        prototype.energy_source.burnt_inventory_size = 1
                    end
                end
            end
        end
    end
end

local function get_or_create_spoilage_capsule(resource)
    local type = resource.type or "item"
    if data.raw[type][resource.name] then
        local base = data.raw[type][resource.name]
        local amount = resource.amount
        local capsule_name = "se-delivery-cannon-pack-" .. resource.name
        if data.raw.recipe[capsule_name] and data.raw.recipe[capsule_name].ingredients[2].amount == amount then return resource.name end
        capsule_name = capsule_name .. "-" .. tostring(resource.amount)
        if data.raw.recipe[capsule_name] and data.raw.recipe[capsule_name].ingredients[2].amount == amount then return resource.name .. "-" .. tostring(resource.amount) end
        capsule_name = resource.name .. "-" .. tostring(resource.amount)
        local order = ""
        local o_subgroup = base.subgroup and data.raw["item-subgroup"][base.subgroup] or nil
        local o_group = o_subgroup and data.raw["item-group"][o_subgroup.group] or nil
        if o_group then
        order = (o_group.order or o_group.name) .. "-|-" .. (o_subgroup.order or o_subgroup.name) .. "-|-"
        end
        order = order .. (base.order or base.name)
        if not data.raw["item-subgroup"][base.subgroup.."-delivery-cannon-capsules"] then
        data:extend({
            {
            type = "item-subgroup",
            name = base.subgroup.."-delivery-cannon-capsules",
            group = o_subgroup and o_subgroup.group,
            order = (o_subgroup and o_subgroup.order and o_subgroup.order or "a").."-b",
            }
        })
        end

        data:extend({
        {
            type = "item",
            name = data_util.mod_prefix .. "delivery-cannon-package-"..capsule_name,
            icons = data_util.add_icon_to_stack({{
                icon = "__space-exploration-graphics__/graphics/icons/delivery-cannon-capsule.png",
                icon_size = 64,
            }}, base, {scale = 0.5}),
            order = order,
            flags = {},
            hidden = true,
            subgroup = base.subgroup.."-delivery-cannon-capsules",
            spoil_ticks = base.spoil_ticks,
            spoil_result = base.spoil_result and get_or_create_spoilage_capsule({name = base.spoil_result, type = type, amount = amount}),
            spoil_to_trigger_result = base.spoil_to_trigger_result,
            stack_size = 1,
            localised_name = {"", {"item-name.se-delivery-cannon-capsule-packed", {type.."-name."..resource.name}}, {"item-name.sei-spoilage-capsule-ending", tostring(amount)}, }
        },
        {
            type = "recipe",
            name = data_util.mod_prefix .. "delivery-cannon-pack-" .. capsule_name,
            subgroup = base.subgroup.."-delivery-cannon-capsules",
            icons = data_util.add_icons(base.icons or base.icon,
                                        data.raw.item[data_util.mod_prefix.."delivery-cannon-capsule"]),
            enabled = true,
            energy_required = 5,
            ingredients = {
                { type = "item", name = data_util.mod_prefix .. "delivery-cannon-capsule", amount = 1 },
                {
                type = (type == 'fluid') and 'fluid' or 'item',
                name = resource.name,
                amount = amount,
                ignored_by_stats = amount, -- Completely hide from production statistics, without hiding the consumpttion of the capsule itself
                },
            },
            results = {{
                type = "item",
                name = data_util.mod_prefix .. "delivery-cannon-package-"..capsule_name,
                amount = 1,
            }},
            requester_paste_multiplier = 1,
            always_show_made_in = false,
            category = "delivery-cannon",
            hide_from_player_crafting = true,
            localised_name = {"item-name.se-delivery-cannon-capsule-packed", base.localised_name or {type.."-name."..resource.name}},
            allow_decomposition = false
        },
        })
        return capsule_name
    end
end

local DEBUG = false

if DEBUG then 
    data.raw.item["se-vitamelange-nugget"].spoil_ticks = 0.5 * minute

    for _,resource in pairs(se_delivery_cannon_recipes) do
        local type = resource.type or "item"
        if data.raw[type][resource.name] and data.raw.recipe["se-delivery-cannon-pack-" .. resource.name] then
            local base = data.raw[type][resource.name]
            local capsule_recipe = data.raw.recipe["se-delivery-cannon-pack-" .. resource.name]
            if base.spoil_ticks and base.spoil_ticks > 0 then
                if base.spoil_to_trigger_result then
                    capsule_recipe.ingredients = {
                        {type = "item", name = "se-delivery-cannon-capsule", amount = 1},
                        {type = "item", name = base.name, amount = base.spoil_to_trigger_result.items_per_trigger}
                    }
                end
                data_util.conditional_modify({
                    type = "item",
                    name = "se-delivery-cannon-package-" .. resource.name,
                    spoil_ticks = base.spoil_ticks,
                    spoil_to_trigger_result = base.spoil_to_trigger_result,
                    spoil_result = base.spoil_result and "se-delivery-cannon-package-" .. get_or_create_spoilage_capsule({name = base.spoil_result, type = type, amount = capsule_recipe.ingredients[2].amount})
                })
            end
        end
    end
else
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
                        end
                    end
                end
            end
        end
        ::next_recipe::
    end
end