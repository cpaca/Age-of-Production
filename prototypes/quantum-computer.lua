require("util")
require("__base__/prototypes/entity/pipecovers")
require("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

data:extend {
    {
        name = "aop-quantum-computer",
        type = "lab",
        icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-computer.png",
        icon_size = 64,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = {
            mining_time = 0.5,
            results = { { type = "item", name = "aop-quantum-computer", amount = 1 } }
        },
        max_health = 5000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 0,
                max = 0
            }
        },
        collision_box = { { -2.6, -2.6 }, { 2.6, 2.6 } },
        selection_box = { { -3, -3 }, { 3, 3 } },
        --map_color = ei_data.colors.assembler,
        researching_speed = 20,
        inputs =
        {
            "automation-science-pack",
            "logistic-science-pack",
            "military-science-pack",
            "chemical-science-pack",
            "production-science-pack",
            "utility-science-pack",
            "space-science-pack",
            "metallurgic-science-pack",
            "agricultural-science-pack",
            "electromagnetic-science-pack",
            "cryogenic-science-pack",
            "promethium-science-pack"
        },
        science_pack_drain_rate_percent = 10,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "100MW",
        heating_energy = "500kW",
        module_slots = 10,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        open_sound = { filename = "__base__/sound/open-close/lab-open.ogg", volume = 0.6 },
        close_sound = { filename = "__base__/sound/open-close/lab-close.ogg", volume = 0.6 },
        icons_positioning =
        {
            { inventory_index = defines.inventory.lab_modules, shift = { 0, 1.6 } },
            { inventory_index = defines.inventory.lab_input,   shift = { 0, 0.4 }, max_icons_per_row = 6, separation_multiplier = 1 / 1.1 }
        },
        on_animation =
        {
            layers =
            {                  
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.5
                },         
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-emission-1.png",
                    blend_mode = "additive",
                    draw_as_glow = true,
                    width = 400,
                    height = 400,
                    frame_count = 60,
                    line_length = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 0),
                    scale = 0.5
                },                
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                    width = 700,
                    height = 600,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 60,
                    animation_speed = 0.5,
                    shift = util.by_pixel(13, 11),
                    scale = 0.5,
                    draw_as_shadow = true
                },   

            }
        },
        off_animation =
        {
            layers =
            {
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-animation-1.png",
                    width = 400,
                    height = 400,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 1.5),
                    scale = 0.5
                },
                {filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-computer/quantum-computer-hr-shadow.png",
                width = 700,
                height = 600,
                animation_speed = 0.5,
                shift = util.by_pixel(13, 11),
                draw_as_shadow = true,
                scale = 0.5
                }
            }
        },
        --[[{
                light = {
                type = "basic",
                intensity = 1,
                size = 15
                }
            }]]
        --},
        working_sound =
        {
            sound = { filename = "__space-age__/sound/entity/fusion/fusion-generator.ogg", volume = 0.9},
            apparent_volume = 0.3,
        },
        created_effect = {
            type = "direct",
            action_delivery = {
                type = "instant",
                source_effects = {
                    {
                        type = "script",
                        effect_id = "aop-quantum-computer-created",
                    },
                }
            }
        },
    }
}
