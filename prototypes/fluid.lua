-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")

-- Keep fluid-configs even if disabled/unused
-- if disabled/unused: remove "auto-barrel"-recipes and make hidden
data:extend(
{
	{
		type = "fluid",
		name = "bc-syn-gas",
		icon = "__basic-chemistry__/graphics/icons/syn-gas-" .. bc_settings.bc_syn_gas_icon .. ".png",
		subgroup = "fluid",
		order = "a[fluid]-b[gas]-c[syn-gas]",
		auto_barrel = bc_settings.bc_fluid_auto_barrel_syn_gas,
		hidden_in_factoriopedia = not bc_settings.bc_fluid_auto_barrel_syn_gas,
		default_temperature = 25,
		gas_temperature = 25,
		base_color = bc_settings.bc_fc_color_syn_gas_base,
		flow_color = bc_settings.bc_fc_color_syn_gas_flow,
--		visualization_color = {0.40, 0.00, 0.00},--	#660000	bloodred
	},
	{
		type = "fluid",
		name = "bc-natural-gas",
		icon = "__basic-chemistry__/graphics/icons/natural-gas.png",
		subgroup = "fluid",
		order = "a[fluid]-b[gas]-b[natural-gas]",
		auto_barrel = bc_settings.bc_fluid_auto_barrel_natural_gas,
		hidden_in_factoriopedia = not bc_settings.bc_fluid_auto_barrel_natural_gas,
		default_temperature = 25,
		gas_temperature = 25,
		base_color = bc_settings.bc_fc_color_natural_gas_base,
		flow_color = bc_settings.bc_fc_color_natural_gas_flow,
		visualization_color = {0.74, 0.93, 0.57},--	#BCED91	green mist
	},
	{
		type = "fluid",
		name = "bc-methane-gas",
		icon = "__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png",
		subgroup = "fluid",
		order = "a[fluid]-b[gas]-c[methane-gas]",
		auto_barrel = bc_settings.bc_fluid_auto_barrel_methane_gas,
		hidden_in_factoriopedia = not bc_settings.bc_fluid_auto_barrel_methane_gas,
		hidden = mods["scrap-chemistry"] and true,
		default_temperature = 25,
		gas_temperature = 25,
		base_color = bc_settings.bc_fc_color_methane_gas_base,
		flow_color = bc_settings.bc_fc_color_methane_gas_flow,
--		visualization_color = {0.74, 0.93, 0.57},--	#BCED91	green mist
	}
}
)
