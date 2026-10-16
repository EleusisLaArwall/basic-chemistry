local bc_defaults = require ("bc-defaults")
local bc_full_control = not mods["basic-chemistry-full-control"] and not mods["full-control"]

data:extend({
	{
		type = "bool-setting",
		name = "bc-simple-mode",
		setting_type = "startup",
		default_value = bc_defaults.bc_simple_mode,--true,
		order = "c[mode]"
	},
	{
		type = "string-setting",
		name = "bc-coal-amount",
		setting_type = "startup",
		default_value = bc_defaults.bc_coal_amount,--"default",
		allowed_values = { "default", "copper-ore", "iron-ore" },
		order = "d[map-gen]"
	},
	{
		type = "bool-setting",
		name = "bc-syngas-ing-lqd",
		setting_type = "startup",
		default_value = bc_defaults.bc_syngas_ing_lqd,--true,
		order = "i[recipe]-c"
	},
	{
		type = "bool-setting",
		name = "bc-syn-gas-plastic-bar",
		setting_type = "startup",
		default_value = bc_defaults.bc_syn_gas_plastic_bar,--true,
		order = "i[recipe]-e[plastic-bar]-g"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas",
		setting_type = "startup",
		default_value = bc_defaults.bc_natural_gas,--true,
		order = "i[recipe]-f"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas-from-oil",
		setting_type = "startup",
		default_value = bc_defaults.bc_natural_gas_from_oil,--false,
		order = "i[recipe]-f-e"
	},
	{
		type = "bool-setting",
		name = "bc-extractor-pump",
		setting_type = "startup",
		default_value = bc_defaults.bc_extractor_pump,--false,
		order = "i[recipe]-m"
	},
	{
		type = "string-setting",
		name = "bc-syn-gas-icon",
		setting_type = "startup",
		default_value = bc_defaults.bc_syn_gas_icon,
		allowed_values = { "atoms", "cloud-atoms", "cloud", "classic"},
		order = "f[visual]-c"
	},
	{
		type = "string-setting",
		name = "bc-methane-gas-icon",
		setting_type = "startup",
		default_value = bc_defaults.bc_methane_gas_icon,
		allowed_values = { "atoms", "cloud-atoms", "cloud"},
		order = "f[visual]-d"
	},
	{
		type = "string-setting",
		name = "bc-synthetic-plate-icon",
		setting_type = "startup",
		default_value = bc_defaults.bc_synthetic_plate_icon,--"bar-brown",
		allowed_values = {"bar-brown", "bar-white", "plate-classic", "plate-saf", "plate-brown", "plate-white"},
		order = "f[visual]-f"
	},
	{
		type = "bool-setting",
		name = "bc-fc-overwrite",
		setting_type = "startup",
		default_value = bc_defaults.bc_fc_overwrite,--false,
		order = "v[setting]-f"
	}
})

if mods["fdsl"] then
	data:extend({
		{
			type = "bool-setting",
			name = "bc-electronic-circuit-ing-iron-plate-remove",
			setting_type = "startup",
			default_value = bc_defaults.bc_electronic_circuit_ing_iron_plate_remove,--false,
			order = "i[recipe]-d[electronic-circuit]-d"
		},
		{
			type = "bool-setting",
			name = "bc-plastic-bar-ing-coal-remove",
			setting_type = "startup",
			default_value = bc_defaults.bc_plastic_bar_ing_coal_remove,--false,
			order = "i[recipe]-e[plastic-bar]-d"
		}
	})
end

