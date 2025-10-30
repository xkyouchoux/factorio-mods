local util = {}

function util.table_contains(_table, value)
    if not _table then return false end
    for _,v in pairs(_table) do
        if v == value then return true end
    end
    return false
end

function util.conditional_modify(params)
    if not params then return end
    if not (params.type and params.name) then return end
    
    if data.raw[params.type] then
        prototype = data.raw[params.type][params.name]
        if prototype then
            for k,v in pairs(params) do
                prototype[k] = v
            end
        end
    end
end

function util.tech_remove_prerequisites(tech_name, prerequisites)
    local tech = data.raw["technology"][tech_name]
    if tech and tech.prerequisites then
        for _,v in pairs(prerequisites) do
            for i = #tech.prerequisites, 1, -1 do
                if tech.prerequisites[i] == v then
                    table.remove(tech.prerequisites, i)
                end
            end
        end
    end
end

function util.tech_has_ingredient(tech_name, ingredient_name)
    local tech = data.raw["technology"][tech_name]
    if tech and tech.unit and tech.unit.ingredients then
        for _,ingredient in pairs(tech.unit.ingredients) do
            if ingredient[1] == ingredient_name then return true end
        end
    end
    return false
end

function util.tech_add_prerequisites_sub(tech, prerequisites)
    if not tech.prerequisites then tech.prerequisites = {} end
    for _,name in pairs(prerequisites) do
        if not util.table_contains(tech.prerequisites, name) then
            table.insert(tech.prerequisites, name)
        end
    end
end

function util.tech_add_ingredients_sub(tech, ingredients)
    for _,name in pairs(ingredients) do
        if not util.table_contains(tech.unit.ingredients, {name, 1}) then
            table.insert(tech.unit.ingredients, {name, 1})
        end
    end
end

function util.tech_add_ingredients_with_prerequisites(tech_name, ingredients, transform)
    local tech = data.raw["technology"][tech_name]
    if tech then
        util.tech_add_ingredients_sub(tech, ingredients)
        local prerequisites = ingredients
        if transform then
            for k,v in pairs(prerequisites) do
                if transform[v] then prerequisites[k] = transform[v] end
            end
        end
        util.tech_add_prerequisites_sub(tech, prerequisites)
    end
end

function util.tech_add_prerequisites(tech_name, prerequisites)
    local tech = data.raw["technology"][tech_name]
    if tech then
        util.tech_add_prerequisites_sub(tech, prerequisites)
    end
end

function util.tech_add_ingredients(tech_name, ingredients)
    local tech = data.raw["technology"][tech_name]
    if tech then
        util.tech_add_ingredients_sub(tech, ingredients)
    end
end

return util