local path_util = require("__sei-library__.path_util")

local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__sei-library__.prototypes.entity.sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")

local util = require('util')

local rocket_turret_shift = -20

function rocket_turret_rising(inputs)
    return
    {
        layers =
        {
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-rising",
            {
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5,
            frame_count = 18,
            line_length = 18,
            run_mode = inputs.run_mode or "forward",
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-rising-glow",
            {
            priority = "medium",
            direction_count = 4,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5,
            frame_count = 18,
            line_length = 18,
            run_mode = inputs.run_mode or "forward",
            blend_mode = "additive",
            draw_as_light = true,
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-rising-mask",
            {
            flags = {"mask"},
            direction_count = 4,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5,
            frame_count = 18,
            line_length = 18,
            apply_runtime_tint = true,
            run_mode = inputs.run_mode or "forward",
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-rising-shadow",
            {
            direction_count = 4,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5,
            frame_count = 18,
            line_length = 18,
            draw_as_shadow = true,
            run_mode = inputs.run_mode or "forward",
            })
        }
    }
end

function rocket_turret_attack(inputs)
    return
    {
        layers =
        {
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-shooting",
            {
            slice = 1,
            direction_count = 64,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-shooting-glow",
            {
            slice = 1,
            direction_count = 64,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5,
            draw_as_light = true,
            blend_mode = "additive"
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-shooting-mask",
            {
            flags = {"mask"},
            apply_runtime_tint = true,
            slice = 1,
            direction_count = 64,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5
            }),
            path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-shooting-shadow",
            {
            draw_as_shadow = true,
            slice = 1,
            direction_count = 64,
            shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
            scale = 0.5
            })
        }
    }
end

data:extend({
    {
        type = "ammo-turret",
        name = "rocket-turret",
        icon = path_util.space_age_path.."graphics/icons/rocket-turret.png",
        flags = {"placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "rocket-turret"},
        max_health = 400,
        corpse = "rocket-turret-remnants",
        dying_explosion = "gun-turret-explosion",
        collision_box = {{-1.2, -1.2 }, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5 }, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        heating_energy = "50kW",
        rotation_speed = 0.005,
        preparing_speed = 0.08,
        preparing_sound =
        {
        variations = path_util.sa_sound_variations("sound/entity/rocket-turret/rocket-turret-activate", 2, 0.4),
        aggregation = {max_count = 2, remove = true, count_already_playing = true},
        },
        folding_sound =
        {
        variations = path_util.sa_sound_variations("sound/entity/rocket-turret/rocket-turret-deactivate", 2, 0.5),
        aggregation = {max_count = 2, remove = true, count_already_playing = true},
        },
        rotating_sound =
        {
        sound =
        {
            variations = {filename = path_util.space_age_path.."sound/entity/rocket-turret/rocket-turret-rotation-loop.ogg", volume = 0.15},
            aggregation = {max_count = 2, remove = true, count_already_playing = true},
        },
        stopped_sound =
        {
            variations = {filename = path_util.space_age_path.."sound/entity/rocket-turret/rocket-turret-rotation-stop.ogg", volume = 0.5},
            aggregation = {max_count = 1, remove = true, count_already_playing = true},
        },
        minimal_change_per_tick = 0.001,
        minimal_sound_duration_for_stopped_sound = 10
        },
        folding_speed = 0.08,
        inventory_size = 1,
        automated_ammo_count = 10,
        attacking_speed = 0.5,
        alert_when_attacking = true,
        circuit_connector = circuit_connector_definitions["rocket-turret"],
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        open_sound = sounds.turret_open,
        close_sound = sounds.turret_close,
        folded_animation = rocket_turret_rising({}),
        preparing_animation = rocket_turret_rising({}),
        prepared_animation = rocket_turret_attack({}),
        attacking_animation = rocket_turret_attack({}),
        folding_animation = rocket_turret_rising({run_mode = "backward"}),
        graphics_set =
        {
        base_visualisation =
        {
            animation =
            {
            layers =
            {
                path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-base",
                                    {
                                        priority = "high",
                                frame_count = 1,
                                        scale = 0.5,
                                        shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
                                    }),
                path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-base-mask",
                                    {
                                        flags = {"mask", "low-object"},
                                frame_count = 1,
                                apply_runtime_tint = true,
                                        scale = 0.5,
                                        shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
                                    }),
                path_util.sa_sprite_load("__sei-rocket-turret__/graphics/entity/rocket-turret/rocket-turret-base-shadow",
                                    {
                                        frame_count = 1,
                                scale = 0.5,
                                        shift = util.by_pixel( 0.0, 0.0+rocket_turret_shift),
                                draw_as_shadow = true,
                                    }),

            }
            }
        }
        },

        attack_parameters =
        {
        type = "projectile",
        ammo_category = "rocket",
        cooldown = 120,
        projectile_creation_distance = 1,
        projectile_center = {0, 0},
        min_range = 15,
        range = 36,
        sound =
        {
            variations = path_util.sa_sound_variations("sound/ammo/rocket-turret-launcher", 7, 0.7, volume_multiplier("main-menu", 1.8)),
            aggregation = { max_count = 4, remove = true, count_already_playing = true },
        },
        projectile_creation_offsets =
        {
            util.by_pixel(34, 25 - 32),
            util.by_pixel(-34, 25 - 32),
            util.by_pixel(31, 30 - 32),
            util.by_pixel(-31, 30 - 32),
            util.by_pixel(27, 35 - 32),
            util.by_pixel(-27, 35 - 32),
            -- 32 px is the rocket projectile height, so we need to subtract it from the y offset
        }
        },

        call_for_help_radius = 40,
        water_reflection =
        {
        pictures =
        {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-reflection.png",
            priority = "extra-high",
            width = 20,
            height = 32,
            shift = util.by_pixel(0, 40),
            variation_count = 1,
            scale = 5
        },
        rotate = false,
        orientation_to_variation = false
        }
    },
})
