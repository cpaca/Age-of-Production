require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

local total = 0
local profile = {}
for i = 1, 5000 do
    total = total + (2 ^ (-i + 1))
    profile[i] = total / i * 2 / 3
end

data:extend{
    {
        name = "aop-transmitter",
        type = "beacon",
        icon = "__Age-of-Production-Graphics__/graphics/icons/transmitter.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-transmitter", amount=1}}
        },
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
        selection_box = {{-1, -1}, {1, 1}},
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 0 }
        },
        energy_usage = "200kW",
        heating_energy = "150kW",
        module_slots = 1,
        supply_area_distance = 2,
        distribution_effectivity = 3,
        distribution_effectivity_bonus_per_quality_level = 0.75,
        allowed_effects = {"consumption", "speed", "pollution"},
        profile = profile,
        beacon_counter = "same_type",
        open_sound = {filename = "__base__/sound/open-close/beacon-open.ogg", volume = 0.4},
    close_sound = {filename = "__base__/sound/open-close/beacon-close.ogg", volume = 0.4},
    animation = {
      layers = {
        {
          filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-shadow.png",
          priority = "high",
          width = 400,
          height = 350,
          frame_count= 1,
          line_length = 1,
          repeat_count = 20,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -16),
          draw_as_shadow = true,
          scale = 0.375
      },
          {
              priority = "high",
              width = 160,
              height = 290,
              frame_count = 20,
              animation_speed = 0.5,
              scale = 0.375,
              shift = util.by_pixel(0, -26),
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-animation-1.png",
                      width_in_frames = 8,
                      height_in_frames = 3,
                  },
              },
          },
          {
              priority = "high",
              width = 160,
              height = 290,
              frame_count = 20,
              draw_as_glow = true,
              scale = 0.375,
              animation_speed = 0.5,
              blend_mode = "additive",
              shift = util.by_pixel(0, -26),
              stripes = {
                  {
                      filename = "__Age-of-Production-Graphics__/graphics/entity/transmitter/transmitter-hr-emission-1.png",
                      width_in_frames = 8,
                      height_in_frames = 3,
                  },
              },
          },
      },
  },
  radius_visualisation_picture =
  {
    filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
    priority = "extra-high-no-scale",
    width = 3.5,
    height = 3.5
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
          sound = {filename = "__base__/sound/combinator.ogg", volume = 0.3},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-transmitter-created",
              },
            }
          }
        },
      }
}
         
        
