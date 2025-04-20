require "compat.foundry-restructuring"

local meld = require("meld")
            data.raw["lab"]["aop-quantum-computer"].inputs = meld(data.raw["lab"]["aop-quantum-computer"].inputs, data.raw["lab"]["lab"].inputs)

data.raw.recipe["nutrients-recycling"].results = {
                {
                  type = "item",
                  name = "spoilage",
                  amount = 2.5,
                  extra_count_fraction = 0.5
                }
          }
          data.raw.recipe["nutrients-recycling"].energy_required = 0.125