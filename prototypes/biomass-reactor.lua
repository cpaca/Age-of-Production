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
        name = "aop-biomass-reactor",
        type = "burner-generator",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-reactor.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-biomass-reactor", amount=1}}
        },
        max_health = 600,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        perceived_performance = {minimum = 0.25, performance_to_activity_rate = 2.0},
        max_power_output = "2.5MW",
       burner =
  {
    type = "burner",
    fuel_categories = {"nutrients"},
    effectivity = 5,
    fuel_inventory_size = 1,
    burnt_inventory_size = 1,
    emissions_per_minute = { pollution = 1 },
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-output"
  },
        impact_category = "metal",
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        animation =
        {
            layers =
            {                  
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -16),
                  animation_speed = 1.25,
                  scale = 0.5,
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },         
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -16),
                  draw_as_glow = true,
                  scale = 0.5,
                  animation_speed = 1.25,
                  blend_mode = "additive",
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },                
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-shadow.png",
                    width = 900,
                    height = 500,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 80,
                    animation_speed = 1.25,
                    shift = util.by_pixel(13, 11),
                    scale = 0.5,
                    draw_as_shadow = true
                },   
            }
        },
        idle_animation =
        {
            layers =
            {                  
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -16),
                  animation_speed = 1.25,
                  scale = 0.5,
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-animation-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },         
                {
                  priority = "high",
                  width = 330,
                  height = 410,
                  frame_count = 80,
                  shift = util.by_pixel_hr(0, -16),
                  draw_as_glow = true,
                  scale = 0.5,
                  animation_speed = 1.25,
                  blend_mode = "additive",
                  stripes = {
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-1.png",
                          width_in_frames = 8,
                          height_in_frames = 8,
                      },
                      {
                          filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-emission-2.png",
                          width_in_frames = 8,
                          height_in_frames = 2,
                      },
                  },
                },                
                {
                    filename = "__Age-of-Production-Graphics__/graphics/entity/biomass-reactor/biomass-reactor-hr-shadow.png",
                    width = 900,
                    height = 500,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 80,
                    animation_speed = 1.25,
                    shift = util.by_pixel(13, 11),
                    scale = 0.5,
                    draw_as_shadow = true
                },   
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
          sound = {filename = "__base__/sound/steam-turbine.ogg", volume = 0.7},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-biomass-reactor-created",
              },
            }
          }
        },
      },
}