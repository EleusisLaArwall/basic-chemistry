-- Without AAI, unlock at start. (For AAI see compat/aai-industry-updates.lua)
if mods["any-planet-start"] then
	if settings.startup["aps-planet"].value == "vulcanus" then
		table.insert(data.raw.technology["calcite-processing"].effects, {recipe = "bc-chemical-reactor", type = "unlock-recipe"})
		table.insert(data.raw.technology["calcite-processing"].effects, {recipe = "bc-syn-gas", type = "unlock-recipe"})
	end
end
