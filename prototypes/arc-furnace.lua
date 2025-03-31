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
        name = "aop-arc-furnace",
        type = "furnace",
        icon = "__Age-of-Production-Graphics__/graphics/icons/arc-furnace.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
          mining_time = 0.5,
          results = {{type="item", name="aop-arc-furnace", amount=1}}
        },
        max_health = 1000,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        circuit_wire_max_distance = furnace_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["steel-furnace"],
        collision_box = {{-2.1, -2.1}, {2.1, 2.1}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        --map_color = ei_data.colors.assembler,
        crafting_categories = data.raw["furnace"]["electric-furnace"].crafting_categories,
        crafting_speed = 5,
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = { pollution = 40 },
          drain = "300kW",
        },
        impact_category = "metal",
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        energy_usage = "5MW",
        heating_energy = "300kW",
        module_slots = 5,
        source_inventory_size = 1,
        result_inventory_size = 1,
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        effect_receiver = {
          base_effect = {
            productivity = 0.5
          }
        },
        graphics_set = {
          always_draw_idle_animation = true,
          idle_animation = {
            layers = {
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-shadow.png",
                size = {600, 400},
                shift = {0, 0},
                scale = 0.5,
                line_length = 1,
                frame_count = 1,
                repeat_count = 50,
                draw_as_shadow = true,
                animation_speed = 0.25,
              },
              {
                filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-animation-1.png",
                size = {320, 320},
                shift = {0, 0},
                scale = 0.5,
                line_length = 8,
                lines_per_file = 8,
                frame_count = 50,
                animation_speed = 0.25,
              },
            },
          },
          working_visualisations = {{
            fadeout = true,
            secondary_draw_order = 1,
            animation = {
              layers = {
                {
                  filename = "__Age-of-Production-Graphics__/graphics/entity/arc-furnace/arc-furnace-hr-animation-emission-1.png",
                  size = {320, 320},
                  shift = {0, 0},
                  scale = 0.5,
                  line_length = 8,
                  lines_per_file = 8,
                  frame_count = 40,
                  draw_as_glow = true,
                  blend_mode = "additive",
                  animation_speed = 0.25,
                },
              },
            },
          }},
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
          sound = {filename = "__Age-of-Production-Graphics__/sounds/arc-furnace.ogg", volume = 0.9},
          apparent_volume = 0.3,
        },
        created_effect = {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              {
                type = "script",
                effect_id = "aop-arc-furnace-created",
              },
            }
          }
        },
      },
}