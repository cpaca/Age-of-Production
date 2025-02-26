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
      width = 540,
      height = 580,
      frame_count = 120,
      lines_per_file = 8,
      animation_speed = 0.15,
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 7
          }
      }
  }
end

data:extend{
    {
        name = "aop-smeltery",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/smeltery.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-smeltery", amount=1}}
        },
        max_health = 2000,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["foundry"],
        collision_box = {{-3.6, -3.6}, {3.6, 3.6}},
        selection_box = {{-4, -4}, {4, 4}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"advanced-metallurgy"},
        fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { -1.5, 3.5 } } }
    },
    {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 1.5, 3.5 } } }
    },
    {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 100,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { -1.5, -3.5 } } }
    },
    {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        secondary_draw_orders = { north = -1 },
        volume = 100,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 1.5, -3.5 } } }
    }
    },
        crafting_speed = 4,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 45 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "8MW",
        heating_energy = "500kW",
        module_slots = 8,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.25
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-shadow.png",
                      priority = "high",
                      width = 900,
                      height = 800,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 120,
                      animation_speed = 0.15,
                      draw_as_shadow = true,
                      scale = 0.5
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
                              width = 540,
                              height = 580,
                              frame_count = 120,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/smeltery/smeltery-hr-emission-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 7
                                  }
                              }
                          }
                      }
                  }
              }
          }
      },
            --[[{
        },
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
          sound = {filename = "__space-age__/sound/entity/foundry/foundry.ogg", volume = 0.7},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-smeltery-created",
              },
            }
          }
        },
      }
    }