data.raw["bool-setting"]["PlanetsLib-enable-temperature"].forced_value = true

if mods["wood-logistics"] then
  if data.raw["int-setting"]["wood-logistics-rail-cost"] then
    data.raw["int-setting"]["wood-logistics-rail-cost"].hidden = true
    data.raw["int-setting"]["wood-logistics-rail-cost"].default_value = 0
    data.raw["int-setting"]["wood-logistics-rail-cost"].allowed_values = {0}
  end
end
if mods["maraxsis"] then
  data:extend({
    {
        type = "bool-setting",
        name = "aop-merge-hydro",
        setting_type = "startup",
        default_value = true
    }
  })
end
