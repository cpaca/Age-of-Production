require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")
local function animationLayer()
    return {
        priority = "high",
        width = 270,
        height = 282,
        frame_count = 128,
        lines_per_file = 8,
        animation_speed = 1,
        shift = util.by_pixel(0, -8),
        scale = 0.5,
        stripes = {
            {
                filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-animation-1.png",
                width_in_frames = 8,
                height_in_frames = 8
            },
            {
                filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-animation-2.png",
                width_in_frames = 8,
                height_in_frames = 8
            }
        }
    }
  end


data:extend{
    {
        name = "aop-salvager",
        type = "furnace",
        icon = "__Age-of-Production-Graphics__/graphics/icons/salvager.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        fast_transfer_modules_into_module_slots_only = true,
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-salvager", amount=1}}
        },
        max_health = 1000,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["steel-furnace"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"recycling", "recycling-or-hand-crafting"},
        crafting_speed = 1,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 15 },
          drain = "300kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        vector_to_place_result = {2.35, -0.5},
        energy_usage = "5MW",
        heating_energy = "300kW",
        module_slots = 5,
        source_inventory_size = 1,
        result_inventory_size = 12,
        custom_input_slot_tooltip_key = "recycler-input-slot-tooltip",
        allowed_effects = {"consumption", "speed", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            quality = 1
          }
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-shadow.png",
                        priority = "high",
                        width = 1200,
                        height = 700,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 128,
                        animation_speed = 1,
                        shift = util.by_pixel(4, -8),
                        draw_as_shadow = true,
                        scale = 0.375
                    },
                    animationLayer()
                }
            },
            working_visualisations = {
                {
                    fadeout = true,
                    animation = {
                        layers = {
                            animationLayer(),
                            {
                                priority = "high",
                                draw_as_glow = true,
                                blend_mode = "additive",
                                width = 270,
                                height = 282,
                                frame_count = 128,
                                lines_per_file = 8,
                                animation_speed = 1,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/salvager/salvager-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            }
                        }
                    }
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
      sound = { filename = "__quality__/sound/recycler/recycler-loop.ogg", volume = 0.7 },
      sound_accents =
      {
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 14, audible_distance_modifier = 0.2 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-vox", 5, 0.2 )}, frame = 20, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-mechanic", 3, 0.3 )}, frame = 45, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-move", 5, 0.45 )}, frame = 60, audible_distance_modifier = 0.2 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-trash", 5, 0.6 )}, frame = 61, audible_distance_modifier = 0.3 },
        { sound = { variations = sound_variations("__quality__/sound/recycler/recycler-jaw-shut", 6, 0.3 )}, frame = 63, audible_distance_modifier = 0.6 },
      },
      max_sounds_per_type = 2,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-salvager-created",
              },
            }
          }
        },
      },
}