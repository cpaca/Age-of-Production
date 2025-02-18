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
      width = 590,
      height = 640,
      frame_count = 80,
      lines_per_file = 8,
      animation_speed = 0.15,
      shift = util.by_pixel(0, -8),
      scale = 0.5,
      stripes = {
          {
              filename = "__Age-of-Production__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-animation-1.png",
              width_in_frames = 8,
              height_in_frames = 8
          },
          {
              filename = "__Age-of-Production__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-animation-2.png",
              width_in_frames = 8,
              height_in_frames = 2
          }
      }
  }
end


data:extend{
    {
        name = "aop-electromechanic-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production__/graphics/icons/electromechanic-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-electromechanic-facility", amount=1}}
        },
        max_health = 5000,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["assembling-machine"],
        collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"electromechanics", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "organic-or-electromechanics"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1, -4 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1, -4 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1, 4 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1, 4 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 10 },
          drain = "1MW",
        },
        impact_category = "metal",
        open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
        energy_usage = "50MW",
        heating_energy = "1000kW",
        module_slots = 10,
        source_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            quality = 5
          }
        },
        graphics_set = {
          animation = {
              layers = {
                  {
                      filename = "__Age-of-Production__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-shadow.png",
                      priority = "high",
                      width = 1200,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -8),
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
                              width = 590,
                              height = 640,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -8),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/electromechanic-facility/electromechanic-facility-hr-emission-2.png",
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
          sound = {filename = "__space-age__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg", volume = 0.8},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-electromechanic-facility-created",
              },
            }
          }
        },
      }
    }
