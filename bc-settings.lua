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
bc_settings.bc_simple_mode = settings.startup["bc-simple-mode"].value
bc_settings.bc_coal_amount = settings.startup["bc-coal-amount"].value
bc_settings.bc_syngas_ing_lqd = settings.startup["bc-syngas-ing-lqd"].value
bc_settings.bc_syn_gas_plastic_bar = settings.startup["bc-syn-gas-plastic-bar"].value
bc_settings.bc_natural_gas = settings.startup["bc-natural-gas"].value
bc_settings.bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value
bc_settings.bc_petroleum_gas_from_methane_gas = settings.startup["bc-petroleum-gas-from-methane-gas"].value
bc_settings.bc_extractor_pump = settings.startup["bc-extractor-pump"].value
bc_settings.bc_syn_gas_icon = settings.startup["bc-syn-gas-icon"].value
bc_settings.bc_methane_gas_icon = settings.startup["bc-methane-gas-icon"].value
bc_settings.bc_synthetic_plate_icon = settings.startup["bc-synthetic-plate-icon"].value
bc_settings.bc_fc_overwrite = settings.startup["bc-fc-overwrite"].value
--bc_settings. = settings.startup[""].value

--	Default 1. Sclae cloud-based icons
if string.find(bc_settings.bc_syn_gas_icon, "cloud") then
	bc_settings.bc_syn_gas_icon_scale = 1.2
end
if string.find(bc_settings.bc_methane_gas_icon, "cloud") then
	bc_settings.bc_methane_gas_icon_scale = 1.2
end

if mods["fdsl"] then
	bc_settings.bc_electronic_circuit_ing_iron_plate_remove = settings.startup["bc-electronic-circuit-ing-iron-plate-remove"].value
	bc_settings.bc_plastic_bar_ing_coal_remove = settings.startup["bc-plastic-bar-ing-coal-remove"].value
end

--	Default "bar". Change locale-string to "plate" for plate-icons
if string.find(bc_settings.bc_synthetic_plate_icon, "plate") then
	bc_settings.bc_synthetic_plate_locale = "plate"
end

--	Default "coal". If CI is installed use "crushed-coal" if available
if mods["crushing-industry"] then
	if settings.startup["crushing-industry-coal"].value then
		bc_settings.bc_coal_or_crushed = "crushed-coal"
	end
end

--	Default "water". Use 165°C Steam is enabled
if bc_settings.bc_syngas_ing_lqd then
	bc_settings.bc_syngas_ing_lqd_name = "steam"
	bc_settings.bc_syngas_ing_lqd_min_temp = 165
end

-- Read Full Control Mod Settings (unless defaults is checked)
if not bc_settings.bc_fc_overwrite then
	bc_settings.bc_fc_overwrite_methane_gas_name = settings.startup["bc-fc-overwrite-methane-gas-name"].value
--	colors
	bc_settings.bc_fc_color_syn_gas_base = settings.startup["bc-fc-color-syn-gas-base"].value
	bc_settings.bc_fc_color_syn_gas_flow = settings.startup["bc-fc-color-syn-gas-flow"].value
	bc_settings.bc_fc_color_natural_gas_base = settings.startup["bc-fc-color-natural-gas-base"].value
	bc_settings.bc_fc_color_natural_gas_flow = settings.startup["bc-fc-color-natural-gas-flow"].value
	bc_settings.bc_fc_color_methane_gas_base = settings.startup["bc-fc-color-methane-gas-base"].value
	bc_settings.bc_fc_color_methane_gas_flow = settings.startup["bc-fc-color-methane-gas-flow"].value
--	Base recipe changes (synthetic bar)
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
--	Recipe detailed
--	Syn-gas
	bc_settings.bc_fc_syn_gas_coal = settings.startup["bc-fc-syn-gas-coal"].value
	bc_settings.bc_fc_syn_gas_water = settings.startup["bc-fc-syn-gas-water"].value
	bc_settings.bc_fc_syn_gas_syn_gas = settings.startup["bc-fc-syn-gas-syn-gas"].value
	bc_settings.bc_fc_syn_gas_energy = settings.startup["bc-fc-syn-gas-energy"].value
--	Synthetic plate
	bc_settings.bc_fc_synthetic_plate_water = settings.startup["bc-fc-synthetic-plate-water"].value
	bc_settings.bc_fc_synthetic_plate_syn_gas = settings.startup["bc-fc-synthetic-plate-syn-gas"].value
	bc_settings.bc_fc_synthetic_plate_synthetic_plate = settings.startup["bc-fc-synthetic-plate-synthetic-plate"].value
	bc_settings.bc_fc_synthetic_plate_energy = settings.startup["bc-fc-synthetic-plate-energy"].value
