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
      height = 310,
      frame_count = 80,
      lines_per_file = 8,
      animation_speed = 0.5,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 8
          }
      }
  }
end

data:extend{
    {
        name = "aop-mineral-synthesizer",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-synthesizer.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-mineral-synthesizer", amount=1}}
        },
        max_health = 700,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["chemical-plant"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"synthesis", "synthesis-or-chemistry", "synthesis-or-crafting-with-fluid", "synthesis-or-cryogenics-or-chemistry"},
        crafting_speed = 1.5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 10 },
          drain = "100kW",
        },
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        fluid_boxes = {
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.south, flow_direction = "input-output", position = {-0.5, 1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.east, flow_direction = "input-output", position = {1.5, -0.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "input",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.north, flow_direction = "input-output", position = {0.5, -1.5}}},
                secondary_draw_orders = {north = -1},
            },
            {
                production_type = "output",
                pipe_picture = require("__space-age__.prototypes.entity.electromagnetic-plant-pictures").pipe_pictures,
                pipe_covers = pipecoverspictures(),
                volume = 100,
                pipe_connections = {{direction = defines.direction.west, flow_direction = "input-output", position = {-1.5, 0.5}}},
                secondary_draw_orders = {north = -1},
            },
        },
        energy_usage = "2MW",
        heating_energy = "300kW", 
        module_slots = 4,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
            base_effect = {
              productivity = 0.20
            }
          },
          graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-shadow.png",
                        priority = "high",
                        width = 1200,
                        height = 700,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 80,
                        animation_speed = 0.5,
                        shift = util.by_pixel(4, -8),
                        draw_as_shadow = true,
                        scale = 0.25
                    },
                    animationLayer()
                }
            },
            recipe_not_set_tint = { primary = {r = 0, g = 0, b =  0, a = 1}},
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
                                height = 310,
                                frame_count = 80,
                                lines_per_file = 8,
                                animation_speed = 0.5,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            },
                            {
                              priority = "high",
                              fadeout = true,
                              apply_recipe_tint = "primary",
                              width = 270,
                              height = 310,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.5,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-color2-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/mineral-synthesizer/mineral-synthesizer-hr-color2-2.png",
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/arc-furnace.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-mineral-synthesizer-created",
              },
            }
          }
        },
      },
}