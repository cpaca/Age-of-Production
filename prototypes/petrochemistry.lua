data:extend {{
    type = "recipe",
    name = "aop-solid-fuel-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/solid-fuel-melting.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "solid-fuel",      amount = 20}
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 10},
    },
    allow_productivity = false,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-carbon-liquefaction",
    icon = "__Age-of-Production-Graphics__/graphics/icons/carbon-liquefaction.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "carbon",      amount = 25},
        {type = "item", name = "calcite",      amount = 5},
        {type = "fluid", name = "steam",      amount = 50}
    },
    results = {
        {type = "fluid", name = "heavy-oil", amount = 25},
    },
    allow_productivity = true,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-petroleum-gas-dehydrogenation",
    icon = "__Age-of-Production-Graphics__/graphics/icons/petroleum-gas-dehydrogenation.png",
    subgroup = "fluid-recipes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "petroleum-gas",      amount = 20},
        {type = "fluid", name = "steam",      amount = 10},
        {type = "item", name = "iron-plate",      amount = 2}
    },
    results = {
        {type = "item", name = "carbon", amount = 2},
    },
    allow_productivity = false,
    category = "petrochemistry",
    auto_recycle = false,
    show_amount_in_title = false,
}}