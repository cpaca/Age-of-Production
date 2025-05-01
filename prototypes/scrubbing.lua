data:extend(
{
  {
    type = "fluid",
    name = "aop-waste-water",
    subgroup = "fluid",
    default_temperature = 20,
    max_temperature = 120,
    heat_capacity = "2kJ",
    base_color = {0.29, 0.27, 0.15},
    flow_color = {0.29, 0.27, 0.15},
    icon = "__Age-of-Production-Graphics__/graphics/icons/waste-water.png",
    auto_barrel = false
  },
}
)
data:extend {{
    type = "recipe",
    name = "aop-vulcanusian-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/vulcanusian-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stone",      amount = 5},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "aop-waste-water", amount = 100},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-nauvitian-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nauvitian-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "calcite",      amount = 2},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "aop-waste-water", amount = 100},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}, {property = "density", min = 5500, max = 5500}}
}}
data:extend {{
    type = "recipe",
    name = "aop-gleban-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/gleban-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",      amount = 25},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "aop-waste-water", amount = 100},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}, {property = "gravity", min = 20, max = 20}}
}}
data:extend {{
    type = "recipe",
    name = "aop-fulgoran-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/fulgoran-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "calcite",      amount = 5},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "aop-waste-water", amount = 100},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "magnetic-field", min = 99, max = 99}, {property = "pressure", min = 800, max = 800}}
}}
data:extend {{
    type = "recipe",
    name = "aop-aquiloan-air-scrubbing",
    icon = "__Age-of-Production-Graphics__/graphics/icons/aquiloan-air-scrubbing.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "spoilage",      amount = 2},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "fluid", name = "aop-waste-water", amount = 100},
    },
    allow_productivity = false,
    allow_quality = false,
    category = "scrubbing",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}}
}}
data:extend {{
    type = "recipe",
    name = "aop-vulcanusian-waste-water-cleaning",
    icon = "__Age-of-Production-Graphics__/graphics/icons/vulcanusian-waste-water-cleaning.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "aop-waste-water",      amount = 10}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "sulfuric-acid", amount = 20, probability = 0.10},
        {type = "item", name = "carbon", amount = 3, probability = 0.05}, 
        {type = "item", name = "sulfur", amount = 2, probability = 0.02}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "chemistry",
    auto_recycle = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}},
    crafting_machine_tint =
    {
        primary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        secondary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        tertiary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        quaternary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000}
    }
}}
data:extend {{
    type = "recipe",
    name = "aop-nauvitian-waste-water-cleaning",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nauvitian-waste-water-cleaning.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "aop-waste-water",      amount = 10}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "carbon", amount = 2, probability = 0.05}, 
        {type = "item", name = "sulfur", amount = 1, probability = 0.01}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "chemistry",
    auto_recycle = false,
    surface_conditions = {{property = "pressure", min = 1000, max = 1000}, {property = "density", min = 5500, max = 5500}},
    crafting_machine_tint =
    {
        primary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        secondary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        tertiary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        quaternary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000}
    }
}}
data:extend {{
    type = "recipe",
    name = "aop-gleban-waste-water-cleaning",
    icon = "__Age-of-Production-Graphics__/graphics/icons/gleban-waste-water-cleaning.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "aop-waste-water",      amount = 10}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "item", name = "spoilage", amount = 3, probability = 0.05}, 
        {type = "item", name = "yumako-seed", amount = 1, probability = 0.01}, 
        {type = "item", name = "jellynut-seed", amount = 1, probability = 0.01}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "chemistry",
    auto_recycle = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}, {property = "gravity", min = 20, max = 20}},
    crafting_machine_tint =
    {
        primary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        secondary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        tertiary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        quaternary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000}
    }
}}
data:extend {{
    type = "recipe",
    name = "aop-fulgoran-waste-water-cleaning",
    icon = "__Age-of-Production-Graphics__/graphics/icons/fulgoran-waste-water-cleaning.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "aop-waste-water",      amount = 10}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "petroleum-gas", amount = 20, probability = 0.10}, 
        {type = "item", name = "ice", amount = 3, probability = 0.05}, 
        {type = "item", name = "stone", amount = 2, probability = 0.03}, 
        {type = "item", name = "holmium-ore", amount = 1, probability = 0.005}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "chemistry",
    auto_recycle = false,
    surface_conditions = {{property = "magnetic-field", min = 99, max = 99}, {property = "pressure", min = 800, max = 800}},
    crafting_machine_tint =
    {
        primary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        secondary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        tertiary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        quaternary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000}
    }
}}
data:extend {{
    type = "recipe",
    name = "aop-aquiloan-waste-water-cleaning",
    icon = "__Age-of-Production-Graphics__/graphics/icons/aquiloan-waste-water-cleaning.png",
    subgroup = "aop-scrubbing",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "aop-waste-water",      amount = 10}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "ammonia", amount = 10, probability = 0.20}, 
        {type = "fluid", name = "fluorine", amount = 10, probability = 0.05}, 
        {type = "item", name = "ice", amount = 2, probability = 0.10},
        {type = "item", name = "lithium", amount = 1, probability = 0.005}, 
    },
    allow_productivity = false,
    allow_quality = false,
    category = "cryogenics",
    auto_recycle = false,
    surface_conditions = {{property = "pressure", min = 300, max = 300}},
    crafting_machine_tint =
    {
        primary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        secondary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        tertiary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000},
        quaternary = {r = 0.29, g = 0.27, b = 0.15, a = 1.000}
    }
}}