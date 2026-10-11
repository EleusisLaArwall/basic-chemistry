-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")
--local bc_natural_gas = settings.startup["bc-natural-gas"].value
--local bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value

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
		--base_color = {0.80, 0.41, 0.79},--	#CD69C9	orchid3
		--base_color = {0.97, 0.70, 0.85},--	#F7B3DA	cotton candy--<0.3.0
--		base_color = {0.62, 0.07, 0.04},--	#9D1309	red delicious apple
		base_color = bc_settings.bc_fc_color_syn_gas_base,
--		base_color = {0.40, 0.00, 0.00},--	#660000	bloodred
--		base_color = {1.00, 0.00, 0.00},--	#FF0000	red
		--flow_color = {0.36, 0.14, 0.43},--	#5C246E	ultramarine violet
		--flow_color = {1.00, 0.51, 0.98},--	#FF83FA	orchid1--<0.3.0
--		flow_color = {0.95, 0.28, 0.25},--	#F2473F	watermelon pulp
--		flow_color = {0.62, 0.07, 0.04},--	#9D1309	red delicious apple
--		flow_color = {1.00, 0.00, 0.00},--	#FF0000	red
--		flow_color = {0.89, 0.09, 0.05},--	#E3170D	cadmiumreddeep
		flow_color = bc_settings.bc_fc_color_syn_gas_flow,
--		visualization_color = {0.40, 0.00, 0.00},--	#660000	bloodred
	}
}
)

--if bc_settings.bc_natural_gas or bc_settings.bc_natural_gas_from_oil then
	data:extend(
	{
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
--			base_color = {0.29, 0.44, 0.14},--	#4A7023	kakapo
--			flow_color = {0.83, 0.93, 0.57},--	#D4ED91	limepulp
	--		flow_color = {0.96, 0.97, 0.46},--	#F4F776	soylent yellow
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
--			base_color = {0.56, 1.00, 0.98},--	#90FEFB	cool mint
--			flow_color = {0.88, 1.00, 1.00},--	#E0FFFF	lightcyan
			base_color = bc_settings.bc_fc_color_methane_gas_base,
			flow_color = bc_settings.bc_fc_color_methane_gas_flow,
--			flow_color = {0.94, 1.00, 1.00},--	#F0FFFF	azure
--			base_color = {0.29, 0.44, 0.14},--	#4A7023	kakapo
--			flow_color = {0.83, 0.93, 0.57},--	#D4ED91	limepulp
	--		flow_color = {0.96, 0.97, 0.46},--	#F4F776	soylent yellow
--			visualization_color = {0.74, 0.93, 0.57},--	#BCED91	green mist
		}
	}
	)
--end
