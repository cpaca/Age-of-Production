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
    add_crafting_categories("assembling-machine", "aop-atomic-enricher", {"centrifuging-or-crafting"})
    add_crafting_categories("assembling-machine", "atan-atom-forge", {"advanced-centrifuging", "advanced-centrifuging-or-centrifuging", "advanced-centrifuging-or-crafting-or-electromechanics", "advanced-centrifuging-or-crafting-with-fluid"})
end