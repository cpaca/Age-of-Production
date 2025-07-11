if not mods["space_age_galore"] then return end

local exclusions = { "vgal-bulk-inserter-chemical-science-pack", "vgal-big-mining-drill-calcite-metallurgic-science-pack", "vgal-ammonia-agricultural-science-pack", "vgal-sulfur-petroleum-gas-agricultural-science-pack", "vgal-electronic-circuit-agricultural-science-pack"  } -- Add recipe names to exclude

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
            recipe.category = "quantum-assembling-or-crafting"
        end
    end
end
data.raw.recipe["vgal-bulk-inserter-chemical-science-pack"].category = "quantum-assembling-or-crafting-with-fluid"
data.raw.recipe["vgal-processing-unit-nuclear-reactor"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["vgal-processing-unit-centrifuge"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["vgal-uranium-238-low-density-structure"].category = "advanced-centrifuging-or-crafting"
data.raw.recipe["vgal-wood-electronic-circuit"].category = "woodworking"
data.raw.recipe["vgal-wood-heavy-oil-electronic-circuit"].category = "woodworking"
data.raw.recipe["vgal-steel-plate-uranium-fuel-cell"].category = "advanced-centrifuging-or-crafting-with-fluid"
data.raw.recipe["vgal-low-density-structure-uranium-fuel-cell"].category = "advanced-centrifuging-or-crafting-with-fluid"
data.raw.recipe["vgal-petroleum-gas-rocket-fuel"].category = "petrochemistry-or-organic-or-assembling"
data.raw.recipe["vgal-sulfuric-acid-sulfur"].category = "hydraulics-or-chemistry-or-cryogenics"
data.raw.recipe["vgal-pentapod-egg-bioflux-stone"].category = "biochemistry-or-organic"
data.raw.recipe["vgal-wood-carbon"].category = "woodworking-or-organic"
data.raw.recipe["vgal-solid-fuel-carbon"].category = "petrochemistry-or-chemistry-or-cryogenics"
data.raw.recipe["vgal-solid-fuel-sulfuric-acid-carbon"].category = "petrochemistry-or-chemistry-or-cryogenics"
data.raw.recipe["vgal-carbon-sulfur-lubricant"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-carbon-lubricant"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-plastic-bar-lubricant"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-calcite-stone-holmium-solution"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-jelly-electronic-circuit"].category = "biochemistry-or-organic"
data.raw.recipe["vgal-processing-unit-tank"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-roboport"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-modular-armor"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-low-density-structure-power-armor"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-low-density-structure-battery-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-belt-immunity-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-personal-roboport-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-night-vision-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-processing-unit-energy-shield-equipment"].category = "electromechanics-or-crafting"
data.raw.recipe["vgal-steam-heavy-oil-light-oil"].category = "petrochemistry"
data.raw.recipe["vgal-steam-light-oil-petroleum-gas"].category = "petrochemistry"
data.raw.recipe["vgal-steam-advanced-oil-processing"].category = "petrochemistry"
data.raw.recipe["vgal-steam-crude-oil-sulfur"].category = "petrochemistry"
data.raw.recipe["vgal-coal-uranium-235-nuclear-fuel"].category = "advanced-centrifuging"
data.raw.recipe["vgal-jelly-sulfur-lubricant"].category = "hydraulics-or-organic"
data.raw.recipe["vgal-water-coal-ammonia"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-calcite-sulfuric-acid-ammonia"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-ammonia-water-crude-oil"].category = "petrochemistry-or-organic-or-chemistry"
data.raw.recipe["vgal-pentapod-egg-logistic-robot"].category = "organic-or-electromechanics"
data.raw.recipe["vgal-pentapod-egg-construction-robot"].category = "organic-or-electromechanics"
data.raw.recipe["vgal-petroleum-gas-coal-heavy-oil"].category = "petrochemistry-or-organic-or-chemistry"
data.raw.recipe["vgal-tungsten-plate-piercing-rounds-magazine"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-tungsten-plate-cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-tungsten-plate-explosive-cannon-shell"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-tungsten-plate-piercing-shotgun-shell"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-plastic-bar-railgun-ammo"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-explosives-grenade"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-crude-oil-thruster-fuel"].category = "hydraulics"
data.raw.recipe["vgal-ammonia-thruster-oxidizer"].category = "hydraulics"
data.raw.recipe["vgal-biter-egg-defender-capsule"].category = "organic-or-assembling-or-electromechanics"
data.raw.recipe["vgal-pentapod-egg-defender-capsule"].category = "organic-or-assembling-or-electromechanics"
data.raw.recipe["vgal-holmium-plate-railgun-ammo"].category = "ammunition-or-crafting-with-fluid"
data.raw.recipe["vgal-superconductor-railgun-ammo"].category = "ammunition-or-crafting"
data.raw.recipe["vgal-ice-solid-fuel-ammonia"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-scrap-sulfuric-acid-holmium-solution"].category = "hydraulics-or-chemistry"
data.raw.recipe["vgal-thruster-oxidizer-thruster-fuel-steam"].category = "hydraulics-or-chemistry-or-cryogenics"

local tech = data.raw.technology["electronics"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-heavy-oil-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-crude-oil-sulfur" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-advanced-oil-processing" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-heavy-oil-light-oil" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-light-oil-petroleum-gas" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["kovarex-enrichment-process"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-coal-uranium-235-nuclear-fuel" then
      table.remove(tech.effects, i)
    end
end

local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end
  
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-electronic-circuit"})
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-heavy-oil-electronic-circuit"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-crude-oil-sulfur"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-advanced-oil-processing"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-heavy-oil-light-oil"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-light-oil-petroleum-gas"})
  add_tech_effect("aop-atomic-enricher", {type = "unlock-recipe", recipe = "vgal-coal-uranium-235-nuclear-fuel"})

  local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-crude-oil-thruster-fuel" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-ammonia-thruster-oxidizer" then
      table.remove(tech.effects, i)
    end
end
  if mods["maraxsis"] then
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  else
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  end
