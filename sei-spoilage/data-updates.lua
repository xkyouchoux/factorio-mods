local data_util = require('__space-exploration__.data_util')

for _,inserter in pairs(data.raw.inserter) do
    if inserter.wait_for_full_hand then inserter.enter_drop_mode_if_held_stack_spoiled = true end
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
                        prototype.energy_source.burnt_inventory_size = prototype.energy_source.fuel_inventory_size
                    end
                end
            end
        end
    end
end