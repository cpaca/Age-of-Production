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
