-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")

-- Add syn-gas to plastic.
if bc_settings.bc_fc_plastic_bar > 0 and bc_settings.bc_syn_gas_plastic_bar then
	table.insert(data.raw["recipe"]["plastic-bar"].ingredients, {type="fluid", name="bc-syn-gas", amount=bc_settings.bc_fc_plastic_bar})
end
-- Add synthetic-plate to various stock recipes.
if bc_settings.bc_fc_electronic_circuit > 0 then
	table.insert(data.raw["recipe"]["electronic-circuit"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_electronic_circuit})
end
if bc_settings.bc_fc_battery > 0 then
	table.insert(data.raw["recipe"]["battery"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_battery})
end
if bc_settings.bc_fc_transport_belt > 0 then
	table.insert(data.raw["recipe"]["transport-belt"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_transport_belt})
end
if bc_settings.bc_fc_splitter > 0 then
	table.insert(data.raw["recipe"]["splitter"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_splitter})
end
if bc_settings.bc_fc_inserter > 0 then
	table.insert(data.raw["recipe"]["inserter"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_inserter})
end
-- Add synthetic-plate only without AAI. (With AAI small-iron-pole; See compat/aai-industry.lua)
if bc_settings.bc_fc_medium_electric_pole > 0 and not mods["aai-industry"] then
	table.insert(data.raw["recipe"]["medium-electric-pole"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_medium_electric_pole})
end
if bc_settings.bc_fc_big_electric_pole > 0 then
	table.insert(data.raw["recipe"]["big-electric-pole"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_big_electric_pole})
end
if bc_settings.bc_fc_rail > 0 then
	table.insert(data.raw["recipe"]["rail"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_rail})
end
if bc_settings.bc_fc_assembling_machine_1 > 0 then
	table.insert(data.raw["recipe"]["assembling-machine-1"].ingredients, {type="item", name="bc-synthetic-plate", amount=bc_settings.bc_fc_assembling_machine_1})
end
