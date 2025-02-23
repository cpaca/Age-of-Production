local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend
{
  {
    type = "fluid",
    name = "aop-lithium-fluoride",
    subgroup = "aquilo-processes",
    default_temperature = 850,
    max_temperature = 1000,
    base_color = {0.87, 0.95, 0.36},
    flow_color = {0.87, 0.95, 0.36},
    icon = "__Age-of-Production__/graphics/icons/lithium-fluoride.png",
    auto_barrel = false
  },
}

data:extend {{
        type = "item",
        name = "aop-hybrid-bacteria",
        icon = "__Age-of-Production__/graphics/icons/hybrid-bacteria-1.png",
        pictures =
        {
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-1.png",   scale = 0.5},
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-2.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-3.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-4.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-5.png", scale = 0.5},
          { size = 64, filename = "__Age-of-Production__/graphics/icons/hybrid-bacteria-6.png", scale = 0.5}
        },
        subgroup = "agriculture-products",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        stack_size = 50,
        default_import_location = "gleba",
        spoil_ticks = 1800,
        spoil_result = "stone",
        weight = 1000
    }}

data:extend {{
        type = "item",
        name = "aop-explosive-core",
        icon = "__Age-of-Production__/graphics/icons/explosive-core.png",
        subgroup = "vulcanus-processes",
        inventory_move_sound = item_sounds.ammo_large_inventory_move,
        pick_sound = item_sounds.ammo_large_inventory_pickup,
        drop_sound = item_sounds.ammo_large_inventory_move,
        stack_size = 5,
        default_import_location = "vulcanus",
        weight = 200000
    }}

data:extend {{
    type = "item",
    name = "aop-magnetic-flow-meter",
    icon = "__Age-of-Production__/graphics/icons/magnetic-flow-meter.png",
    subgroup = "fulgora-processes",
    inventory_move_sound = space_age_item_sounds.rocket_inventory_move,
    pick_sound = space_age_item_sounds.rocket_inventory_pickup,
    drop_sound = space_age_item_sounds.rocket_inventory_move,
    stack_size = 5,
    default_import_location = "fulgora",
    weight = 200000
}}

data:extend {{
    type = "recipe",
    name = "aop-lithium-fluoride",
    icon = "__Age-of-Production__/graphics/icons/lithium-fluoride.png",
    subgroup = "aquilo-processes",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "fluid", name = "lithium-brine",      amount = 50},
        {type = "fluid", name = "fluorine",      amount = 50},
        {type = "item", name = "carbon",      amount = 5},
    },
    results = {
        {type = "fluid", name = "aop-lithium-fluoride", amount = 500},
    },
    allow_productivity = true,
    category = "metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-lithium-fluoride-casting",
    icon = "__Age-of-Production__/graphics/icons/lithium-fluoride-casting.png",
    subgroup = "aquilo-processes",
    enabled = false,
    energy_required = 6.4,
    ingredients = {
        {type = "fluid", name = "aop-lithium-fluoride",      amount = 20},
        {type = "item", name = "holmium-plate",      amount = 1},
    },
    results = {
        {type = "item", name = "lithium-plate", amount = 3},
        {type = "fluid", name = "fluorine", amount = 5, ignored_by_stats = 5, ignored_by_productivity = 5},
    },
    allow_productivity = true,
    category = "metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-explosive-core",
    icon = "__Age-of-Production__/graphics/icons/explosive-core.png",
    subgroup = "vulcanus-processes",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "explosives",      amount = 4},
        {type = "item", name = "tungsten-plate",      amount = 2},
        {type = "item", name = "advanced-circuit",      amount = 2},
        {type = "fluid", name = "molten-iron",      amount = 100},
        {type = "fluid", name = "heavy-oil",      amount = 10},
    },
    results = {
        {type = "item", name = "aop-explosive-core", amount = 2},
    },
    allow_productivity = true,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-advanced-artillery-shell-manufacturing",
    icon = "__Age-of-Production__/graphics/icons/advanced-artillery-shell-manufacturing.png",
    subgroup = "vulcanus-processes",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "aop-explosive-core",      amount = 1},
        {type = "item", name = "tungsten-carbide",      amount = 2},
        {type = "item", name = "calcite",      amount = 2},
    },
    results = {
        {type = "item", name = "artillery-shell", amount = 1},
    },
    allow_productivity = false,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-magnetic-flow-meter",
    icon = "__Age-of-Production__/graphics/icons/magnetic-flow-meter.png",
    subgroup = "fulgora-processes",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "superconductor",      amount = 2},
        {type = "item", name = "processing-unit",      amount = 1},
        {type = "item", name = "electric-engine-unit",      amount = 5},
        {type = "item", name = "copper-cable",      amount = 3},
        {type = "fluid", name = "electrolyte",      amount = 10},
    },
    results = {
        {type = "item", name = "aop-magnetic-flow-meter", amount = 2},
    },
    allow_productivity = true,
    category = "electromagnetics",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-magnetic-thruster",
    icon = "__Age-of-Production__/graphics/icons/magnetic-thruster.png",
    subgroup = "fulgora-processes",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "aop-magnetic-flow-meter",      amount = 1},
        {type = "item", name = "steel-plate",      amount = 10},
        {type = "fluid", name = "electrolyte",      amount = 5},
    },
    results = {
        {type = "item", name = "thruster", amount = 1},
    },
    allow_productivity = false,
    category = "electromagnetics",
    auto_recycle = false,
    show_amount_in_title = false,
}}

