if mods["aai-industry"] then
	table.insert(data.raw.technology["burner-mechanics"].effects, {recipe = "pipe", type = "unlock-recipe"})
	table.insert(data.raw.technology["burner-mechanics"].effects, {recipe = "burner-offshore-pump", type = "unlock-recipe"})
	table.insert(data.raw.technology["burner-mechanics"].effects, {recipe = "bc-chemical-reactor", type = "unlock-recipe"})
	table.insert(data.raw.technology["burner-mechanics"].effects, {recipe = "bc-syn-gas", type = "unlock-recipe"})
	table.insert(data.raw.technology["burner-mechanics"].effects, {recipe = "bc-synthetic-plate", type = "unlock-recipe"})
end
