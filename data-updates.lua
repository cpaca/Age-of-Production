require "compat.galore"
require "compat.5dim"
require "compat.wood-universe"
require "compat.planets"
require "compat.qualitybiolab"
require "compat.nuclear-science"
require "compat.aai"

local function add_crafting_categories(entity_type, entity_name, categories)
  local entity = data.raw[entity_type][entity_name]
  for _,category in pairs(categories) do
    table.insert(entity.crafting_categories, category)
  end
end
if mods["bobassembly"] then 
  if mods["aai-industry"] then return end
      if settings.startup["bobmods-assembly-burner"].value then
      add_crafting_categories("assembling-machine", "bob-burner-assembling-machine", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "electronics-or-electromechanics", "pressing-or-electromechanics", "ammunition-or-crafting", "woodworking-or-organic-or-assembling", "organic-or-assembling-or-electromechanics"})
      add_crafting_categories("assembling-machine", "bob-steam-assembling-machine", {"advanced-centrifuging-or-crafting", "advanced-centrifuging-or-crafting-or-electromechanics", "quantum-assembling-or-crafting", "woodworking-or-crafting", "electromechanics-or-crafting", "biochemistry-or-organic-or-assembling", "woodworking-or-organic-or-assembling", "petrochemistry-or-organic-or-assembling" , "electronics-or-electromechanics", "pressing-or-electromechanics", "quantum-assembling-or-crafting-with-fluid", "advanced-centrifuging-or-crafting-with-fluid", "ammunition-or-crafting", "synthesis-or-crafting-with-fluid", "organic-or-assembling-or-electromechanics", "ammunition-or-crafting-with-fluid"})
  end
end

 if mods["fulgora-coralmium-agriculture"] then
 if not mods["wood-industry"] then
  add_crafting_categories("assembling-machine", "chemical-plant", {"woodworking-or-organic"})
 end
 if mods["wood-industry"] then
  data.raw.recipe["burnt-spoilage"].category = "organic-or-kiln-smelting"
  add_crafting_categories("assembling-machine", "aop-lumber-mill", {"organic-or-kiln-smelting"})
 end
end

if settings.startup["aop-prevent-loops"].value then
    data.raw["recipe"]["ice-melting"].allow_productivity = false
    data.raw["recipe"]["aop-calcite-synthesis"].allow_productivity = false
    data.raw["recipe"]["aop-stone-synthesis"].allow_productivity = false
    end