-- Basic Chemistry Mod Settings
local bc_natural_gas = settings.startup["bc-natural-gas"].value
local bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value

data:extend(
{
	{
		type = "fluid",
		name = "bc-syn-gas",
		icon = "__basic-chemistry__/graphics/icons/syn-gas.png",
		subgroup = "fluid",
		order = "a[fluid]-b[gas]-c[syn-gas]",
		default_temperature = 25,
		gas_temperature = 25,
		--base_color = {0.80, 0.41, 0.79},--	#CD69C9	orchid3
		base_color = {0.97, 0.70, 0.85},--	#F7B3DA	cotton candy
		--flow_color = {0.36, 0.14, 0.43},--	#5C246E	ultramarine violet
		--flow_color = {0.80, 0.80, 0.80},--
		flow_color = {1.00, 0.51, 0.98},--	#FF83FA	orchid1
	}
}
)

if bc_natural_gas or bc_natural_gas_from_oil then
	data:extend(
	{
		{
			type = "fluid",
			name = "bc-natural-gas",
			icon = "__basic-chemistry__/graphics/icons/natural-gas.png",
			subgroup = "fluid",
			order = "a[fluid]-b[gas]-b[natural-gas]",
			default_temperature = 25,
			gas_temperature = 25,
			base_color = {0.29, 0.44, 0.14},--	#4A7023	kakapo
			flow_color = {0.83, 0.93, 0.57},--	#D4ED91	limepulp
	--		flow_color = {0.96, 0.97, 0.46},--	#F4F776	soylent yellow
			visualization_color = {0.74, 0.93, 0.57},--	#BCED91	green mist
		},
		{
			type = "fluid",
			name = "bc-methane-gas",
			icon = "__basic-chemistry__/graphics/icons/methane-gas.png",
			subgroup = "fluid",
			order = "a[fluid]-b[gas]-c[methane-gas]",
			hidden = mods["scrap-chemistry"] and true,
			default_temperature = 25,
			gas_temperature = 25,
			-- TODO: CHANGE COLORS! ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ←
			base_color = {0.29, 0.44, 0.14},--	#4A7023	kakapo
			flow_color = {0.83, 0.93, 0.57},--	#D4ED91	limepulp
	--		flow_color = {0.96, 0.97, 0.46},--	#F4F776	soylent yellow
			visualization_color = {0.74, 0.93, 0.57},--	#BCED91	green mist
		}
	}
	)
end
