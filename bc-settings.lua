local bc_settings = require ("bc-defaults")

-- Methane gas name
if bc_settings.bc_fc_overwrite_methane_gas_name or mods["scrap-chemistry"] then
	bc_settings.bc_methane_gas_name = "methane"
end
if mods["scrap-chemistry"] then
	bc_settings.bc_fluid_box_methane_gas = 3
	bc_settings.bc_fluid_box_petroleum_gas = 1
end

-- Read Mod Settings
bc_settings.bc_coal_amount = settings.startup["bc-coal-amount"].value
bc_settings.bc_syn_gas_plastic_bar = settings.startup["bc-syn-gas-plastic-bar"].value
bc_settings.bc_natural_gas = settings.startup["bc-natural-gas"].value
bc_settings.bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value
bc_settings.bc_petroleum_gas_from_methane_gas = settings.startup["bc-petroleum-gas-from-methane-gas"].value
bc_settings.bc_extractor_pump = settings.startup["bc-extractor-pump"].value
bc_settings.bc_synthetic_plate_icon = settings.startup["bc-synthetic-plate-icon"].value
bc_settings.bc_fc_overwrite = settings.startup["bc-fc-overwrite"].value
-- = settings.startup[""].value

-- Read Full Control Mod Settings (unless defaults is checked)
if not bc_settings.bc_fc_overwrite then
	bc_settings.bc_fc_overwrite_methane_gas_name = settings.startup["bc-fc-overwrite-methane-gas-name"].value
	bc_settings.bc_fc_syn_gas_coal = settings.startup["bc-fc-syn-gas-coal"].value
	bc_settings.bc_fc_syn_gas_water = settings.startup["bc-fc-syn-gas-water"].value
	bc_settings.bc_fc_syn_gas_syn_gas = settings.startup["bc-fc-syn-gas-syn-gas"].value
	bc_settings.bc_fc_syn_gas_energy = settings.startup["bc-fc-syn-gas-energy"].value
	bc_settings.bc_fc_synthetic_plate_water = settings.startup["bc-fc-synthetic-plate-water"].value
	bc_settings.bc_fc_synthetic_plate_syn_gas = settings.startup["bc-fc-synthetic-plate-syn-gas"].value
	bc_settings.bc_fc_synthetic_plate_synthetic_plate = settings.startup["bc-fc-synthetic-plate-synthetic-plate"].value
	bc_settings.bc_fc_synthetic_plate_energy = settings.startup["bc-fc-synthetic-plate-energy"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_methane_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-methane-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_syn_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-syn-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_petroleum_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-petroleum-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_energy = settings.startup["bc-fc-petroleum-gas-from-methane-gas-energy"].value
	bc_settings.bc_fc_plastic_bar = settings.startup["bc-fc-plastic-bar"].value
	bc_settings.bc_fc_electronic_circuit = settings.startup["bc-fc-electronic-circuit"].value
	bc_settings.bc_fc_battery = settings.startup["bc-fc-battery"].value
	bc_settings.bc_fc_transport_belt = settings.startup["bc-fc-transport-belt"].value
	bc_settings.bc_fc_splitter = settings.startup["bc-fc-splitter"].value
	bc_settings.bc_fc_inserter = settings.startup["bc-fc-inserter"].value
	bc_settings.bc_fc_medium_electric_pole = settings.startup["bc-fc-medium-electric-pole"].value
	bc_settings.bc_fc_big_electric_pole = settings.startup["bc-fc-big-electric-pole"].value
	bc_settings.bc_fc_rail = settings.startup["bc-fc-rail"].value
	bc_settings.bc_fc_assembling_machine_1 = settings.startup["bc-fc-assembling-machine-1"].value
	bc_settings.bc_fc_syn_gas_from_wood = settings.startup["bc-fc-syn-gas-from-wood"].value
	bc_settings.bc_fc_syn_gas_from_wood_water = settings.startup["bc-fc-syn-gas-from-wood-water"].value
	bc_settings.bc_fc_syn_gas_from_wood_syn_gas = settings.startup["bc-fc-syn-gas-from-wood-syn-gas"].value
	bc_settings.bc_fc_syn_gas_from_wood_energy = settings.startup["bc-fc-syn-gas-from-wood-energy"].value
	if mods["aai-industry"] then
		bc_settings.bc_aai_remove_electronic_circuit_wood = settings.startup["bc-aai-remove-electronic-circuit-wood"].value
		bc_settings.bc_aai_remove_stone_tablet = settings.startup["bc-aai-remove-stone-tablet"].value
	end
	if mods["aai-industry"] or mods["crushing-industry"] then
		bc_settings.bc_aai_more_glass_usage = settings.startup["bc-aai-more-glass-usage"].value
	end
	if mods["scrap-industry"] then
		bc_settings.bc_si_synthetic_scrap = settings.startup["bc-si-synthetic-scrap"].value
	end
--	 = settings.startup[""].value
end

return bc_settings
