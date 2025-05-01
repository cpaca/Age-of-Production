require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-biochemical-facility"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
    { variation = 25, main_offset = util.by_pixel(-90.375,  79.875), shadow_offset = util.by_pixel(-90.375,  79.875), show_shadow = true },
  }
)

data:extend{
    {
        name = "aop-biochemical-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biochemical-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-biochemical-facility", amount=1}}
        },
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-biochemical-facility"],
        collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"biochemistry", "biochemistry-or-organic", "biochemistry-or-organic-or-hand-crafting", "biochemistry-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"},
        crafting_speed = 3,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = -5 },
          drain = "160kW",
        },
        impact_category = "organic",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "5MW",
        heating_energy = "1000kW",
        module_slots = 5,
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 700,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 500,
                      height = 500,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-animation.png",
                              width_in_frames = 8,
                              height_in_frames = 8
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
                              width = 500,
                              height = 500,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/biochemical-facility/biochemical-facility-hr-animation.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                      }
                  }
              }
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/biochemical-facility.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-biochemical-facility-created",
              },
            }
          }
        },
      },
}