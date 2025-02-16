data:extend {{
    type = "recipe",
    name = "aop-calcite-synthesis",
    icon = "__Age-of-Production__/graphics/icons/calcite-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "stone",      amount = 5},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "calcite", amount = 2},
    },
    allow_productivity = true,
    category = "chemistry",
    order = "n",
    auto_recycle = false,
    surface_conditions = {{property = "pressure", min = 1, max = 3999}}
}}
data:extend {{
    type = "recipe",
    name = "aop-stone-synthesis",
    icon = "__Age-of-Production__/graphics/icons/stone-synthesis.png",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "calcite",      amount = 2},
        {type = "item", name = "carbon", amount = 2},
        {type = "fluid", name = "steam", amount = 50},
    },
    results = {
        {type = "item", name = "stone", amount = 5},
    },
    allow_productivity = true,
    category = "chemistry",
    order = "n",
    auto_recycle = false
}}