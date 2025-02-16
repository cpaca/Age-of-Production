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
        name = "aop-petrochemical-facility",
        type = "assembling-machine",
        icon = "__Age-of-Production__/graphics/icons/petrochemical-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-petrochemical-facility", amount=1}}
        },
        max_health = 1000,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["chemical-plant"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"oil-processing", "petrochemistry", "petrochemistry-or-oil-processing", "petrochemistry-or-organic-or-chemistry", "petrochemistry-or-chemistry", "petrochemistry-or-organic-or-assembling", "petrochemistry-or-chemistry-or-cryogenics"},
        fluid_boxes =
    {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-2, 2} }}
          },
          {
            production_type = "input",
            pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }}
          },
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {2, 2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-2, -2} }}
          },
          {
            production_type = "output",
            pipe_picture =  require("__space-age__.prototypes.entity.cryogenic-plant-pictures").pipe_picture,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, -2} }}
          },
          {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {2, -2} }}
          }
    },
        crafting_speed = 2,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 60 },
          drain = "160kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
        close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
        energy_usage = "4MW",
        heating_energy = "300kW",
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
                      filename = "__Age-of-Production__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-shadow.png",
                      priority = "high",
                      width = 800,
                      height = 600,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 60,
                      animation_speed = 0.3,
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 400,
                      height = 400,
                      frame_count = 60,
                      lines_per_file = 8,
                      animation_speed = 0.3,
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-animation-1.png",
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
                              width = 400,
                              height = 400,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.3,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 400,
                              height = 400,
                              frame_count = 60,
                              lines_per_file = 8,
                              animation_speed = 0.3,
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production__/graphics/entity/petrochemical-facility/petrochemical-facility-hr-emission-1.png",
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
          sound = {filename = "__Age-of-Production__/sounds/petrochemical-facility.ogg", volume = 0.9},
          apparent_volume = 0.5,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-petrochemical-facility-created",
              },
            }
          }
        },
      }
    }