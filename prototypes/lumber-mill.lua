require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-lumber-mill"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
    { variation = 18, main_offset = util.by_pixel( 85.25,  80.25), shadow_offset = util.by_pixel( 85.25,  80.25), show_shadow = true }, 
  }
) 

data:extend{
    {
        name = "aop-lumber-mill",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/lumber-mill.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-lumber-mill", amount=1}}
        },
        max_health = 450,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-lumber-mill"],
        collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"woodworking", "woodworking-or-organic", "woodworking-or-crafting", "woodworking-or-organic-or-assembling"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -3 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 3 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 3 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 },
          drain = "100kW",
        },
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        energy_usage = "100kW",
        heating_energy = "50kW",
        module_slots = 5,
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.25,
                      shift = util.by_pixel(0, -18),
                      draw_as_shadow = true,
                      scale = 0.45
                  },
                  {
                      priority = "high",
                      width = 525,
                      height = 557,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.25,
                      shift = util.by_pixel(0, -18),
                      scale = 0.45,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png",
                              width_in_frames = 8,
                              height_in_frames = 2
                          }
                      }
                  },
              }
          },
          working_visualisations = {
              {
                  fadeout = true,
                  animation = {
                      layers = {
                          {
                              priority = "high",
                              width = 525,
                              height = 557,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.25,
                              shift = util.by_pixel(0, -18),
                              scale = 0.45,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 525,
                              height = 557,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.25,
                              shift = util.by_pixel(0, -18),
                              scale = 0.45,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/lumber-mill/lumber-mill-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/lumber-mill.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-lumber-mill-created",
              },
            }
          }
        },
      },
}