--	Natural gas processing basic
	bc_settings.bc_fc_basic_natural_gas_processing_natural_gas = settings.startup["bc-fc-basic-natural-gas-processing-natural-gas"].value
	bc_settings.bc_fc_basic_natural_gas_processing_methane_gas = settings.startup["bc-fc-basic-natural-gas-processing-methane-gas"].value
	bc_settings.bc_fc_basic_natural_gas_processing_energy = settings.startup["bc-fc-basic-natural-gas-processing-energy"].value
--	Methane → Syn-gas
	bc_settings.bc_fc_syn_gas_from_methane_gas_methane_gas = settings.startup["bc-fc-syn-gas-from-methane-gas-methane-gas"].value
	bc_settings.bc_fc_syn_gas_from_methane_gas_water = settings.startup["bc-fc-syn-gas-from-methane-gas-water"].value
	bc_settings.bc_fc_syn_gas_from_methane_gas_syn_gas = settings.startup["bc-fc-syn-gas-from-methane-gas-syn-gas"].value
	bc_settings.bc_fc_syn_gas_from_methane_gas_energy = settings.startup["bc-fc-syn-gas-from-methane-gas-energy"].value
--	Natural gas processing advanced
	bc_settings.bc_fc_advanced_natural_gas_processing_natural_gas = settings.startup["bc-fc-advanced-natural-gas-processing-natural-gas"].value
	bc_settings.bc_fc_advanced_natural_gas_processing_water = settings.startup["bc-fc-advanced-natural-gas-processing-water"].value
	bc_settings.bc_fc_advanced_natural_gas_processing_methane_gas = settings.startup["bc-fc-advanced-natural-gas-processing-methane-gas"].value
	bc_settings.bc_fc_advanced_natural_gas_processing_petroleum_gas = settings.startup["bc-fc-advanced-natural-gas-processing-petroleum-gas"].value
	bc_settings.bc_fc_advanced_natural_gas_processing_energy = settings.startup["bc-fc-advanced-natural-gas-processing-energy"].value
--	Petroleum → Methane
	bc_settings.bc_fc_petroleum_gas_cracking_water = settings.startup["bc-fc-petroleum-gas-cracking-water"].value
	bc_settings.bc_fc_petroleum_gas_cracking_petroleum_gas = settings.startup["bc-fc-petroleum-gas-cracking-petroleum-gas"].value
	bc_settings.bc_fc_petroleum_gas_cracking_methane_gas = settings.startup["bc-fc-petroleum-gas-cracking-methane-gas"].value
	bc_settings.bc_fc_petroleum_gas_cracking_energy = settings.startup["bc-fc-petroleum-gas-cracking-energy"].value
--	Methane → Solid Fuel
	bc_settings.bc_fc_solid_fuel_from_methane_gas_methane_gas = settings.startup["bc-fc-solid-fuel-from-methane-gas-methane-gas"].value
	bc_settings.bc_fc_solid_fuel_from_methane_gas_solid_fuel = settings.startup["bc-fc-solid-fuel-from-methane-gas-solid-fuel"].value
	bc_settings.bc_fc_solid_fuel_from_methane_gas_energy = settings.startup["bc-fc-solid-fuel-from-methane-gas-energy"].value
--	Methane → Petroleum
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_methane_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-methane-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_syn_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-syn-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_petroleum_gas = settings.startup["bc-fc-petroleum-gas-from-methane-gas-petroleum-gas"].value
	bc_settings.bc_fc_petroleum_gas_from_methane_gas_energy = settings.startup["bc-fc-petroleum-gas-from-methane-gas-energy"].value
--	Wood → Syn-gas
	bc_settings.bc_fc_syn_gas_from_wood = settings.startup["bc-fc-syn-gas-from-wood"].value
	bc_settings.bc_fc_syn_gas_from_wood_water = settings.startup["bc-fc-syn-gas-from-wood-water"].value
	bc_settings.bc_fc_syn_gas_from_wood_syn_gas = settings.startup["bc-fc-syn-gas-from-wood-syn-gas"].value
	bc_settings.bc_fc_syn_gas_from_wood_energy = settings.startup["bc-fc-syn-gas-from-wood-energy"].value
--	MODS
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

-- Hide auto_barrel for natural and methane gas if disabled
if not bc_settings.bc_natural_gas and not bc_settings.bc_natural_gas_from_oil then
	bc_settings.bc_fluid_auto_barrel_natural_gas = false
	bc_settings.bc_fluid_auto_barrel_methane_gas = false
end

if bc_settings.bc_simple_mode then
	bc_settings.bc_syn_gas_plastic_bar = false
	bc_settings.bc_natural_gas = false
	bc_settings.bc_natural_gas_from_oil = false
	bc_settings.bc_petroleum_gas_from_methane_gas = false
	bc_settings.bc_fc_plastic_bar = 0
	bc_settings.bc_fc_syn_gas_from_wood = 0
	bc_settings.bc_fluid_auto_barrel_syn_gas = false
	bc_settings.bc_fluid_auto_barrel_natural_gas = false
	bc_settings.bc_fluid_auto_barrel_methane_gas = false
end

return bc_settings
