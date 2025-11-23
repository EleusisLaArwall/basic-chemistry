data:extend(
{
	{
		type = "recipe",
		name = "bc-syn-gas",
		category = mods["space-age"] and "chemistry-or-cryogenics" or "chemistry",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{type="item", name="coal", amount=1},
			{type = "fluid", name = "water", amount = 10}
		},
		results =
		{
			{type="fluid", name="bc-syn-gas", amount=15}
		},
		allow_productivity = true,
		subgroup = "fluid-recipes",
		order = "a[rng-processing]-a[a-syn-gas]",
		crafting_machine_tint =
		{
			primary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
			secondary = {r = 1.00, g = 0.51, b = 0.98, a = 1.000},--	#FF83FA	orchid1
			tertiary = {r = 0.23, g = 0.23, b = 0.23, a = 1.000}, --
			quaternary = {r = 0.05, g = 0.05, b = 0.05, a = 1.000}, --
		}
	},
	{
		type = "recipe",
		name = "bc-synthetic-plate",
		category = mods["space-age"] and "chemistry-or-cryogenics" or "chemistry",
		enabled = false,
		energy_required = 1,
		ingredients =
		{
			{type = "fluid", name = "water", amount = 10},
			{type = "fluid", name = "bc-syn-gas", amount = 20}
		},
		results =
		{
			{type = "item", name = "bc-synthetic-plate", amount = 2}
		},
		allow_productivity = true,
		crafting_machine_tint =
		{
			primary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
			secondary = {r = 0.53, g = 0.26, b = 0.12, a = 1.000}, --	#87421F	brownochre
--			tertiary = {r = 1.00, g = 0.88, b = 1.00, a = 1.000}, --	#FFE1FF	thistle1
			tertiary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
			quaternary = {r = 0.51, g = 0.40, b = 0.53, a = 1.000},--	#816687	eggplant
		}
	},
	{
		type = "recipe",
		name = "bc-chemical-reactor",
		energy_required = 1,
		enabled = false,
		ingredients =
		{
			{type = "item", name = "iron-plate", amount = 6},
			mods["aai-industry"] and {type = "item", name = "stone-brick", amount = 6} or {type = "item", name = "stone", amount = 8},
			mods["aai-industry"] and {type="item", name="motor", amount=2} or {type = "item", name = "iron-gear-wheel", amount = 3},
			{type = "item", name = "pipe", amount = 5}
		},
		results = {{type="item", name="bc-chemical-reactor", amount=1}}
	}
}
)

if settings.startup["bc-petroleum-gas-from-syn-gas"].value then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-petroleum-gas-from-syn-gas",
			category = mods["space-age"] and "organic-or-chemistry" or "chemistry",
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{type = "fluid", name = "steam", amount = 50},
				{type = "fluid", name = "bc-syn-gas", amount = 50}
			},
			results =
			{
				{type = "fluid", name = "petroleum-gas", amount = 20}
			},
			allow_productivity = true,
			main_product = "",
			icon = "__basic-chemistry__/graphics/icons/petroleum-gas-from-syn-gas.png",
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-b[petroleum-gas-from-syn-gas]",
			crafting_machine_tint =
			{
				primary = {r = 0.60, g = 0.20, b = 0.80, a = 1.000},--	#9A32CD	darkorchid2
				secondary = {r = 0.74, g = 0.63, b = 0.80, a = 1.000}, --	#BDA0CB	purple candy
				tertiary = {r = 0.96, g = 0.80, b = 0.85, a = 1.000}, --	#F6CCDA	pink shell
				quaternary = {r = 0.45, g = 0.35, b = 0.40, a = 1.000},--	#72587F	indigo tile
	--			quaternary = {r = 1.00, g = 0.51, b = 0.98, a = 1.000},--	#FF83FA	orchid1
			}
		}
	}
	)
end

