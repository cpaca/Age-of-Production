data:extend {{
    type = "recipe",
    name = "aop-uranium-sifting",
    icon = "__Age-of-Production__/graphics/icons/uranium-sifting.png",
    subgroup = "uranium-processing",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "stone",      amount = 10},
    },
    results = {
        {type = "item", name = "uranium-238", amount = 5, probability = 0.1},
        {type = "item", name = "uranium-235", amount = 1, probability = 0.01},
        },
    allow_productivity = true,
    category = "advanced-centrifuging",
    auto_recycle = false
}}