local path_util = require("__sei-library__.path_util")
local data_util = require("__sei-library__.data_util")

local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__sei-library__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__sei-gleba-fruits__.prototypes.item-effects")

data.raw["item"]["bioflux"] = nil

local overgrowth_tiles = {}

for _,tile in pairs(data.raw["tile"]) do
    if tile.subgroup == "nauvis-tiles" or tile.subgroup == "alien-biome-tiles" then
        table.insert(overgrowth_tiles, tile.name)
    end
end

data:extend(item_effects.data)
data:extend({
    {
        type = "item",
        name = "yumako-seed",
        localised_name = {"item-name.yumako-seed"},
        localised_description = {"item-description.yumako-seed"},
        icon = path_util.space_age_path.."graphics/icons/yumako-seed.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-seed-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-seed-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-seed-3.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-seed-4.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "agriculture-processes",
        order = "a[seeds]-b[yumako-seed]",
        plant_result = "yumako-tree",
        place_result = "yumako-tree",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 10,
        weight = 10 * kg,
        fuel_category = "chemical",
        fuel_value = "4MJ"
    },
    {
        type = "item",
        name = "jellynut-seed",
        localised_name = {"item-name.jellynut-seed"},
        localised_description = {"item-description.jellynut-seed"},
        icon = path_util.space_age_path.."graphics/icons/jellynut-seed.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-seed-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-seed-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-seed-3.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-seed-4.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "agriculture-processes",
        order = "a[seeds]-c[jellynut-seed]",
        plant_result = "jellystem",
        place_result = "jellystem",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 10,
        weight = 10 * kg,
        fuel_category = "chemical",
        fuel_value = "4MJ"
    },
    {
        type = "capsule",
        name = "yumako",
        icon = path_util.space_age_path.."graphics/icons/yumako.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako.png",   scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/yumako-3.png", scale = 0.5, mipmap_count = 4 }
        },
        subgroup = "agriculture-processes",
        order = "b[agriculture]-c[yumako]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "chemical",
        fuel_value = "2MJ",
        stack_size = 50,
        weight = 1 * kg,
        --spoil_ticks = 60 * minute,
        --spoil_result = "spoilage",
        capsule_action = item_effects.yumako_regen
    },
    {
        type = "capsule",
        name = "jellynut",
        icon = path_util.space_age_path.."graphics/icons/jellynut.png",
        pictures =
        {
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-1.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-2.png", scale = 0.5, mipmap_count = 4 },
            { size = 64, filename = path_util.space_age_path.."graphics/icons/jellynut-3.png", scale = 0.5, mipmap_count = 4 },
        },
        subgroup = "agriculture-processes",
        order = "b[agriculture]-d[jellynut]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 50,
        weight = 1 * kg,
        --spoil_ticks = 60 * minute,
        --spoil_result = "spoilage",
        fuel_category = "chemical",
        fuel_value = "10MJ",
        capsule_action = item_effects.jellynut_speed
    },
    {
        type = "capsule",
        name = "yumako-mash",
        icon = path_util.space_age_path.."graphics/icons/yumako-mash.png",
        subgroup = "agriculture-products",
        order = "a[organic-processing]-b[yumako-mash]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "chemical",
        fuel_value = "1MJ",
        stack_size = 100,
        --spoil_ticks = 3 * minute,
        --spoil_result = "spoilage",
        weight = 0.5 * kg,
        capsule_action = item_effects.yumako_regen
    },
    {
        type = "capsule",
        name = "jelly",
        icon = path_util.space_age_path.."graphics/icons/jelly.png",
        subgroup = "agriculture-products",
        order = "a[organic-processing]-c[jelly]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "chemical",
        fuel_value = "1MJ",
        stack_size = 100,
        --spoil_ticks = 4 * minute,
        --spoil_result = "spoilage",
        weight = 0.5 * kg,
        capsule_action = item_effects.jellynut_speed
    },
    {
        type = "capsule",
        name = "bioflux",
        icon = path_util.space_age_path.."graphics/icons/bioflux.png",
        subgroup = "agriculture-products",
        order = "a[organic-processing]-b[bioflux]",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "food",
        fuel_value = "6MJ",
        stack_size = 100,
        --spoil_ticks = 2 * hour,
        --spoil_result = "spoilage",
        weight = 1 * kg,
        capsule_action = item_effects.bioflux_speed_and_regen
    },
    {
        type = "item",
        name = "artificial-yumako-soil",
        icon = path_util.space_age_path.."graphics/icons/artificial-yumako-soil.png",
        subgroup = "terrain",
        order = "c[landfill]-b[artificial-yumako-soil]",
        inventory_move_sound = item_sounds.landfill_inventory_move,
        pick_sound = item_sounds.landfill_inventory_pickup,
        drop_sound = item_sounds.landfill_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
            result = "artificial-yumako-soil",
            condition_size = 1,
            condition = {layers={ground_tile=true}},
            tile_condition = {},
        }
    },
    {
        type = "item",
        name = "overgrowth-yumako-soil",
        icon = path_util.space_age_path.."graphics/icons/overgrowth-yumako-soil.png",
        subgroup = "terrain",
        order = "c[landfill]-c[overgrowth-yumako-soil]",
        inventory_move_sound = item_sounds.landfill_inventory_move,
        pick_sound = item_sounds.landfill_inventory_pickup,
        drop_sound = item_sounds.landfill_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
            result = "overgrowth-yumako-soil",
            condition_size = 1,
            condition = {layers={}},
            tile_condition = overgrowth_tiles,
        }
    },
    {
        type = "item",
        name = "artificial-jellynut-soil",
        icon = path_util.space_age_path.."graphics/icons/artificial-jellynut-soil.png",
        subgroup = "terrain",
        order = "c[landfill]-d[artificial-jellynut-soil]",
        inventory_move_sound = item_sounds.landfill_inventory_move,
        pick_sound = item_sounds.landfill_inventory_pickup,
        drop_sound = item_sounds.landfill_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
            result = "artificial-jellynut-soil",
            condition_size = 1,
            condition = {layers={ground_tile=true}},
            tile_condition = {},
        }
    },
    {
        type = "item",
        name = "overgrowth-jellynut-soil",
        icon = path_util.space_age_path.."graphics/icons/overgrowth-jellynut-soil.png",
        subgroup = "terrain",
        order = "c[landfill]-e[overgrowth-jellynut-soil]",
        inventory_move_sound = item_sounds.landfill_inventory_move,
        pick_sound = item_sounds.landfill_inventory_pickup,
        drop_sound = item_sounds.landfill_inventory_move,
        stack_size = 100,
        place_as_tile =
        {
            result = "overgrowth-jellynut-soil",
            condition_size = 1,
            condition = {layers={}},
            tile_condition = overgrowth_tiles,
        }
    },
    {
        type = "item",
        name = "carbon-fiber",
        icon = path_util.space_age_path.."graphics/icons/carbon-fiber.png",
        subgroup = "agriculture-products",
        order = "a[organic-products]-e[carbon-fiber]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 100,
        weight = 2*kg,
        random_tint_color = item_tints.bluish_concrete
    },
})