data:extend {{
    type = "recipe",
    name = "aop-hybrid-bacteria",
    icon = "__Age-of-Production__/graphics/icons/hybrid-bacteria-1.png",
    subgroup = "agriculture-products",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "iron-bacteria",      amount = 2},
        {type = "item", name = "copper-bacteria",      amount = 2},
        {type = "item", name = "uranium-238",      amount = 1},
        {type = "item", name = "bioflux",      amount = 5},
    },
    results = {
        {type = "item", name = "aop-hybrid-bacteria", amount = 2},
    },
    allow_productivity = true,
    category = "biochemistry-or-organic",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
      primary = {r = 0.3, g = 0.457, b = 0.05, a = 1.000}, 
      secondary = {r = 0.3, g = 0.196, b = 0.05, a = 1.000}, 
    },
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
}}

data:extend {{
    type = "recipe",
    name = "aop-hybrid-bacteria-cultivation",
    icon = "__Age-of-Production__/graphics/icons/hybrid-bacteria-cultivation.png",
    subgroup = "agriculture-products",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "aop-hybrid-bacteria",      amount = 2},
        {type = "item", name = "bioflux",      amount = 2},
    },
    results = {
        {type = "item", name = "aop-hybrid-bacteria", amount = 3, probability = 0.33},
        {type = "item", name = "aop-hybrid-bacteria", amount = 1, probability = 0.66},
    },
    allow_productivity = true,
    category = "biochemistry-or-organic",
    auto_recycle = false,
    show_amount_in_title = false,
    crafting_machine_tint =
    {
      primary = {r = 0.3, g = 0.457, b = 0.05, a = 1.000}, 
      secondary = {r = 0.3, g = 0.196, b = 0.05, a = 1.000}, 
    },
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
}}

data:extend {{
    type = "recipe",
    name = "aop-hydraulics-specialized-cryogenic-science-pack",
    icon = "__Age-of-Production__/graphics/icons/hydraulics-specialized-cryogenic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "solid-fuel",      amount = 2},
        {type = "fluid", name = "ammoniacal-solution",      amount = 20},
        {type = "fluid", name = "aop-lithium-fluoride",      amount = 40},
    },
    results = {
        {type = "item", name = "cryogenic-science-pack", amount = 2},
        {type = "item", name = "ice", amount = 2, ignored_by_stats = 2, ignored_by_productivity = 2},
    },
    allow_productivity = true,
    category = "hydraulics",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 300,
        max = 300
      }
    },
}}

data:extend {{
    type = "recipe",
    name = "aop-military-specialized-metallurgic-science-pack",
    icon = "__Age-of-Production__/graphics/icons/military-specialized-metallurgic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "aop-explosive-core",      amount = 2},
        {type = "item", name = "piercing-shotgun-shell",      amount = 5},
        {type = "item", name = "tungsten-carbide",      amount = 1},
        {type = "fluid", name = "lava",      amount = 200},
    },
    results = {
        {type = "item", name = "metallurgic-science-pack", amount = 2},
    },
    allow_productivity = true,
    category = "ammunition",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 4000,
        max = 4000
      }
    },
}}

data:extend {{
    type = "recipe",
    name = "aop-petrochemistry-specialized-electromagnetic-science-pack",
    icon = "__Age-of-Production__/graphics/icons/petrochemistry-specialized-electromagnetic-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "aop-magnetic-flow-meter",      amount = 2},
        {type = "item", name = "battery",      amount = 3},
        {type = "fluid", name = "holmium-solution",      amount = 5},
        {type = "fluid", name = "lubricant",      amount = 10},
        {type = "fluid", name = "petroleum-gas",      amount = 25},
    },
    results = {
        {type = "item", name = "electromagnetic-science-pack", amount = 2},
    },
    allow_productivity = true,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "magnetic-field",
        min = 99,
        max = 99
      }
    },
}}

data:extend {{
    type = "recipe",
    name = "aop-hybridation-specialized-agricultural-science-pack",
    icon = "__Age-of-Production__/graphics/icons/hybridation-specialized-agricultural-science-pack.png",
    subgroup = "aop-specialized-science-pack",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "aop-hybrid-bacteria",      amount = 4},
        {type = "item", name = "bioflux",      amount = 3},
        {type = "item", name = "pentapod-egg",      amount = 1},
        {type = "item", name = "carbon",      amount = 2},
    },
    results = {
        {type = "item", name = "agricultural-science-pack", amount = 2},
    },
    allow_productivity = true,
    category = "biochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 2000
      }
    },
}}