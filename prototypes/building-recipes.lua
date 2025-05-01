local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend {{
    type = "item",
    name = "aop-arc-furnace",
    subgroup = "smelting-machine",
    order = "f[aop-arc-furnace]",
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/arc-furnace.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 200000,
    place_result = "aop-arc-furnace"
}}
data:extend {{
    type = "recipe",
    name = "aop-arc-furnace",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "copper-cable",       amount = 35},
        {type = "item", name = "tungsten-carbide", amount = 30},
        {type = "item", name = "refined-concrete", amount = 20},
        {type = "item", name = "advanced-circuit", amount = 20},
        {type = "item", name = "electric-furnace", amount = 1},
    },
    results = {
        {type = "item", name = "aop-arc-furnace", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-arc-furnace",
    category = "metallurgy-2-the-return",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-atomic-enricher",
    subgroup = "production-machine",
    order = "g[aop-atomic-enricher]",
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/atomic-enricher.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-atomic-enricher"
}}
data:extend {{
    type = "recipe",
    name = "aop-atomic-enricher",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 50},
        {type = "item", name = "tungsten-plate",       amount = 40},
        {type = "item", name = "refined-concrete", amount = 40},
        {type = "item", name = "centrifuge", amount = 5},
    },
    results = {
        {type = "item", name = "aop-atomic-enricher", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-atomic-enricher",
    category = "advanced-centrifuging-or-centrifuging",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-biochemical-facility",
    subgroup = "agriculture",
    order = "h[aop-biochemical-facility]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/biochemical-facility.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-biochemical-facility"
}}
data:extend {{
    type = "recipe",
    name = "aop-biochemical-facility",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 50},
        {type = "item", name = "steel-plate",       amount = 40},
        {type = "item", name = "carbon-fiber", amount = 60},
        {type = "item", name = "biochamber", amount = 2},
        {type = "item", name = "nutrients", amount = 75},
        {type = "item", name = "uranium-235", amount = 50},
        {type = "item", name = "biter-egg", amount = 5},
        {type = "item", name = "pentapod-egg", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biochemical-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 2000}},
    main_product = "aop-biochemical-facility",
    category = "cryogenics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-electromechanic-facility",
    subgroup = "production-machine",
    order = "h[aop-electromechanic-facility]",
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/electromechanic-facility.png",
    icon_size = 64,
    stack_size = 5,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-electromechanic-facility"
}}
data:extend {{
    type = "recipe",
    name = "aop-electromechanic-facility",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 100},
        {type = "item", name = "lithium-plate",       amount = 50},
        {type = "item", name = "refined-concrete", amount = 250},
        {type = "item", name = "tungsten-plate", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 50},
    },
    results = {
        {type = "item", name = "aop-electromechanic-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 100, max = 600}},
    main_product = "aop-electromechanic-facility",
    category = "electromagnetics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-greenhouse",
    subgroup = "agriculture",
    order = "i[aop-greenhouse]",
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/greenhouse.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-greenhouse"
}}
data:extend {{
    type = "recipe",
    name = "aop-greenhouse",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "agricultural-tower",   amount = 1},
        {type = "item", name = "landfill",       amount = 20},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "processing-unit", amount = 20},
        {type = "item", name = "iron-gear-wheel", amount = 20},
    },
    results = {
        {type = "item", name = "aop-greenhouse", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 2000}},
    main_product = "aop-greenhouse",
    category = "woodworking",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-hydraulic-plant",
    subgroup = "production-machine",
    order = "i[aop-hydraulic-plant]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/hydraulic-plant.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-hydraulic-plant"
}}
data:extend {{
    type = "recipe",
    name = "aop-hydraulic-plant",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "pump",   amount = 5},
        {type = "item", name = "tungsten-plate",       amount = 30},
        {type = "item", name = "lithium-plate",       amount = 30},
        {type = "item", name = "processing-unit", amount = 40},
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "item", name = "aop-hydraulic-plant", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 100, max = 600}},
    main_product = "aop-hydraulic-plant",
    category = "hydraulics-or-chemistry",
    crafting_machine_tint =
    {
        primary = {r = 0.433, g = 0.773, b = 1.000, a = 1.000},
        secondary = {r = 0.591, g = 0.856, b = 1.000, a = 1.000},
        tertiary = {r = 0.381, g = 0.428, b = 0.436, a = 0.502},
        quaternary = {r = 0.499, g = 0.797, b = 0.793, a = 0.733},
    },
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-lumber-mill",
    subgroup = "agriculture",
    order = "g[aop-lumber-mill]",
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/lumber-mill.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-lumber-mill"
}}
data:extend {{
    type = "recipe",
    name = "aop-lumber-mill",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 30},
        {type = "item", name = "iron-gear-wheel",       amount = 20},
        {type = "item", name = "wood", amount = 50},
        {type = "item", name = "landfill", amount = 20},
    },
    results = {
        {type = "item", name = "aop-lumber-mill", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-lumber-mill",
    category = "woodworking-or-crafting",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-petrochemical-facility",
    subgroup = "production-machine",
    order = "g[aop-petrochemical-facility]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/petrochemical-facility.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-petrochemical-facility"
}}
data:extend {{
    type = "recipe",
    name = "aop-petrochemical-facility",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "pump",   amount = 5},
        {type = "item", name = "pipe",       amount = 20},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "steel-plate", amount = 50},
        {type = "fluid", name = "heavy-oil", amount = 300},
    },
    results = {
        {type = "item", name = "aop-petrochemical-facility", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 300, max = 800}},
    main_product = "aop-petrochemical-facility",
    category = "hydraulics-or-chemistry",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.642, b = 0.261, a = 1.000}, -- #ffa342ff
      secondary = {r = 1.000, g = 0.722, b = 0.376, a = 1.000}, -- #ffb85fff
      tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
      quaternary = {r = 1.000, g = 0.494, b = 0.271, a = 1.000}, -- #ff7e45ff
    },
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-quantum-assembler",
    subgroup = "production-machine",
    order = "w[aop-quantum-assembler]",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-assembler.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-quantum-assembler"
}}
data:extend {{
    type = "recipe",
    name = "aop-quantum-assembler",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 100},
        {type = "item", name = "tungsten-plate",       amount = 200},
        {type = "item", name = "refined-concrete", amount = 100},
        {type = "item", name = "superconductor", amount = 75},
        {type = "item", name = "supercapacitor",   amount = 50},
        {type = "item", name = "aop-advanced-assembling-machine",       amount = 2},
        {type = "item", name = "promethium-asteroid-chunk", amount = 1},
        {type = "item", name = "raw-fish", amount = 1},
        {type = "fluid", name = "fluoroketone-cold", amount = 50},
    },
    results = {
        {type = "item", name = "aop-quantum-assembler", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-assembler",
    category = "electromechanics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-quantum-computer",
    order = "z[aop-quantum-computer]",
    subgroup = "production-machine",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-computer.png",
    icon_size = 64,
    stack_size = 1,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-quantum-computer"
}}
data:extend {{
    type = "recipe",
    name = "aop-quantum-computer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "biolab",       amount = 10},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 200},
        {type = "item", name = "tungsten-plate",       amount = 500},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 100},
        {type = "item", name = "electric-engine-unit", amount = 100},
        {type = "fluid", name = "fluoroketone-cold", amount = 200},
    },
    results = {
        {type = "item", name = "aop-quantum-computer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-computer",
    category = "electromechanics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-quantum-stabilizer",
    subgroup = "module",
    pick_sound = item_sounds.reactor_inventory_pickup,
    drop_sound = item_sounds.reactor_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/quantum-stabilizer.png",
    icon_size = 64,
    stack_size = 5,
    default_import_location = "aquilo",
    weight = 1000000,
    place_result = "aop-quantum-stabilizer"
}}
data:extend {{
    type = "recipe",
    name = "aop-quantum-stabilizer",
    enabled = false,
    energy_required = 240,
    ingredients = {
        {type = "item", name = "quantum-processor",   amount = 500},
        {type = "item", name = "beacon",       amount = 20},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 250},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 800},
        {type = "item", name = "electric-engine-unit", amount = 300},
        {type = "fluid", name = "fluoroketone-cold", amount = 300},
    },
    results = {
        {type = "item", name = "aop-quantum-stabilizer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", max = 600}},
    main_product = "aop-quantum-stabilizer",
    category = "electromechanics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-scrubber",
    subgroup = "production-machine",
    order = "g[aop-scrubber]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/scrubber.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "gleba",
    weight = 200000,
    place_result = "aop-scrubber"
}}
data:extend {{
    type = "recipe",
    name = "aop-scrubber",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "iron-gear-wheel",       amount = 25},
        {type = "item", name = "pipe", amount = 5},
        {type = "item", name = "copper-cable", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 20},
    },
    results = {
        {type = "item", name = "aop-scrubber", amount = 1}
    },
    allow_productivity = false,
    main_product = "aop-scrubber",
    category = "crafting",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-smeltery",
    subgroup = "smelting-machine",
    order = "f[aop-smeltery]",
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/smeltery.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 1000000,
    place_result = "aop-smeltery"
}}
data:extend {{
    type = "recipe",
    name = "aop-smeltery",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "tungsten-plate",   amount = 100},
        {type = "item", name = "iron-gear-wheel",       amount = 70},
        {type = "item", name = "tungsten-carbide", amount = 60},
        {type = "item", name = "refined-concrete", amount = 35},
        {type = "item", name = "quantum-processor", amount = 20},
        {type = "item", name = "foundry", amount = 1},
        {type = "fluid", name = "lubricant", amount = 100},
    },
    results = {
        {type = "item", name = "aop-smeltery", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-smeltery",
    category = "metallurgy-2-the-return",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-salvager",
    subgroup = "smelting-machine",
    order = "e[aop-salvager]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/salvager.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-salvager"
}}
data:extend {{
    type = "recipe",
    name = "aop-salvager",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "recycler",   amount = 1},
        {type = "item", name = "quality-module-3",       amount = 4},
        {type = "item", name = "carbon-fiber", amount = 20},
        {type = "item", name = "refined-concrete", amount = 30},
    },
    results = {
        {type = "item", name = "aop-salvager", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 800, max = 800}},
    main_product = "aop-salvager",
    category = "electromagnetics",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-advanced-assembling-machine",
    subgroup = "production-machine",
    order = "h[aop-advanced-assembling-machine]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/advanced-assembling-machine.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "fulgora",
    weight = 200000,
    place_result = "aop-advanced-assembling-machine"
}}
data:extend {{
    type = "recipe",
    name = "aop-advanced-assembling-machine",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "assembling-machine-3",   amount = 4},
        {type = "item", name = "efficiency-module-3",       amount = 3},
        {type = "item", name = "productivity-module-3", amount = 3},
        {type = "item", name = "speed-module-3", amount = 3},
        {type = "item", name = "refined-concrete", amount = 30},
        {type = "item", name = "supercapacitor", amount = 15},
        {type = "item", name = "steel-plate", amount = 50},
    },
    results = {
        {type = "item", name = "aop-advanced-assembling-machine", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 800, max = 800}},
    main_product = "aop-advanced-assembling-machine",
    category = "electromagnetics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-core-miner",
    subgroup = "extraction-machine",
    order = "a[items]-d[aop-core-miner]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/core-miner.png",
    icon_size = 64,
    stack_size = 1,
    default_import_location = "vulcanus",
    weight = 1000000,
    place_result = "aop-core-miner"
}}
data:extend {{
    type = "recipe",
    name = "aop-core-miner",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "big-mining-drill",   amount = 5},
        {type = "item", name = "quantum-processor",   amount = 750},
        {type = "item", name = "refined-concrete", amount = 1000},
        {type = "item", name = "superconductor", amount = 500},
        {type = "item", name = "supercapacitor",   amount = 200},
        {type = "item", name = "tungsten-plate",       amount = 1000},
        {type = "item", name = "promethium-asteroid-chunk", amount = 15},
        {type = "item", name = "carbon-fiber", amount = 300},
        {type = "fluid", name = "molten-iron", amount = 500},
        {type = "fluid", name = "molten-copper", amount = 500},
    },
    results = {
        {type = "item", name = "aop-core-miner", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-core-miner",
    category = "electromechanics",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-armory",
    subgroup = "production-machine",
    order = "h[aop-armory]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/armory.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "vulcanus",
    weight = 200000,
    place_result = "aop-armory"
}}
data:extend {{
    type = "recipe",
    name = "aop-armory",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "assembling-machine-2",   amount = 1},
        {type = "item", name = "advanced-circuit",   amount = 25},
        {type = "item", name = "refined-concrete", amount = 20},
        {type = "item", name = "tungsten-plate", amount = 35},
        {type = "fluid", name = "molten-copper",   amount = 100},
    },
    results = {
        {type = "item", name = "aop-armory", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    main_product = "aop-armory",
    category = "metallurgy-2-the-return",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-mineral-synthesizer",
    subgroup = "production-machine",
    order = "i[aop-mineral-synthesizer]",
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/mineral-synthesizer.png",
    icon_size = 64,
    stack_size = 10,
    default_import_location = "aquilo",
    weight = 200000,
    place_result = "aop-mineral-synthesizer"
}}
data:extend {{
    type = "recipe",
    name = "aop-mineral-synthesizer",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "electric-furnace",   amount = 1},
        {type = "item", name = "chemical-plant",   amount = 1},
        {type = "item", name = "tungsten-plate",       amount = 20},
        {type = "item", name = "lithium-plate",       amount = 30},
        {type = "item", name = "processing-unit", amount = 40},
        {type = "item", name = "copper-plate", amount = 35},
    },
    results = {
        {type = "item", name = "aop-mineral-synthesizer", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}},
    main_product = "aop-mineral-synthesizer",
    category = "crafting",
    auto_recycle = true
}}

