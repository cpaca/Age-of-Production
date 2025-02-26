local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend(
{
    {
        type = "item",
        name = "aop-biomass",
        icon = "__Age-of-Production-Graphics__/graphics/icons/biomass.png",
        subgroup = "aop-biomass",
        inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
        pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
        drop_sound = space_age_item_sounds.agriculture_inventory_move,
        fuel_category = "nutrients",
        fuel_value = "0.75MJ",
        stack_size = 100,
        default_import_location = "nauvis",
        spoil_ticks = 36000,
        spoil_result = "spoilage",
        weight = 100 
      },
}
)
data:extend {{
    type = "recipe",
    name = "aop-biomass-from-wood",
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-from-wood.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "wood",      amount = 2},
        {type = "item", name = "spoilage", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biomass", amount = 5},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
}}
data:extend {{
    type = "recipe",
    name = "aop-biomass-from-seeds",
    icon = "__Age-of-Production-Graphics__/graphics/icons/biomass-from-seeds.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "yumako-seed",      amount = 2},
        {type = "item", name = "jellynut-seed",      amount = 2},
        {type = "item", name = "spoilage", amount = 5},
    },
    results = {
        {type = "item", name = "aop-biomass", amount = 5},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
}}
data:extend {{
    type = "recipe",
    name = "aop-nutrients-from-biomass",
    icon = "__Age-of-Production-Graphics__/graphics/icons/nutrients-from-biomass.png",
    subgroup = "aop-biomass",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "aop-biomass",      amount = 4},
    },
    results = {
        {type = "item", name = "nutrients", amount = 2, percent_spoiled=0.75},
    },
    allow_productivity = true,
    category = "woodworking",
    auto_recycle = false
}}