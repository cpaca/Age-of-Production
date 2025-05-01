require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-greenhouse"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true }, 
    { variation = 27, main_offset = util.by_pixel(-33,  61.875), shadow_offset = util.by_pixel(-33,  61.875), show_shadow = true },
  }
)

local function animationLayer()
  return {
      priority = "high",
      width = 340,
      height = 355,
      frame_count = 128,
      lines_per_file = 8,
      animation_speed = 0.15,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 8
          }
      }
  }
end

data:extend{
    {
        name = "aop-greenhouse",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/greenhouse.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-greenhouse", amount=1}}
        },
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-greenhouse"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"agriculture"},
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = -10, spores = 10 },
          drain = "100kW",
        },
        impact_category = "organic",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        fluid_boxes =
        {
          {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {-2, 2} }}
            },
            {
              production_type = "input",
              pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
              always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {0, 2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {2, 2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {-2, -2} }}
            },
            {
              production_type = "input",
              pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
              always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {0, -2} }}
            },
            {
              production_type = "input",
              pipe_covers = pipecoverspictures(),
              volume = 100,
              pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {2, -2} }}
            }
      },
        energy_usage = "100kW",
        heating_energy = "100kW", 
        module_slots = 2,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
            base_effect = {
              productivity = 0.50
            }
          },
          graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-shadow.png",
                        priority = "high",
                        width = 700,
                        height = 500,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 128,
                        animation_speed = 0.15,
                        shift = util.by_pixel(0, -8),
                        draw_as_shadow = true,
                        scale = 0.5
                    },
                    animationLayer()
                }
            },
            recipe_not_set_tint = { primary = {r = 0.6, g = 0.6, b =  0.5, a = 1}},
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
                                width = 340,
                                height = 355,
                                frame_count = 128,
                                lines_per_file = 8,
                                animation_speed = 0.15,
                                shift = util.by_pixel(0, -8),
                                scale = 0.5,
                                stripes = {
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-emission-1.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    },
                                    {
                                        filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-emission-2.png",
                                        width_in_frames = 8,
                                        height_in_frames = 8
                                    }
                                }
                            },
                            {
                              priority = "high",
                              fadeout = true,
                              blend_mode = "additive",
                              apply_recipe_tint = "primary",
                              width = 340,
                              height = 355,
                              frame_count = 128,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-color3-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/greenhouse/greenhouse-hr-color3-2.png",
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/greenhouse.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-greenhouse-created",
              },
            }
          }
        },
      },
}