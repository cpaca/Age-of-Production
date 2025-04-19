data:extend {{
    type = "recipe",
    name = "aop-direct-molten-copper-from-lava",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-copper-from-lava.png",
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
}}
data:extend {{
    type = "recipe",
    name = "aop-direct-molten-iron-from-lava",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-iron-from-lava.png",
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
}}
data:extend {{
    type = "recipe",
    name = "aop-lava-demineralization",
    icon = "__Age-of-Production-Graphics__/graphics/icons/lava-demineralization.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "fluid", name = "lava",      amount = 750},
    },
    results = {
        {type = "item", name = "stone", amount_min = 25, amount_max= 75},
        {type = "fluid", name = "lava", amount = 100},
    },
    allow_productivity = true,
    category = "advanced-metallurgy",
    allow_quality = false,
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-direct-molten-copper",
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-copper.png",
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
    icon = "__Age-of-Production-Graphics__/graphics/icons/direct-molten-iron.png",
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
data:extend {{
    type = "recipe",
    name = "aop-copper-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/copper-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "copper-plate",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-copper-cable-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/copper-cable-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "copper-cable",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-copper", amount = 5},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-iron-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "iron-plate",      amount = 40},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-steel-plate-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/steel-plate-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 32,
    ingredients = {
        {type = "item", name = "steel-plate",      amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 30},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-iron-gear-wheel-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-gear-wheel-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-gear-wheel",      amount = 20},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 10},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-iron-stick-melting",
    icon = "__Age-of-Production-Graphics__/graphics/icons/iron-stick-melting.png",
    subgroup = "aop-advanced-metallurgy",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-stick",      amount = 80},
    },
    results = {
        {type = "fluid", name = "molten-iron", amount = 20},
    },
    allow_productivity = false,
    category = "advanced-metallurgy",
    auto_recycle = false,
    show_amount_in_title = false,
}}