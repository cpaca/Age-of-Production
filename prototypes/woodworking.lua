data:extend {{
    type = "recipe",
    name = "aop-charcoal",
    icon = "__Age-of-Production__/graphics/icons/charcoal.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "wood",      amount = 10},
    },
    results = {
        {type = "item", name = "carbon", amount = 2},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-wood-rotting",
    icon = "__Age-of-Production__/graphics/icons/wood-rotting.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "wood",      amount = 2},
        {type = "item", name = "spoilage",      amount = 10},
    },
    results = {
        {type = "item", name = "spoilage", amount = 12},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-wooden-rails",
    icon = "__Age-of-Production__/graphics/icons/wooden-rails.png",
    subgroup = "aop-woodworking",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "steel-plate",      amount = 1},
        {type = "item", name = "iron-stick",      amount = 1},
        {type = "item", name = "stone",      amount = 1},
        {type = "item", name = "wood",      amount = 2},
    },
    results = {
        {type = "item", name = "rail", amount = 4},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false,
    show_amount_in_title = false,
}}