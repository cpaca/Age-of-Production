data:extend {{
    type = "recipe",
    name = "aop-yumako-planting",
    icon = "__Age-of-Production__/graphics/icons/yumako-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 600,
    ingredients = {
        {type = "item", name = "yumako-seed",      amount = 1},
        {type = "item", name = "nutrients", amount = 30},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "yumako", amount = 200},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-jellynut-planting",
    icon = "__Age-of-Production__/graphics/icons/jellynut-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 600,
    ingredients = {
        {type = "item", name = "jellynut-seed",      amount = 1},
        {type = "item", name = "nutrients", amount = 30},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "jellynut", amount = 200},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}}
}}
data:extend {{
    type = "recipe",
    name = "aop-tree-planting",
    icon = "__Age-of-Production__/graphics/icons/tree-planting.png",
    subgroup = "aop-advanced-agriculture",
    enabled = false,
    energy_required = 1200,
    ingredients = {
        {type = "item", name = "tree-seed",      amount = 1},
        {type = "item", name = "aop-biomass", amount = 20},
        {type = "fluid", name = "water", amount = 50},
    },
    results = {
        {type = "item", name = "wood", amount = 16},
    },
    allow_productivity = false,
    category = "agriculture",
    auto_recycle = false,
    show_amount_in_title = false,
}}
data:extend {{
    type = "recipe",
    name = "aop-yumako-seed-removal",
    icon = "__Age-of-Production__/graphics/icons/yumako-seed-removal.png",
    subgroup = "agriculture-processes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yumako",      amount = 5},
    },
    results = {
        {type = "item", name = "yumako-seed", amount = 5, probability = 0.5},
    },
    allow_productivity = false,
    category = "biochemistry-or-organic-or-hand-crafting",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.976, g = 0.006, b = 0.310, a = 1.000},
      secondary = {r = 0.805, g = 0.701, b = 0.293, a = 1.000},

    }
}}
data:extend {{
    type = "recipe",
    name = "aop-jellynut-seed-removal",
    icon = "__Age-of-Production__/graphics/icons/jellynut-seed-removal.png",
    subgroup = "agriculture-processes",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "jellynut",      amount = 5},
    },
    results = {
        {type = "item", name = "jellynut-seed", amount = 5, probability = 0.5},
    },
    allow_productivity = false,
    category = "biochemistry-or-organic-or-hand-crafting",
    auto_recycle = false,
    show_amount_in_title = false,
    surface_conditions = {{property = "pressure", min = 2000, max = 2000}},
    crafting_machine_tint =
    {
      primary = {r = 0.405, g = 0.701, b = 0.693, a = 1.000},
      secondary = {r = 0.876, g = 0.406, b = 0.710, a = 1.000},
    }
}}