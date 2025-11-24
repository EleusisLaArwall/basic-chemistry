local sg_amount_plastic_bar = settings.startup["bc-fc-plastic-bar"].value
local sp_amount_electronic_circuit = settings.startup["bc-fc-electronic-circuit"].value
local sp_amount_battery = settings.startup["bc-fc-battery"].value
local sp_amount_transport_belt = settings.startup["bc-fc-transport-belt"].value
local sp_amount_splitter = settings.startup["bc-fc-splitter"].value
local sp_amount_inserter = settings.startup["bc-fc-inserter"].value
local sp_amount_medium_electric_pole = settings.startup["bc-fc-medium-electric-pole"].value
local sp_amount_big_electric_pole = settings.startup["bc-fc-big-electric-pole"].value
local sp_amount_rail = settings.startup["bc-fc-rail"].value
local sp_amount_assembling_machine_1 = settings.startup["bc-fc-assembling-machine-1"].value

if settings.startup["bc-fc-overwrite"].value then
	sg_amount_plastic_bar = 10
	sp_amount_electronic_circuit = 1
	sp_amount_battery = 1
	sp_amount_transport_belt = 2
	sp_amount_splitter = 4
	sp_amount_inserter = 1
	sp_amount_medium_electric_pole = 2
	sp_amount_big_electric_pole = 5
	sp_amount_rail = 1
	sp_amount_assembling_machine_1 = 5
end

-- Add syn-gas to plastic.
if sg_amount_plastic_bar > 0 and settings.startup["bc-syn-gas-plastic-bar"].value then
	table.insert(data.raw["recipe"]["plastic-bar"].ingredients, {type="fluid", name="bc-syn-gas", amount=sg_amount_plastic_bar})
end
-- Add synthetic-plate to various stock recipes.
if sp_amount_electronic_circuit > 0 then
	table.insert(data.raw["recipe"]["electronic-circuit"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_electronic_circuit})
end
if sp_amount_battery > 0 then
	table.insert(data.raw["recipe"]["battery"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_battery})
end
if sp_amount_transport_belt > 0 then
	table.insert(data.raw["recipe"]["transport-belt"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_transport_belt})
end
if sp_amount_splitter > 0 then
	table.insert(data.raw["recipe"]["splitter"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_splitter})
end
if sp_amount_inserter > 0 then
	table.insert(data.raw["recipe"]["inserter"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_inserter})
end
-- Add synthetic-plate only without AAI. (With AAI small-iron-pole; See compat/aai-industry.lua)
if sp_amount_medium_electric_pole > 0 and not mods["aai-industry"] then
	table.insert(data.raw["recipe"]["electronic-circuit"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_medium_electric_pole})
end
if sp_amount_big_electric_pole > 0 then
	table.insert(data.raw["recipe"]["big-electric-pole"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_big_electric_pole})
end
-- Synthetic-plate for rails can be disabled via mod setting.
if sp_amount_rail > 0 and settings.startup["bc-rail-synthetic-plate"].value then
	table.insert(data.raw["recipe"]["rail"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_rail})
end
if sp_amount_assembling_machine_1 > 0 then
	table.insert(data.raw["recipe"]["assembling-machine-1"].ingredients, {type="item", name="bc-synthetic-plate", amount=sp_amount_assembling_machine_1})
end
