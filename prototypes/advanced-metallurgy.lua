data:extend {{
    type = "recipe",
    name = "aop-direct-molten-copper-from-lava",
    icon = "__Age-of-Production__/graphics/icons/direct-molten-copper-from-lava.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 64,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 1000},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 500},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-direct-molten-iron-from-lava",
    icon = "__Age-of-Production__/graphics/icons/direct-molten-iron-from-lava.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 64,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 1000},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 500},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-lava-demineralization",
    icon = "__Age-of-Production__/graphics/icons/lava-demineralization.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 750},
    },
    results = {
        {type = "item", name = "stone", amount = 50},
        {type = "fluid", name = "lava", amount = 100},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    allow_quality = false,
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 4000, max = 4000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-direct-molten-copper",
    icon = "__Age-of-Production__/graphics/icons/direct-molten-copper.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "copper-ore",      amount = 100},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 750},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-direct-molten-iron",
    icon = "__Age-of-Production__/graphics/icons/direct-molten-iron.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "iron-ore",      amount = 100},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 750},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}