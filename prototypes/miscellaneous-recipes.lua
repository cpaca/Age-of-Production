data:extend {{
    type = "recipe",
    name = "aop-water-freezing",
    icon = "__Age-of-Production__/graphics/icons/water-freezing.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 20},
    },
    results = {
        {type = "item", name = "ice", amount = 1},
    },
    allow_productivity = false,
    category = "cryogenics",
    order = "e",
    auto_recycle = false,
    allow_quality = false,
    surface_conditions = {{property = "temperature", max = 320}}
}}