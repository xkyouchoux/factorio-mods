local zinc_tank_1x1 = table.deepcopy(data.raw["storage-tank"]["zith-storage-tank-1x1"])
local zinc_tank_2x2 = table.deepcopy(data.raw["storage-tank"]["zith-storage-tank-2x2"])
local zinc_tank_3x4 = table.deepcopy(data.raw["storage-tank"]["zith-storage-tank-3x4"])
local zinc_tank_5x5 = table.deepcopy(data.raw["storage-tank"]["zith-storage-tank-5x5"])

local function update_tank_entity(storage_tank_entity, locale_ext) 
    storage_tank_entity.name = "zinc-fluid-tank-"..locale_ext
    storage_tank_entity.localised_description = data.raw["storage-tank"]["zinc-storage-tank"].localised_description
    storage_tank_entity.minable.result = storage_tank_entity.name
    storage_tank_entity.max_health = storage_tank_entity.max_health * 2
    storage_tank_entity.fluid_box.volume = storage_tank_entity.fluid_box.volume * 2
    storage_tank_entity.fluid_box.pipe_covers = data.raw["storage-tank"]["zinc-storage-tank"].fluid_box.pipe_covers
    if storage_tank_entity.pictures.picture.sheets then
        storage_tank_entity.pictures.picture.sheets[1].tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
    else
        storage_tank_entity.pictures.picture.south.layers[1].tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
        storage_tank_entity.pictures.picture.north.layers[1].tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
        storage_tank_entity.pictures.picture.east.layers[1].tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
        storage_tank_entity.pictures.picture.west.layers[1].tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
    end
    storage_tank_entity.heating_energy = nil
end

update_tank_entity(zinc_tank_1x1, "1x1")
update_tank_entity(zinc_tank_2x2, "2x2")
update_tank_entity(zinc_tank_3x4, "3x4")
update_tank_entity(zinc_tank_5x5, "5x5")

local zinc_tank_1x1_item = table.deepcopy(data.raw["item"]["zith-storage-tank-1x1"])
local zinc_tank_2x2_item = table.deepcopy(data.raw["item"]["zith-storage-tank-2x2"])
local zinc_tank_3x4_item = table.deepcopy(data.raw["item"]["zith-storage-tank-3x4"])
local zinc_tank_5x5_item = table.deepcopy(data.raw["item"]["zith-storage-tank-5x5"])

local function update_storage_tank_item(storage_tank_item, locale_ext)
    storage_tank_item.name = "zinc-fluid-tank-"..locale_ext
    storage_tank_item.localised_description = data.raw["item"]["zinc-storage-tank"].localised_description
    storage_tank_item.icons = {
        {
            icon = storage_tank_item.icon,
            icon_size = storage_tank_item.icon_size,
            tint = { r = 0.7, g = 0.87, b = 0.79, a = 1 }
        }
    }
    storage_tank_item.icon = nil
    storage_tank_item.order = data.raw["item"]["zinc-storage-tank"].order .."-"..storage_tank_item.order
    storage_tank_item.subgroup = data.raw["item"]["zinc-storage-tank"].subgroup
    storage_tank_item.weight = math.min(storage_tank_item.weight * 50, 1000000)
    storage_tank_item.place_result = storage_tank_item.name
    default_import_location = "paracelsin"
end

update_storage_tank_item(zinc_tank_1x1_item, "1x1")
update_storage_tank_item(zinc_tank_2x2_item, "2x2")
update_storage_tank_item(zinc_tank_3x4_item, "3x4")
update_storage_tank_item(zinc_tank_5x5_item, "5x5")

data:extend({
    zinc_tank_1x1, 
    zinc_tank_2x2, 
    zinc_tank_3x4, 
    zinc_tank_5x5,
    zinc_tank_1x1_item,
    zinc_tank_2x2_item,
    zinc_tank_3x4_item,
    zinc_tank_5x5_item,
    {
        type = "recipe",
        name = "zinc-fluid-tank-1x1",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "zinc-plate", amount = 5},
            {type = "item", name = "zinc-rivets", amount = 5},
            {type = "item", name = "zinc-pipe", amount = 1},
            {type = "fluid", name = "molten-iron", amount = 6},
            {type = "item", name = "galvanized-steel-plate", amount = 2},
        },
        results = {{type="item", name="zinc-fluid-tank-1x1", amount=1}},
        allow_productivity = false,
        surface_conditions = {{property = "pressure", min = 5300, max = 5300}},
        category = "mechanics",
        auto_recycle = true
    },
    {
        type = "recipe",
        name = "zinc-fluid-tank-2x2",
        energy_required = 7.5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "zinc-plate", amount = 15},
            {type = "item", name = "zinc-rivets", amount = 15},
            {type = "item", name = "zinc-pipe", amount = 2},
            {type = "fluid", name = "molten-iron", amount = 18},
            {type = "item", name = "galvanized-steel-plate", amount = 4},
        },
        results = {{type="item", name="zinc-fluid-tank-2x2", amount=1}},
        allow_productivity = false,
        surface_conditions = {{property = "pressure", min = 5300, max = 5300}},
        category = "mechanics",
        auto_recycle = true
    },
    {
        type = "recipe",
        name = "zinc-fluid-tank-3x4",
        energy_required = 25,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "zinc-plate", amount = 24},
            {type = "item", name = "zinc-rivets", amount = 24},
            {type = "item", name = "zinc-pipe", amount = 12},
            {type = "fluid", name = "molten-iron", amount = 72},
            {type = "item", name = "galvanized-steel-plate", amount = 12},
        },
        results = {{type="item", name="zinc-fluid-tank-3x4", amount=1}},
        allow_productivity = false,
        surface_conditions = {{property = "pressure", min = 5300, max = 5300}},
        category = "mechanics",
        auto_recycle = true
    },
    {
        type = "recipe",
        name = "zinc-fluid-tank-5x5",
        energy_required = 30,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "zinc-plate", amount = 40},
            {type = "item", name = "zinc-rivets", amount = 40},
            {type = "item", name = "zinc-pipe", amount = 20},
            {type = "fluid", name = "molten-iron", amount = 120},
            {type = "item", name = "galvanized-steel-plate", amount = 40},
        },
        results = {{type="item", name="zinc-fluid-tank-5x5", amount=1}},
        allow_productivity = false,
        surface_conditions = {{property = "pressure", min = 5300, max = 5300}},
        category = "mechanics",
        auto_recycle = true
    },
})

for _,recipe in pairs({"zinc-fluid-tank-1x1", "zinc-fluid-tank-2x2", "zinc-fluid-tank-3x4", "zinc-fluid-tank-5x5"}) do
    table.insert(data.raw["technology"]["zinc-piping"].effects, {
        type = "unlock-recipe",
        recipe = recipe
    })
end
