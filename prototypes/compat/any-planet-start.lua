-- Compatibility with any-planet-start
if mods["any-planet-start"] then
	-- Tech compatibility for start on Vulcanus
	if settings.startup["aps-planet"].value == "vulcanus" then
		table.insert(data.raw.technology["calcite-processing"].effects, {recipe = "bc-chemical-reactor", type = "unlock-recipe"})
		table.insert(data.raw.technology["calcite-processing"].effects, {recipe = "bc-syn-gas", type = "unlock-recipe"})
	end
end
