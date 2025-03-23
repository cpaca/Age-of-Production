data.raw["bool-setting"]["PlanetsLib-enable-temperature"].forced_value = true

if mods["wood-logistics"] then
  if data.raw["int-setting"]["wood-logistics-rail-cost"] then
    data.raw["int-setting"]["wood-logistics-rail-cost"].hidden = true
    data.raw["int-setting"]["wood-logistics-rail-cost"].default_value = 0
    data.raw["int-setting"]["wood-logistics-rail-cost"].allowed_values = {0}
  end
end
