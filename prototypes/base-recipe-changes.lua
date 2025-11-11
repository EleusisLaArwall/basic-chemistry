-- Add syn-gas to plastic.
if settings.startup["bc-syn-gas-plastic-bar"].value then
	table.insert(data.raw["recipe"]["plastic-bar"].ingredients, {type="fluid", name="bc-syn-gas", amount=10})
end
-- Add synthetic-plate to various stock recipes.
table.insert(data.raw["recipe"]["electronic-circuit"].ingredients, {type="item", name="bc-synthetic-plate", amount=1})
table.insert(data.raw["recipe"]["battery"].ingredients, {type="item", name="bc-synthetic-plate", amount=1})
table.insert(data.raw["recipe"]["transport-belt"].ingredients, {type="item", name="bc-synthetic-plate", amount=2})
table.insert(data.raw["recipe"]["splitter"].ingredients, {type="item", name="bc-synthetic-plate", amount=4})
table.insert(data.raw["recipe"]["inserter"].ingredients, {type="item", name="bc-synthetic-plate", amount=1})
-- Add synthetic-plate only without AAI. (With AAI small-iron-pole; See compat/aai-industry.lua)
if not mods["aai-industry"] then
	table.insert(data.raw["recipe"]["medium-electric-pole"].ingredients, {type="item", name="bc-synthetic-plate", amount=2})
end
table.insert(data.raw["recipe"]["big-electric-pole"].ingredients, {type="item", name="bc-synthetic-plate", amount=5})
-- Synthetic-plate for rails can be disabled via mod setting.
if settings.startup["bc-rail-synthetic-plate"].value then
	table.insert(data.raw["recipe"]["rail"].ingredients, {type="item", name="bc-synthetic-plate", amount=1})
end
table.insert(data.raw["recipe"]["assembling-machine-1"].ingredients, {type="item", name="bc-synthetic-plate", amount=5})
