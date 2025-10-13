local result = require("__sei-library__.data_util")

function result.sub_sup_icons(icon_main, icon_left, icon_right)
    local results = {{ icon = icon_main, shift = {2, 0}, icon_size = 64 }}
    table.insert(results, { icon = icon_left.icon or icon_left,
                                scale = icon_left.scale or 0.25,
                                shift = icon_left.shift or {-7, -7},
                                icon_size = icon_left.icon_size or 64,
                                draw_background = icon_left.draw_background or true,
                            })

    table.insert(results, { icon = icon_right.icon or icon_right,
                                scale = icon_right.scale or 0.25,
                                shift = icon_right.shift or {10, -7},
                                icon_size = icon_right.icon_size or 64,
                                draw_background = icon_right.draw_background or true,
                            })    
    return results
end

function result.update_casting_recipe(recipe_name, icons, item)
    local recipe = "casting-" .. recipe_name
    if not data.raw.recipe[recipe] then return end
    if item == nil then item = recipe_name end
    data.raw.recipe[recipe].icon = nil
    if #icons == 2 then
        data.raw.recipe[recipe].icons = result.sub_sup_icons(data.raw.item[item].icon, icons[1], icons[2])
    else
        data.raw.recipe[recipe].icons = result.sub_icons(data.raw.item[item].icon, icons[1])
    end

    data.raw.recipe[recipe].order = data.raw.recipe[item].order and data.raw.recipe[item].order .. "-casting" 
        or data.raw.item[data.raw.recipe[item].results[1].name].order .. "-casting"
    data.raw.recipe[recipe].group = data.raw.recipe[item].group
    data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
    data.raw.recipe[recipe].energy_required = data.raw.recipe[item].energy_required
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