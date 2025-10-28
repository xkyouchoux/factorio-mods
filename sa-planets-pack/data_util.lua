local util = {}

function util.table_contains(table, value)
    if not table then return false end
    for _,v in pairs(table) do
        if v == value then return true end
    end
    return false
end

function util.conditional_modify(params)
    if not params then return end
    if not (params.type and params.name) then return end
    
    local type = data.raw[params.type]
    if type then
        local prototype = type[params.name]
        if prototype then
            for k,v in pairs(params) do
                prototype[k] = v
            end
        end
    end
end

function util.tech_add_ingredients_with_prerequisites(tech_name, ingredients)
    local tech = data.raw["technology"][tech_name]
    if not tech then return end
    if not ingredients then return end
    for _,name in pairs(ingredients) do
        if not util.table_contains(tech.prerequisites, name) then 
            table.insert(tech.prerequisites, name)
        end
        if not util.table_contains(tech.unit.ingredients, {name, 1}) then
            table.insert(tech.unit.ingredients, {name, 1})
        end
    end
end

function util.tech_add_prerequisites(tech_name, prerequisites)
    local tech = data.raw["technology"][tech_name]
    if not tech then return end
    if not prerequisites then return end
    for _,name in pairs(prerequisites) do
        if not util.table_contains(tech.prerequisites, name) then 
            table.insert(tech.prerequisites, name)
        end
    end
end

function util.tech_add_ingredients(tech_name, ingredients)
    local tech = data.raw["technology"][tech_name]
    if not tech then return end
    if not ingredients then return end
    for _,name in pairs(ingredients) do
        if not util.table_contains(tech.unit.ingredients, {name, 1}) then
            table.insert(tech.unit.ingredients, {name, 1})
        end
    end
end

return util