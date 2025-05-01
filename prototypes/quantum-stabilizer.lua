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
        icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-stabilizer.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-quantum-stabilizer", amount=1}}
        },
        max_health = 800,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
        selection_box = {{-3, -3}, {3, 3}},
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
        allowed_effects = {"consumption", "speed", "pollution", "quality"},
        profile = {1.00, 0.5, 0.3333, 0.25, 0.2, 0.1667, 0.1429, 0.125, 0.1111, 0.1, 0.0909, 0.0833, 0.0769, 0.0714, 0.0667, 0.0625, 0.0588, 0.0556, 0.0526, 0.05, 0.0476, 0.0455, 0.0435, 0.0417, 0.04, 0.0385, 0.037, 0.0357, 0.0345, 0.0333, 0.0323, 0.0312, 0.0303, 0.0294, 0.0286, 0.0278, 0.027, 0.0263, 0.0256, 0.025, 0.0244, 0.0238, 0.0233, 0.0227, 0.0222, 0.0217, 0.0213, 0.0208, 0.0204, 0.02, 0.0196, 0.0192, 0.0189, 0.0185, 0.0182, 0.0179, 0.0175, 0.0172, 0.0169, 0.0167, 0.0164, 0.0161, 0.0159, 0.0156, 0.0154, 0.0152, 0.0149, 0.0147, 0.0145, 0.0143, 0.0141, 0.0139, 0.0137, 0.0135, 0.0133, 0.0132, 0.013, 0.0128, 0.0127, 0.0125, 0.0123, 0.0122, 0.012, 0.0119, 0.0118, 0.0116, 0.0115, 0.0114, 0.0112, 0.0111, 0.011, 0.0109, 0.0108, 0.0106, 0.0105, 0.0104, 0.0103, 0.0102, 0.0101, 0.01},
        beacon_counter = "same_type",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
    close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
    animation = {
      layers = {
        {
          filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-shadow.png",
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-2.png",
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-animation-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 8,
                  },
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/quantum-stabilizer/quantum-stabilizer-hr-emission-2.png",
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/quantum-stabilizer.ogg", volume = 0.2},
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
         
        