data:extend {{
    type = "item",
    name = "aop-biomass-reactor",
    subgroup = "energy",
    order = "e[aop-biomass-reactor]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-reactor.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-biomass-reactor"
}}
data:extend {{
    type = "recipe",
    name = "aop-biomass-reactor",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "heating-tower",       amount = 1},
        {type = "item", name = "refined-concrete", amount = 25},
        {type = "item", name = "steam-turbine", amount = 2},
        {type = "item", name = "heat-pipe", amount = 10},
        {type = "item", name = "advanced-circuit", amount = 20},
    },
    results = {
        {type = "item", name = "aop-biomass-reactor", amount = 1}
    },
    allow_productivity = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}},
    main_product = "aop-biomass-reactor",
    category = "crafting",
    auto_recycle = false
}}

data:extend {{
    type = "item",
    name = "aop-transmitter",
    subgroup = "module",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    icon = "__Age-of-Production-Graphics__/graphics/icons/transmitter.png",
    icon_size = 64,
    stack_size = 20,
    default_import_location = "nauvis",
    weight = 200000,
    place_result = "aop-transmitter"
}}
data:extend {{
    type = "recipe",
    name = "aop-transmitter",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 10},
        {type = "item", name = "processing-unit",       amount = 5},
        {type = "item", name = "copper-cable", amount = 10},
        {type = "item", name = "iron-stick", amount = 5},
    },
    results = {
        {type = "item", name = "aop-transmitter", amount = 1}
    },
    allow_productivity = false,
    main_product = "aop-transmitter",
    category = "crafting",
    auto_recycle = true
}}