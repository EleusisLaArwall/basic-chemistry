local bc_defaults = {
-- ================================================== General settings
	bc_simple_mode = false,
	bc_coal_amount = "default",
	bc_syngas_ing_lqd = false,
	bc_electronic_circuit_ing_iron_plate_remove = false,
	bc_plastic_bar_ing_coal_remove = false,
	bc_syn_gas_plastic_bar = true,
	bc_natural_gas = true,
	bc_natural_gas_from_oil = true,
	bc_petroleum_gas_from_methane_gas = false,
	bc_extractor_pump = false,
	bc_synthetic_plate_icon = "bar-brown",
	bc_fc_overwrite = false,
-- ================================================== Full Control
	bc_fc_overwrite_methane_gas_name = false,
-- ================================================== bc recipes
	bc_fc_syn_gas_coal = 1,
	bc_fc_syn_gas_water = 10,
	bc_fc_syn_gas_syn_gas = 15,
	bc_fc_syn_gas_energy = 2,
	bc_fc_synthetic_plate_water = 10,
	bc_fc_synthetic_plate_syn_gas = 20,
	bc_fc_synthetic_plate_synthetic_plate = 2,
	bc_fc_synthetic_plate_energy = 1,
	bc_fc_petroleum_gas_from_methane_gas_methane_gas = 30,
	bc_fc_petroleum_gas_from_methane_gas_syn_gas = 10,
	bc_fc_petroleum_gas_from_methane_gas_petroleum_gas = 10,
	bc_fc_petroleum_gas_from_methane_gas_energy = 2,
-- ================================================== base recipes
	bc_fc_plastic_bar = 10,
	bc_fc_electronic_circuit = 1,
	bc_fc_battery = 1,
	bc_fc_transport_belt = 2,
	bc_fc_splitter = 4,
	bc_fc_inserter = 1,
	bc_fc_medium_electric_pole = 2,
	bc_fc_big_electric_pole = 5,
	bc_fc_rail = 1,
	bc_fc_assembling_machine_1 = 5,
-- ================================================== bc optional recipes
	bc_fc_syn_gas_from_wood = 0,
	bc_fc_syn_gas_from_wood_water = 10,
	bc_fc_syn_gas_from_wood_syn_gas = 15,
	bc_fc_syn_gas_from_wood_energy = 2,
-- ================================================== mod compat
	bc_aai_remove_electronic_circuit_wood = true,
	bc_aai_remove_stone_tablet = true,
	bc_aai_more_glass_usage = false,
	bc_si_synthetic_scrap = true,
-- ================================================== non mod settings
	bc_syngas_ing_lqd_name = "water",
--	bc_syngas_ing_lqd_min_temp = 0,
	bc_methane_gas_name = "bc-methane-gas",
	bc_fluid_box_methane_gas = 2,
	bc_fluid_box_petroleum_gas = 3,
}

return bc_defaults
