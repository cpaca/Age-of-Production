require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

data:extend{
    {
        name = "aop-armory",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/armory.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-armory", amount=1}}
        },
        max_health = 750,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["assembling-machine"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"ammunition", "ammunition-or-crafting", "ammunition-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -2 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 2 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 2 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 5 },
          drain = "200kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "2MW",
        heating_energy = "500kW",
        module_slots = 5,
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-shadow.png",
                      priority = "high",
                      width = 600,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.4,
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 360,
                      height = 350,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.4,
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-2.png",
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
                              width = 360,
                              height = 350,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.4,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 360,
                              height = 350,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.4,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/armory/armory-hr-emission-2.png",
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
          sound = {filename = "__base__/sound/steam-turbine.ogg", volume = 0.65},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-armory-created",
              },
            }
          }
        },
      },
}