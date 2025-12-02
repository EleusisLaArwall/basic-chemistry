-- Without AAI, unlock at start. (For AAI see compat/aai-industry-updates.lua)
if not mods["aai-industry"] then
	table.insert(data.raw.technology["electronics"].effects, {recipe = "bc-synthetic-plate", type = "unlock-recipe"})
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-chemical-reactor", type = "unlock-recipe"})
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-syn-gas", type = "unlock-recipe"})
end

if settings.startup["bc-petroleum-gas-from-syn-gas"].value then
	table.insert(data.raw.technology["coal-liquefaction"].effects, {recipe = "bc-petroleum-gas-from-syn-gas", type = "unlock-recipe"})
end

if settings.startup["bc-natural-gas"].value then
	table.insert(data.raw.technology["oil-gathering"].effects, {recipe = "bc-basic-natural-gas-processing", type = "unlock-recipe"})
	table.insert(data.raw.technology["advanced-oil-processing"].effects, {recipe = "bc-advanced-natural-gas-processing", type = "unlock-recipe"})
	-- IF mod settings "natural-gas" AND "natural-gas-from-oil" are TRUE:
	if settings.startup["bc-natural-gas-from-oil"].value then
		table.insert(data.raw.technology["advanced-oil-processing"].effects, {recipe = "bc-advanced-oil-processing-with-gas", type = "unlock-recipe"})
	end
end

if settings.startup["bc-fc-syn-gas-from-wood"].value > 0 then
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-syn-gas-from-wood", type = "unlock-recipe"})
end
