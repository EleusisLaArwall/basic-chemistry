local bc_full_control = not mods["basic-chemistry-full-control"]

data:extend({
	{
		type = "string-setting",
		name = "bc-coal-amount",
		setting_type = "startup",
		default_value = "default",
		allowed_values = { "default", "copper-ore", "iron-ore" },
		order = "d[map-gen]"
	},
	{
		type = "bool-setting",
		name = "bc-syn-gas-plastic-bar",
		setting_type = "startup",
		default_value = true,
		order = "e[recipe]-d"
	},
	{
		type = "bool-setting",
		name = "bc-petroleum-gas-from-syn-gas",
		setting_type = "startup",
		default_value = false,
		order = "e[recipe]-e"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas",
		setting_type = "startup",
		default_value = true,
		order = "e[recipe]-f"
	},
	{
		type = "bool-setting",
		name = "bc-natural-gas-from-oil",
		setting_type = "startup",
		default_value = true,
		order = "e[recipe]-f-e"
	},
-- 	{
-- 		type = "bool-setting",
-- 		name = "bc-syn-gas-from-wood",
-- 		setting_type = "startup",
-- 		default_value = false,
-- 		order = "e[recipe]-g"
-- 	},
-- 	{
-- 		type = "bool-setting",
-- 		name = "bc-rail-synthetic-plate",
-- 		setting_type = "startup",
-- 		default_value = true,
-- 		order = "e[recipe]-h"
-- 	},
	{
		type = "bool-setting",
		name = "bc-extractor-pump",
		setting_type = "startup",
		default_value = false,
		order = "e[recipe]-m"
	},
	{
		type = "bool-setting",
		name = "bc-fc-overwrite",
		setting_type = "startup",
		default_value = false,
		order = "v[setting]-f"
	}
})

--Full Control Settings
data:extend({
--mod-recipes
	{
		type = "double-setting",
		name = "bc-fc-syn-gas-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 2,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-c[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-coal",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-f[coal]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-i[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-c[syn-gas]-l[syn-gas]"
	},
	{
		type = "double-setting",
		name = "bc-fc-synthetic-plate-energy",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 0.1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-c[energy]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-water",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-f[water]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-syn-gas",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 20,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-i[syn-gas]"
	},
	{
		type = "int-setting",
		name = "bc-fc-synthetic-plate-synthetic-plate",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 2,
		minimum_value = 1,
		maximum_value = 255,
		order = "x[settings]-fc-a[mod]-f[synthetic-plate]-l[synthetic-plate]"
	},
--base-recipe-changes
	{
		type = "int-setting",
		name = "bc-fc-plastic-bar",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 10,
		minimum_value = 0,
		maximum_value = 2047,
		order = "x[settings]-fc-c[base-recipe]-b[plastic-bar]"
	},
	{
		type = "int-setting",
		name = "bc-fc-electronic-circuit",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-c[electronic-circuit]"
	},
	{
		type = "int-setting",
		name = "bc-fc-battery",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-e[battery]"
	},
	{
		type = "int-setting",
		name = "bc-fc-transport-belt",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-g[transport-belt]"
	},
	{
		type = "int-setting",
		name = "bc-fc-splitter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 4,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-i[splitter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-inserter",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-m[inserter]"
	},
	{
		type = "int-setting",
		name = "bc-fc-medium-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 2,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-p[medium-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-big-electric-pole",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-q[big-electric-pole]"
	},
	{
		type = "int-setting",
		name = "bc-fc-rail",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 1,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-u[rail]"
	},
	{
		type = "int-setting",
		name = "bc-fc-assembling-machine-1",
		setting_type = "startup",
		hidden = bc_full_control,
		default_value = 5,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-c[base-recipe]-w[assembling-machine-1]"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood",
		setting_type = "startup",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 255,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-d"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-water",
		setting_type = "startup",
		default_value = 10,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-e"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-syn-gas",
		setting_type = "startup",
		default_value = 15,
		minimum_value = 1,
		maximum_value = 2047,
		order = "x[settings]-fc-e[compat]-f[syn-gas-from-wood]-f"
	},
	{
		type = "int-setting",
		name = "bc-fc-syn-gas-from-wood-energy",
		setting_type = "startup",
		default_value = 2,
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
			default_value = true,
			order = "j[compat]-e[aai]-e"
		},
		{
			type = "bool-setting",
			name = "bc-aai-remove-stone-tablet",
			setting_type = "startup",
			default_value = true,
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
			default_value = false,
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
			default_value = true,
			order = "j[compat]-f[si]-e"
		}
	})
end
