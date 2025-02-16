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
        name = "aop-quantum-stabilizer",
        type = "beacon",
        icon = "__Age-of-Production__/graphics/icons/quantum-stabilizer.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-quantum-stabilizer", amount=1}}
        },
        max_health = 3000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
        selection_box = {{-3, -3}, {3, 3}},
        --map_color = ei_data.colors.assembler,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        beacon_counter = "same_type",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "25MW",
        heating_energy = "800kW",
        module_slots = 8,
        supply_area_distance = 18,
        distribution_effectivity = 2,
        distribution_effectivity_bonus_per_quality_level = 0.5,
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
    close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
    animation = {
      layers = {
        {
          filename = "__Age-of-Production__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-shadow.png",
          priority = "high",
          width = 900,
          height = 420,
          frame_count= 1,
          line_length = 1,
          repeat_count = 100,
          animation_speed = 0.3,
          draw_as_shadow = true,
          scale = 0.5
      },
          {
              priority = "high",
              width = 410,
              height = 410,
              frame_count = 100,
              shift = util.by_pixel_hr(0, -16),
              animation_speed = 0.3,
              scale = 0.5,
              stripes = {
                  {
                      filename = "__Age-of-Production__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-2.png",
                      width_in_frames = 8,
                      height_in_frames = 5,
                  },
              },
          },
          {
              priority = "high",
              width = 410,
              height = 410,
              frame_count = 100,
              shift = util.by_pixel_hr(0, -16),
              draw_as_glow = true,
              scale = 0.5,
              animation_speed = 0.3,
              blend_mode = "additive",
              stripes = {
                  {
                      filename = "__Age-of-Production__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-emission-2.png",
                      width_in_frames = 8,
                      height_in_frames = 5,
                  },
              },
          },
      },
  },
  radius_visualisation_picture =
  {
    filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
    priority = "extra-high-no-scale",
    width = 10,
    height = 10
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
          sound = {filename = "__Age-of-Production__/sounds/quantum-stabilizer.ogg", volume = 0.2},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-quantum-stabilizer-created",
              },
            }
          }
        },
      }
}
         
        