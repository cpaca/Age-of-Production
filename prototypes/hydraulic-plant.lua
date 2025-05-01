require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-hydraulic-plant"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
    { variation = 19, main_offset = util.by_pixel( 49.875,  43.875), shadow_offset = util.by_pixel( 49.875,  43.875), show_shadow = true }, 
  }
)

data:extend{
    {
        name = "aop-hydraulic-plant",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/hydraulic-plant.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-hydraulic-plant", amount=1}}
        },
        max_health = 350,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-hydraulic-plant"],
        collision_box = {{-1.6, -1.6}, {1.6, 1.6}},
        selection_box = {{-2, -2}, {2, 2}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"hydraulics", "hydraulics-or-chemistry", "hydraulics-or-organic", "hydraulics-or-chemistry-or-cryogenics"},
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
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 4 },
          drain = "50kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "1.5MW",
        heating_energy = "300kW",
        module_slots = 4,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-shadow.png",
                      priority = "high",
                      width = 1200,
                      height = 800,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 1,
                      shift = util.by_pixel(4, -12),
                      draw_as_shadow = true,
                      scale = 0.25,
                  },
                  {
                      priority = "high",
                      width = 280,
                      height = 320,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 1,
                      scale = 0.5,
                      shift = util.by_pixel(0, -14),
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          }
                      }
                  },
              }
          },
          recipe_not_set_tint = { primary = {r = 0.0, g = 0.6, b =  0.6, a = 1}},          
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 280,
                              height = 320,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 1,
                              scale = 0.5,
                              shift = util.by_pixel(0, -14),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 280,
                              height = 320,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 1,
                              scale = 0.5,
                              shift = util.by_pixel(0, -14),
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-emission-1.png",
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
                            width = 280,
                            height = 320,
                            frame_count = 60,
                            lines_per_file = 8,
                            animation_speed = 1,
                            scale = 0.5,
                            shift = util.by_pixel(0, -14),
                            stripes = {
                                {
                                    filename = "__Age-of-Production-Graphics__/graphics/entity/hydraulic-plant/hydraulic-plant-hr-color.png",
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/hydraulic-plant.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-hydraulic-plant-created",
              },
            }
          }
        },
      },
}