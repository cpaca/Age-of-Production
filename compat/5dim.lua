if not mods["5dim_automation"] then return end

for i = 2, 9 do
    data.raw['assembling-machine']['5d-chemical-plant-0' .. i]['crafting_categories'] = data.raw['assembling-machine']['chemical-plant']['crafting_categories']
    data.raw['assembling-machine']['5d-oil-refinery-0' .. i]['crafting_categories'] = data.raw['assembling-machine']['oil-refinery']['crafting_categories']
end

data.raw['assembling-machine']['5d-chemical-plant-10']['crafting_categories'] = data.raw['assembling-machine']['chemical-plant']['crafting_categories']
data.raw['assembling-machine']['5d-oil-refinery-10']['crafting_categories'] = data.raw['assembling-machine']['oil-refinery']['crafting_categories']


for i = 4, 9 do
    data.raw['assembling-machine']['5d-assembling-machine-0' .. i]['crafting_categories'] = data.raw['assembling-machine']['assembling-machine-3']['crafting_categories']
end

data.raw['assembling-machine']['5d-assembling-machine-10']['crafting_categories'] = data.raw['assembling-machine']['assembling-machine-3']['crafting_categories']