require ("util")
require("__base__/prototypes/entity/pipecovers")
require ("circuit-connector-sprites")
require("__base__/prototypes/entity/assemblerpipes")
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")
local cargo_pod_procession_catalogue = require("__base__/prototypes/entity/cargo-pod-catalogue")

circuit_connector_definitions["aop-atomic-enricher"] = circuit_connector_definitions.create_vector
(
  universal_connector_template,
  {
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
    { variation = 31, main_offset = util.by_pixel( 6.625, -34.375), shadow_offset = util.by_pixel( 6.625, -34.375), show_shadow = true },
  }
)

data:extend{
    {
        name = "aop-atomic-enricher",
        type = "assembling-machine",
        icon = "__Age-of-Production-Graphics__/graphics/icons/atomic-enricher.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-atomic-enricher", amount=1}}
        },
        max_health = 500,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["aop-atomic-enricher"], 
        collision_box = {{-2.6, -2.6}, {2.6, 2.6}},
        selection_box = {{-3, -3}, {3, 3}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = {"centrifuging", "advanced-centrifuging", "advanced-centrifuging-or-centrifuging", "advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "advanced-centrifuging-or-crafting-with-fluid"},
        fluid_boxes =
        {
          {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1.5, -2.5 } } }
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 1000,
            pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1.5, -2.5 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1.5, 2.5 } } }
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            secondary_draw_orders = { north = -1 },
            volume = 500,
            pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1.5, 2.5 } } }
        },
      },
        fluid_boxes_off_when_no_fluid_recipe = true,
        crafting_speed = 4,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 15 },
          drain = "75kW",
        },
        impact_category = "metal",
        open_sound = {filename = "__base__/sound/open-close/nuclear-open.ogg", volume = 0.8},
    close_sound = {filename = "__base__/sound/open-close/nuclear-close.ogg", volume = 0.8},
        energy_usage = "4MW",
        heating_energy = "500kW",
        module_slots = 4,
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
                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-shadow.png",
                      priority = "high",
                      width = 900,
                      height = 500,
                      frame_count = 1,
                      line_length = 1,
                      repeat_count = 80,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      draw_as_shadow = true,
                      scale = 0.5
                  },
                  {
                      priority = "high",
                      width = 400,
                      height = 480,
                      frame_count = 80,
                      lines_per_file = 8,
                      animation_speed = 0.15,
                      shift = util.by_pixel(0, -16),
                      scale = 0.5,
                      stripes = {
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-1.png",
                              width_in_frames = 8,
                              height_in_frames = 8
                          },
                          {
                              filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-2.png",
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
                              width = 400,
                              height = 480,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-animation-2.png",
                                      width_in_frames = 8,
                                      height_in_frames = 2
                                  }
                              }
                          },
                          {
                              priority = "high",
                              draw_as_glow = true,
                              blend_mode = "additive",
                              width = 400,
                              height = 480,
                              frame_count = 80,
                              lines_per_file = 8,
                              animation_speed = 0.15,
                              shift = util.by_pixel(0, -16),
                              scale = 0.5,
                              stripes = {
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-emission-1.png",
                                      width_in_frames = 8,
                                      height_in_frames = 8
                                  },
                                  {
                                      filename = "__Age-of-Production-Graphics__/graphics/entity/atomic-enricher/atomic-enricher-hr-emission-2.png",
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
          sound = {filename = "__base__/sound/nuclear-reactor-1.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-atomic-enricher-created",
              },
            }
          }
        },
      },
}