if settings.startup["bc-natural-gas"].value then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-basic-natural-gas-processing",
			category = mods["space-age"] and "organic-or-chemistry" or "chemistry",
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{type = "fluid", name = "water", amount = 10},
				{type = "fluid", name = "bc-natural-gas", amount = 50}
			},
			results =
			{
				{type = "fluid", name = "bc-syn-gas", amount = 30}
			},
			allow_productivity = true,
			main_product = "",
			icon = "__basic-chemistry__/graphics/icons/basic-natural-gas-processing.png",
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[basic-natural-gas-processing]",
			crafting_machine_tint =
			{
				primary = {r = 1.00, g = 0.51, b = 0.98, a = 1.000},--	#FF83FA	orchid1
				secondary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
				tertiary = {r = 0.96, g = 0.97, b = 0.46, a = 1.000}, --	#F4F776	soylent yellow
				quaternary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
			}
		},
		{
			type = "recipe",
			name = "bc-advanced-natural-gas-processing",
			category = mods["space-age"] and "organic-or-chemistry" or "chemistry",
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{type = "fluid", name = "water", amount = 10},
				{type = "fluid", name = "bc-natural-gas", amount = 50}
			},
			results =
			{
				{type = "fluid", name = "bc-syn-gas", amount = 40},
				{type = "fluid", name = "petroleum-gas", amount = 10}
			},
			allow_productivity = true,
			main_product = "",
			icon = "__basic-chemistry__/graphics/icons/advanced-natural-gas-processing.png",
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-b[advanced-natural-gas-processing]",
			crafting_machine_tint =
			{
				primary = {r = 0.88, g = 0.40, b = 1.00, a = 1.000},--	#E066FF	medium orchid1
				secondary = {r = 0.86, g = 0.64, b = 0.80, a = 1.000}, --	#DCA2CD	pink candy
	--			tertiary = {r = 0.83, g = 0.93, b = 0.57, a = 1.000}, --	#D4ED91	limepulp
				tertiary = {r = 0.86, g = 1.00, b = 0.97, a = 1.000}, --	#DBFEF8	mint blue
				quaternary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
			}
		}
	}
	)
	-- IF mod settings "natural-gas" AND "natural-gas-from-oil" are TRUE:
	if settings.startup["bc-natural-gas-from-oil"].value then
		data:extend(
		{
			{
				type = "recipe",
				name = "bc-advanced-oil-processing-with-gas",
				category = "oil-processing",
				enabled = false,
				energy_required = 5,
				ingredients =
				{
					{type = "fluid", name = "water", amount = 100},
					{type = "fluid", name = "crude-oil", amount = 100}
				},
				results =
				{
					{type = "fluid", name = "heavy-oil", amount = 25},
					{type = "fluid", name = "light-oil", amount = 45},
					{type = "fluid", name = "bc-natural-gas", amount = 115}
				},
				allow_productivity = true,
				icon = "__basic-chemistry__/graphics/icons/advanced-oil-processing-with-gas.png",
				subgroup = "fluid-recipes",
				order = "a[oil-processing]-c[advanced-oil-processing-with-gas]"
			}
		}
		)
	end
end

if settings.startup["bc-syn-gas-from-wood"].value then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-syn-gas-from-wood",
			category = mods["space-age"] and "chemistry-or-cryogenics" or "chemistry",
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{type="item", name="wood", amount=2},
				{type = "fluid", name = "water", amount = 10}
			},
			results =
			{
				{type="fluid", name="bc-syn-gas", amount=15}
			},
			allow_productivity = true,
			icons = {
				{icon="__base__/graphics/icons/wood.png", shift={-12, -12}, scale=0.4},
				{icon="__basic-chemistry__/graphics/icons/syn-gas.png", draw_background=true}
			},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[b-syn-gas]",
			crafting_machine_tint =
			{
				primary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
				secondary = {r = 1.00, g = 0.51, b = 0.98, a = 1.000},--	#FF83FA	orchid1
				tertiary = {r = 0.23, g = 0.23, b = 0.23, a = 1.000}, --
				quaternary = {r = 0.05, g = 0.05, b = 0.05, a = 1.000}, --
			}
		}
	}
	)
end

-- Extractor-pump - RECIPE
if settings.startup["bc-extractor-pump"].value then
	local extractor_pump_recipe = table.deepcopy(data.raw["recipe"]["pumpjack"])
	extractor_pump_recipe.name = "bc-extractor-pump"
	extractor_pump_recipe.ingredients = {
		{type = "item", name = "iron-plate", amount = 10},
		{type = "item", name = "stone-brick", amount = 5},
		{type = "item", name = "pipe", amount = 10}
	}
	extractor_pump_recipe.results = {
		{type="item", name="bc-extractor-pump", amount=1}
	}
	extractor_pump_recipe.enabled = true--	CHANGE ME!!!!!!!
	data:extend({ extractor_pump_recipe })
end