--Full Control Settings
data:extend({
--mod-recipes
	{
		type = "bool-setting",
		name = "bc-fc-overwrite-methane-gas-name",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_overwrite_methane_gas_name,--false,
		order = "x[settings]-fc-k[experimental]-k[overwrite-methane-gas-name]"
	},
	--	colors
	{
		type = "color-setting",
		name = "bc-fc-color-syn-gas-base",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_syn_gas_base,
		order = "x[settings]-fc-f[visual]-c[color]-c[syn-gas]-c[base]"
	},
	{
		type = "color-setting",
		name = "bc-fc-color-syn-gas-flow",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_syn_gas_flow,
		order = "x[settings]-fc-f[visual]-c[color]-c[syn-gas]-f[flow]"
	},
	{
		type = "color-setting",
		name = "bc-fc-color-natural-gas-base",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_natural_gas_base,
		order = "x[settings]-fc-f[visual]-c[color]-f[natural-gas]-c[base]"
	},
	{
		type = "color-setting",
		name = "bc-fc-color-natural-gas-flow",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_natural_gas_flow,
		order = "x[settings]-fc-f[visual]-c[color]-f[natural-gas]-f[flow]"
	},
	{
		type = "color-setting",
		name = "bc-fc-color-methane-gas-base",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_methane_gas_base,
		order = "x[settings]-fc-f[visual]-c[color]-i[methane-gas]-c[base]"
	},
	{
		type = "color-setting",
		name = "bc-fc-color-methane-gas-flow",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_color_methane_gas_flow,
		order = "x[settings]-fc-f[visual]-c[color]-i[methane-gas]-f[flow]"
	},
	--base-recipe-changes
	{
		type = "bool-setting",
		name = "bc-petroleum-gas-from-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_petroleum_gas_from_methane_gas,--false,
		order = "x[settings]-fc-i[recipe]-b[basic-chemsitry]-c[petroleum]"
	},
	{
		type = "int-setting",
		name = "bc-fc-plastic-bar",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_plastic_bar,--10,
		minimum_value = 0,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-c[base]-b[plastic-bar]"
	},
	{
		type = "int-setting",
		name = "bc-fc-electronic-circuit",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_electronic_circuit,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-c[electronic-circuit]"
	},
	{
		type = "int-setting",
		name = "bc-fc-battery",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_battery,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-e[battery]"
	},
	{
		type = "int-setting",
		name = "bc-fc-transport-belt",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_transport_belt,--2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-g[transport-belt]"
	},
	{
		type = "int-setting",
		name = "bc-fc-splitter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_splitter,--4,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-i[splitter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-inserter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_inserter,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-m[inserter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-medium-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_medium_electric_pole,--2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-p[medium-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-big-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_big_electric_pole,--5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-q[big-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-rail",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_rail,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-u[rail]"
	},
	{
		type = "int-setting",
		name = "bc-fc-assembling-machine-1",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_assembling_machine_1,--5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-c[base]-w[assembling-machine-1]"
	},
--	Detailed recipe adjustments
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-coal",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_coal,--1,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-c[syn-gas]-d[coal]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-c[syn-gas]-e[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_syn_gas,--15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-c[syn-gas]-g[syn-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-syn-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_energy,--2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-c[syn-gas]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-f[synthetic-plate]-d[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_syn_gas,--20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-f[synthetic-plate]-e[syn-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-synthetic-plate",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_synthetic_plate,--2,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-f[synthetic-plate]-g[synthetic-plate]"
	},
	{
		type = "double-setting",
		name = "bc-fc-synthetic-plate-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_energy,--1,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-f[synthetic-plate]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-basic-natural-gas-processing-natural-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_basic_natural_gas_processing_natural_gas,--100,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-i[basic-natural-gas-processing]-c[natural-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-basic-natural-gas-processing-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_basic_natural_gas_processing_methane_gas,--75,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-i[basic-natural-gas-processing]-f[methane-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-basic-natural-gas-processing-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_basic_natural_gas_processing_energy,--5,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-i[basic-natural-gas-processing]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-methane-gas-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_methane_gas_methane_gas,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-l[syn-gas-from-methane-gas]-d[methane-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-methane-gas-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_methane_gas_water,--20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-l[syn-gas-from-methane-gas]-e[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-methane-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_methane_gas_syn_gas,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-l[syn-gas-from-methane-gas]-g[syn-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-syn-gas-from-methane-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_methane_gas_energy,--2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-l[syn-gas-from-methane-gas]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-advanced-natural-gas-processing-natural-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_advanced_natural_gas_processing_natural_gas,--100,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-o[advanced-natural-gas-processing]-c[natural-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-advanced-natural-gas-processing-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_advanced_natural_gas_processing_water,--50,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-o[advanced-natural-gas-processing]-d[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-advanced-natural-gas-processing-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_advanced_natural_gas_processing_methane_gas,--100,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-o[advanced-natural-gas-processing]-f[methane-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-advanced-natural-gas-processing-petroleum-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_advanced_natural_gas_processing_petroleum_gas,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-o[advanced-natural-gas-processing]-g[petroleum-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-advanced-natural-gas-processing-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_advanced_natural_gas_processing_energy,--5,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-o[advanced-natural-gas-processing]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-cracking-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_cracking_water,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-r[petroleum-gas-cracking]-d[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-cracking-petroleum-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_cracking_petroleum_gas,--20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-r[petroleum-gas-cracking]-f[petroleum-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-cracking-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_cracking_methane_gas,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-r[petroleum-gas-cracking]-g[methane-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-petroleum-gas-cracking-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_cracking_energy,--1,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-r[petroleum-gas-cracking]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-solid-fuel-from-methane-gas-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_solid_fuel_from_methane_gas_methane_gas,--20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-f[detailed]-u[solid-fuel]-d[methane-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-solid-fuel-from-methane-gas-solid-fuel",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_solid_fuel_from_methane_gas_solid_fuel,--1,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-u[solid-fuel]-g[solid-fuel]"
	},
	{
		type = "double-setting",
		name = "bc-fc-solid-fuel-from-methane-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_solid_fuel_from_methane_gas_energy,--1,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-f[detailed]-u[solid-fuel]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_methane_gas,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-i[petroleum-gas-from-methane-gas]-d[methane-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_syn_gas,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-i[petroleum-gas-from-methane-gas]-e[syn-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-petroleum-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_petroleum_gas,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-i[petroleum-gas-from-methane-gas]-g[petroleum-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_energy,--2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-i[petroleum-gas-from-methane-gas]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood,--0,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-l[syn-gas-from-wood]-d"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-l[syn-gas-from-wood]-e"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_syn_gas,--15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-l[syn-gas-from-wood]-f"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_energy,--2,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-i[recipe]-i[detailed-optional]-l[syn-gas-from-wood]-g"
	}
})

if mods["aai-industry"] then
	data:extend({
		{
			type = "bool-setting",
			name = "bc-aai-remove-electronic-circuit-wood",
			setting_type = "startup",
			default_value = bc_defaults.bc_aai_remove_electronic_circuit_wood,--true,
			order = "j[compat]-e[aai]-e"
		},
		{
			type = "bool-setting",
			name = "bc-aai-remove-stone-tablet",
			setting_type = "startup",
			default_value = bc_defaults.bc_aai_remove_stone_tablet,--true,
			order = "j[compat]-e[aai]-f"
		}
	})
end

if mods["aai-industry"] or mods["crushing-industry"] then
	data:extend({
		{
			type = "bool-setting",
			name = "bc-aai-more-glass-usage",
			setting_type = "startup",
			default_value = bc_defaults.bc_aai_more_glass_usage,--false,
			order = "j[compat]-e[aai]-g"
		}
	})
end

if mods["scrap-industry"] then
	data:extend({
		{
			type = "bool-setting",
			name = "bc-si-synthetic-scrap",
			setting_type = "startup",
			default_value = bc_defaults.bc_si_synthetic_scrap,--true,
			order = "j[compat]-f[si]-e"
		}
	})
end
