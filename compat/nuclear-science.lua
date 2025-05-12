local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

  local function add_crafting_categories(entity_type, entity_name, categories)
    local entity = data.raw[entity_type][entity_name]
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end
  local function add_player_crafting_categories(categories)
    local entity = data.raw.character.character
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end
if mods["atan-nuclear-science"] then 

    if settings.startup["aop-merge-atomic-enricher"].value then
        data.raw["assembling-machine"]["aop-atomic-enricher"].hidden= true
        data.raw["item"]["aop-atomic-enricher"].hidden =  true
        data.raw["item"]["aop-atomic-enricher"].hidden_in_factoriopedia =  true
        data.raw["recipe"]["aop-atomic-enricher"] = nil
        data.raw["recipe"]["aop-atomic-enricher"] = nil
        local tech = data.raw.technology["aop-atomic-enricher"]
        for i, effect in ipairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == "aop-atomic-enricher" then
        table.remove(tech.effects, i)
        end
        end
    end
    data.raw.technology["aop-atomic-enricher"].prerequisites = {"atomic-bomb", "quantum-processor"}
    add_crafting_categories("assembling-machine", "aop-atomic-enricher", {"centrifuging-or-crafting", "quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging", "centrifuging-or-electromechanics"})
    add_crafting_categories("assembling-machine", "atan-atom-forge", {"advanced-centrifuging", "advanced-centrifuging-or-centrifuging", "advanced-centrifuging-or-crafting-or-electromechanics", "advanced-centrifuging-or-crafting-with-fluid", "quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging", "centrifuging-or-electromechanics"})
    add_crafting_categories("assembling-machine", "aop-quantum-assembler", {"quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging"})
    add_crafting_categories("assembling-machine", "aop-electromechanic-facility", {"centrifuging-or-electromechanics"})
    add_crafting_categories("assembling-machine", "centrifuge", {"centrifuging-or-electromechanics"})
    add_crafting_categories("assembling-machine", "assembling-machine-1", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging"})
    add_crafting_categories("assembling-machine", "assembling-machine-2", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging"})
    add_crafting_categories("assembling-machine", "assembling-machine-3", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging"})
    add_player_crafting_categories({"quantum-assembling-or-crafting-or-advanced-centrifuging"})
    data.raw.recipe["automation-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["logistic-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["chemical-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["military-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["production-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["utility-science-pack"].category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
    data.raw.recipe["fusion-reactor-equipment"].category = "centrifuging-or-electromechanics"
    data.raw.recipe["fission-reactor-equipment"].category = "centrifuging-or-electromechanics"
    data.raw["assembling-machine"]["atan-atom-forge"].fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { -1.5, -2.5 } } }
    },
    {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        secondary_draw_orders = { north = -1 },
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 1.5, -2.5 } } }
    },
    {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        secondary_draw_orders = { north = -1 },
        volume = 500,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { -1.5, 2.5 } } }
    },
    {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = assembler2pipepictures(),
        secondary_draw_orders = { north = -1 },
        volume = 500,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 1.5, 2.5 } } }
    },
  }
  data.raw["assembling-machine"]["atan-atom-forge"].fluid_boxes_off_when_no_fluid_recipe = true
    data:extend(
{
  {
    type = "recipe-category",
    name = "quantum-assembling-or-crafting-or-advanced-centrifuging",
  },
  {
    type = "recipe-category",
    name = "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging",
  },
  {
    type = "recipe-category",
    name = "centrifuging-or-electromechanics",
  },
})
if mods["space_age_galore"] then

local exclusions = { "vgal-bulk-inserter-chemical-science-pack", "vgal-big-mining-drill-calcite-metallurgic-science-pack", "vgal-ammonia-agricultural-science-pack" } -- Add recipe names to exclude

for _, recipe in pairs(data.raw.recipe) do
    if recipe.name:find("^vgal-.*%-science%-pack$") then
        local exclude = false
        for _, excluded_name in ipairs(exclusions) do
            if recipe.name == excluded_name then
                exclude = true
                break
            end
        end
        if not exclude then
            recipe.category = "quantum-assembling-or-crafting-or-advanced-centrifuging"
        end
    end
end
data.raw.recipe["vgal-bulk-inserter-chemical-science-pack"].category = "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging"
end

if mods["bobassembly"] then 
      add_crafting_categories("assembling-machine", "bob-burner-assembling-machine", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging"})
      add_crafting_categories("assembling-machine", "bob-steam-assembling-machine", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging", "quantum-assembling-or-crafting-with-fluid-or-advanced-centrifuging"})
    end
if mods["aai-industry"] then
  add_crafting_categories("assembling-machine", "burner-assembling-machine", {"centrifuging-or-electromechanics", "quantum-assembling-or-crafting-or-advanced-centrifuging"})
end
end