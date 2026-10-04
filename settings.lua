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
		order = "e[recipe]-c"
	},
	{
		type = "bool-setting",
		name = "bc-syn-gas-plastic-bar",
		setting_type = "startup",
		default_value = bc_defaults.bc_syn_gas_plastic_bar,--true,
		order = "e[recipe]-e[plastic-bar]-g"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas",
		setting_type = "startup",
		default_value = bc_defaults.bc_natural_gas,--true,
		order = "e[recipe]-f"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas-from-oil",
		setting_type = "startup",
		default_value = bc_defaults.bc_natural_gas_from_oil,--true,
		order = "e[recipe]-f-e"
	},
	{
		type = "bool-setting",
		name = "bc-petroleum-gas-from-methane-gas",
		setting_type = "startup",
--		hidden = bc_full_control,
		default_value = bc_defaults.bc_petroleum_gas_from_methane_gas,--false,
		order = "e[recipe]-f-f"
	},
	{
		type = "bool-setting",
		name = "bc-extractor-pump",
		setting_type = "startup",
		default_value = bc_defaults.bc_extractor_pump,--false,
		order = "e[recipe]-m"
	},
	{
		type = "string-setting",
		name = "bc-synthetic-plate-icon",
		setting_type = "startup",
		default_value = bc_defaults.bc_synthetic_plate_icon,--"bar-brown",
		allowed_values = { "original", "saf", "brown", "white", "bar-brown", "bar-white" },
		order = "m[visual]"
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
			order = "e[recipe]-d[electronic-circuit]-d"
		},
		{
			type = "bool-setting",
			name = "bc-plastic-bar-ing-coal-remove",
			setting_type = "startup",
			default_value = bc_defaults.bc_plastic_bar_ing_coal_remove,--false,
			order = "e[recipe]-e[plastic-bar]-d"
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
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-coal",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_coal,--1,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-d[coal]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-e[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_syn_gas,--15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-g[syn-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-syn-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_energy,--2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-d[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_syn_gas,--20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-e[syn-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-synthetic-plate",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_synthetic_plate,--2,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-g[synthetic-plate]"
	},
	{
		type = "double-setting",
		name = "bc-fc-synthetic-plate-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_synthetic_plate_energy,--1,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-j[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-methane-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_methane_gas,--30,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[petroleum-gas-from-methane-gas]-d[methane-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_syn_gas,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[petroleum-gas-from-methane-gas]-e[syn-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-petroleum-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_petroleum_gas,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[petroleum-gas-from-methane-gas]-g[petroleum-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-petroleum-gas-from-methane-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_petroleum_gas_from_methane_gas_energy,--2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-c[petroleum-gas-from-methane-gas]-j[energy]"
	},
--base-recipe-changes
	{
		type = "int-setting",
		name = "bc-fc-plastic-bar",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_plastic_bar,--10,
		minimum_value = 0,
		maximum_value = 2047,
		order = "x[settings]-fc-c[base-recipe]-b[plastic-bar]"
	},
	{
		type = "int-setting",
		name = "bc-fc-electronic-circuit",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_electronic_circuit,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-c[electronic-circuit]"
	},
	{
		type = "int-setting",
		name = "bc-fc-battery",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_battery,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-e[battery]"
	},
	{
		type = "int-setting",
		name = "bc-fc-transport-belt",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_transport_belt,--2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-g[transport-belt]"
	},
	{
		type = "int-setting",
		name = "bc-fc-splitter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_splitter,--4,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-i[splitter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-inserter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_inserter,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-m[inserter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-medium-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_medium_electric_pole,--2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-p[medium-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-big-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_big_electric_pole,--5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-q[big-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-rail",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_rail,--1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-u[rail]"
	},
	{
		type = "int-setting",
		name = "bc-fc-assembling-machine-1",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_assembling_machine_1,--5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-w[assembling-machine-1]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood,--0,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-d"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_water,--10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-e"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_syn_gas,--15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-f"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = bc_defaults.bc_fc_syn_gas_from_wood_energy,--2,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-g"
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
