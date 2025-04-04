if not mods["aai-industry"] then return end

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

add_crafting_categories("assembling-machine", "burner-assembling-machine", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "ammunition-or-crafting", "woodworking-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"})

data.raw.technology["aop-arc-furnace"].prerequisites = {"metallurgic-science-pack","industrial-furnace"}
if mods["corrundum"] then 
    data.raw.technology["aop-arc-furnace"].prerequisites = {"metallurgic-science-pack","electrochemical-science-pack", "industrial-furnace"}
    data.raw.technology["aop-arc-furnace"].unit.ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"electrochemical-science-pack",1}
    }
end