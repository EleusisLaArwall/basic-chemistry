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
	{
		type = "bool-setting",
		name = "bc-syn-gas-from-wood",
		setting_type = "startup",
		default_value = false,
		order = "e[recipe]-g"
	},
	{
		type = "bool-setting",
		name = "bc-rail-synthetic-plate",
		setting_type = "startup",
		default_value = true,
		order = "e[recipe]-h"
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
