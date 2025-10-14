local result = require("__sei-library__.data_util")

function result.sub_sup_icons(icon_main, icon_left, icon_right)
    return result.sub_icons(icon_main, icon_left, {
        icon = icon_right.icon or icon_right,
        scale = icon_right.scale,
        shift = icon_right.shift or {10, -7}, 
        icon_size = icon_right.icon_size,
        draw_background = icon_right.draw_background,
    })
end

function result.create_casting_recipe(params)
    local name = "casting-"..params.name
    local item = data.raw["item"][params.item or params.name]
    local recipe = data.raw.["recipe"][params.recipe or params.name]
    if not item or not recipe or not params.icons then return end
    return {
        type = "recipe",
        name = "casting-"..params.name,
        icons = #params.icons == 1 and result.sub_icons(params.icon or item.icon, params.icons[1]) or 
            result.sub_icons(params.icon or item.icon, params.icons[1], {
                icon = params.icons[2].icon or params.icons[2],
                scale = params.icons[2].scale
                shift = params.icons[2].shift or {10, -7},
                icon_size = params.icons[2].icon_size,
                draw_background = params.icons[2].draw_background,
            }),
        category = "metallurgy",
        enabled = false,
        allow_productivity = params.allow_productivity or true,
        order = params.order or (recipe.order and recipe.order.."-casting") or (item.order and item.order.."-casting"),
        group = params.group or recipe.group,
        subgroup = params.subgroup or recipe.subgroup,
        energy_required = params.energy_required or recipe.energy_required,
        ingredients = params.ingredients,
        results = params.results or {type = item, name = item.name, amount = 1},
    }
end

function result.get_iron_cost(plates)
    return plates * 25
end

function result.get_copper_cost(plates)
    return plates * 25
end

function result.get_iron_cost_for_steel(plates)
    return plates * 35
end

return result