-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")

data:extend(
{
	{
		type = "recipe",
		name = "bc-chemical-reactor",
		enabled = false,
		energy_required = 1,
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

if bc_settings.bc_simple_mode then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-synthetic-plate",
--			localised_name = {"recipe-name.bc-synthetic-plate"},
			categories = {"chemistry"},
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_synthetic_plate_energy,--1,
			ingredients =
			{
				{type="item", name="coal", amount=bc_settings.bc_fc_syn_gas_coal},
				{type = "fluid", name = bc_settings.bc_syngas_ing_lqd_name, amount = bc_settings.bc_fc_synthetic_plate_water, minimum_temperature = bc_settings.bc_syngas_ing_lqd_min_temp}
			},
			results =
			{
				{type = "item", name = "bc-synthetic-plate", amount = bc_settings.bc_fc_synthetic_plate_synthetic_plate}
			},
			crafting_machine_tint =
			{
				primary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
				secondary = {r = 0.53, g = 0.26, b = 0.12, a = 1.000}, --	#87421F	brownochre
				tertiary = {r = 0.42, g = 0.42, b = 0.42, a = 1.000}, --
				quaternary = {r = 0.05, g = 0.05, b = 0.05, a = 1.000}, --
			}
		}
	}
	)
else
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-syn-gas",
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[a-syn-gas]",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_syn_gas_energy,--2,
			ingredients =
			{
				{type="item", name="coal", amount=bc_settings.bc_fc_syn_gas_coal},
				{type = "fluid", name = bc_settings.bc_syngas_ing_lqd_name, amount = bc_settings.bc_fc_syn_gas_water, minimum_temperature = bc_settings.bc_syngas_ing_lqd_min_temp}
			},
			results =
			{
				{type="fluid", name="bc-syn-gas", amount=bc_settings.bc_fc_syn_gas_syn_gas}
			},
			main_product = "bc-syn-gas",--mods["scrap-chemistry"] and "bc-syn-gas",
			crafting_machine_tint =
			{
				primary = bc_settings.bc_fc_color_syn_gas_base,
				secondary = bc_settings.bc_fc_color_syn_gas_flow,
				tertiary = {r = 0.42, g = 0.42, b = 0.42, a = 1.000}, --
				quaternary = {r = 0.05, g = 0.05, b = 0.05, a = 1.000}, --
			}
		},
		{
			type = "recipe",
			name = "bc-synthetic-plate",
			categories = {"chemistry"},
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_synthetic_plate_energy,--1,
			ingredients =
			{
				{type = "fluid", name = bc_settings.bc_syngas_ing_lqd_name, amount = bc_settings.bc_fc_synthetic_plate_water, minimum_temperature = bc_settings.bc_syngas_ing_lqd_min_temp},
				{type = "fluid", name = "bc-syn-gas", amount = bc_settings.bc_fc_synthetic_plate_syn_gas}
			},
			results =
			{
				{type = "item", name = "bc-synthetic-plate", amount = bc_settings.bc_fc_synthetic_plate_synthetic_plate}
			},
			crafting_machine_tint =
			{
				primary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
				secondary = {r = 0.53, g = 0.26, b = 0.12, a = 1.000}, --	#87421F	brownochre
				tertiary = bc_settings.bc_fc_color_syn_gas_flow,
				quaternary = bc_settings.bc_fc_color_syn_gas_base,
			}
		}
	}
	)
end

if bc_settings.bc_natural_gas or bc_settings.bc_natural_gas_from_oil then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-basic-natural-gas-processing-legacy",
			icon = "__basic-chemistry__/graphics/icons/basic-natural-gas-processing-legacy.png",
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[basic-natural-gas-processing]",
			enabled = true,
			hidden = true,
			allow_productivity = true,
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
			main_product = "",
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
			name = "bc-advanced-natural-gas-processing-legacy",
			icon = "__basic-chemistry__/graphics/icons/advanced-natural-gas-processing-legacy.png",
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-b[advanced-natural-gas-processing]",
			enabled = true,
			hidden = true,
			allow_productivity = true,
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
			main_product = "",
			crafting_machine_tint =
			{
				primary = {r = 0.88, g = 0.40, b = 1.00, a = 1.000},--	#E066FF	medium orchid1
				secondary = {r = 0.86, g = 0.64, b = 0.80, a = 1.000}, --	#DCA2CD	pink candy
				tertiary = {r = 0.86, g = 1.00, b = 0.97, a = 1.000}, --	#DBFEF8	mint blue
				quaternary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
			}
		},
		{
			type = "recipe",
			name = "bc-bas-natural-gas-processing",
--			icon = "__basic-chemistry__/graphics/icons/basic-natural-gas-processing.png",
			icons = {
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.3125*bc_settings.bc_methane_gas_icon_scale, shift={0, 7}},
				{icon="__basic-chemistry__/graphics/icons/natural-gas.png", scale=0.375, shift={0, -5}, draw_background=true}
			},
			categories = {"oil-processing"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[bas-natural-gas-processing]",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_basic_natural_gas_processing_energy,
			ingredients =
			{
				{type = "fluid", name = "bc-natural-gas", amount = bc_settings.bc_fc_basic_natural_gas_processing_natural_gas, fluidbox_index = 2}
			},
			results =
			{
				{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_basic_natural_gas_processing_methane_gas, fluidbox_index = bc_settings.bc_fluid_box_methane_gas}
			},
			main_product = ""
		},
		{
			type = "recipe",
			name = "bc-adv-natural-gas-processing",
--			icon = "__basic-chemistry__/graphics/icons/advanced-natural-gas-processing.png",
			icons = {
				{icon="__basic-chemistry__/graphics/icons/natural-gas.png", scale=0.375, shift={0, -5}},
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25*bc_settings.bc_methane_gas_icon_scale, shift={-8, 8}, draw_background=true},
				{icon="__base__/graphics/icons/fluid/petroleum-gas.png", scale=0.25, shift={8, 8}, draw_background=true}
			},
			categories = {"oil-processing"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-b[adv-natural-gas-processing]",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_advanced_natural_gas_processing_energy,
			ingredients =
			{
				{type = "fluid", name = "water", amount = bc_settings.bc_fc_advanced_natural_gas_processing_water},
				{type = "fluid", name = "bc-natural-gas", amount = bc_settings.bc_fc_advanced_natural_gas_processing_natural_gas}
			},
			results =
			{
				{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_advanced_natural_gas_processing_methane_gas, fluidbox_index = bc_settings.bc_fluid_box_methane_gas},
				{type = "fluid", name = "petroleum-gas", amount = bc_settings.bc_fc_advanced_natural_gas_processing_petroleum_gas, fluidbox_index = bc_settings.bc_fluid_box_petroleum_gas},
			},
			main_product = ""
		},
		{
			type = "recipe",
			name = "bc-syn-gas-from-methane-gas",
--			icon = "__basic-chemistry__/graphics/icons/syn-gas-from-methane-gas.png",
-- 			icons = {
-- 				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.3125, shift={0, -7}},
-- 				{icon="__basic-chemistry__/graphics/icons/syn-gas-" .. bc_settings.bc_syn_gas_icon .. ".png", scale=0.25, shift={-8, 8}, draw_background=true},
-- 				{icon="__basic-chemistry__/graphics/icons/syn-gas-" .. bc_settings.bc_syn_gas_icon .. ".png", scale=0.25, shift={8, 8}, draw_background=true}
-- 			},
			icons = {
				{icon="__basic-chemistry__/graphics/icons/syn-gas-" .. bc_settings.bc_syn_gas_icon .. ".png", scale=0.375, shift={4,4}},
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.3125, shift={-6,-6}, draw_background=true}
--				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25, shift={-8,-8}, draw_background=true}
			},
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
--			order = "a[rng-processing]-c[syn-gas-from-methane-gas]",
			order = "b[fluid-chemistry]-b[syn-gas-from-methane-gas]",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_syn_gas_from_methane_gas_energy,
			ingredients =
			{
				{type = "fluid", name = bc_settings.bc_syngas_ing_lqd_name, amount = bc_settings.bc_fc_syn_gas_from_methane_gas_water},
				{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_syn_gas_from_methane_gas_methane_gas}
			},
			results =
			{
				{type = "fluid", name = "bc-syn-gas", amount = bc_settings.bc_fc_syn_gas_from_methane_gas_syn_gas}
			},
			main_product = "",
			crafting_machine_tint =
			{
				primary = bc_settings.bc_fc_color_syn_gas_base,
				secondary = bc_settings.bc_fc_color_syn_gas_flow,
				tertiary = bc_settings.bc_fc_color_methane_gas_flow,
				quaternary = {0.53, 0.81, 0.92, 1.00},--	#87CEEB	skyblue--bc_settings.bc_fc_color_methane_gas_base,
			}
		},
		{
			type = "recipe",
			name = "bc-petroleum-gas-cracking",
--			icon = "__basic-chemistry__/graphics/icons/petroleum-gas-cracking.png",
			icons = {
				{icon="__base__/graphics/icons/fluid/petroleum-gas.png", scale=0.375, shift={0, -6}},
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25*bc_settings.bc_methane_gas_icon_scale, shift={-8, 8}, draw_background=true},
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25*bc_settings.bc_methane_gas_icon_scale, shift={8, 8}, draw_background=true}
			},
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "b[fluid-chemistry]-b[petroleum-gas-cracking]",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_petroleum_gas_cracking_energy,
			ingredients =
			{
				{type = "fluid", name = "water", amount = bc_settings.bc_fc_petroleum_gas_cracking_water},
				{type = "fluid", name = "petroleum-gas", amount = bc_settings.bc_fc_petroleum_gas_cracking_petroleum_gas}
			},
			results =
			{
				{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_petroleum_gas_cracking_methane_gas}
			},
			main_product = "",
			crafting_machine_tint =
			{
				primary = bc_settings.bc_fc_color_methane_gas_base,
				secondary = bc_settings.bc_fc_color_methane_gas_flow,
				tertiary = {0.564, 0.496, 0.580, 1.000},
				quaternary = {0.762, 0.551, 0.844, 1.000}, -- #c28cd7ff
			}
		},
		{
			type = "recipe",
			name = "bc-solid-fuel-from-methane-gas",
--			icon = "__basic-chemistry__/graphics/icons/solid-fuel-from-methane-gas.png",
			icons = {
				{icon="__base__/graphics/icons/solid-fuel.png", scale=0.5},
				{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25*bc_settings.bc_methane_gas_icon_scale, shift={-7, -7}, draw_background=true},
			},
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "b[fluid-chemistry]-c[solid-fuel-from-methane-gas]",
			enabled = false,
			allow_productivity = true,
			auto_recycle = false,
			energy_required = bc_settings.bc_fc_solid_fuel_from_methane_gas_energy,
			ingredients =
			{
				{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_solid_fuel_from_methane_gas_methane_gas}
			},
			results =
			{
				{type = "item", name = "solid-fuel", amount = bc_settings.bc_fc_solid_fuel_from_methane_gas_solid_fuel}
			},
			crafting_machine_tint =
			{
				primary = {0.768, 0.631, 0.768, 1.000},
				secondary = {0.659, 0.592, 0.678, 1.000},
				tertiary = bc_settings.bc_fc_color_methane_gas_flow,
				quaternary = bc_settings.bc_fc_color_methane_gas_base,
			}
		}
	}
	)
	if bc_settings.bc_petroleum_gas_from_methane_gas then
		data:extend(
		{
			{
				type = "recipe",
				name = "bc-petroleum-gas-from-methane-gas",
--				icon = "__basic-chemistry__/graphics/icons/petroleum-gas-from-methane-gas.png",
				icons = {
					{icon="__basic-chemistry__/graphics/icons/methane-gas-" .. bc_settings.bc_methane_gas_icon .. ".png", scale=0.25*bc_settings.bc_methane_gas_icon_scale, shift={-8, -8}, draw_background=true},
					{icon="__basic-chemistry__/graphics/icons/syn-gas-" .. bc_settings.bc_syn_gas_icon .. ".png", scale=0.25*bc_settings.bc_syn_gas_icon_scale, shift={8, -8}, draw_background=true},
					{icon="__base__/graphics/icons/fluid/petroleum-gas.png", scale=0.375, shift={0, 8}, draw_background=true}
				},
				categories = {"chemistry"},
				subgroup = "fluid-recipes",
				order = "b[fluid-chemistry]-b[v-petroleum-gas-from-methane-gas]",
				enabled = false,
				allow_productivity = true,
				energy_required = bc_settings.bc_fc_petroleum_gas_from_methane_gas_energy,
				ingredients =
				{
					{type = "fluid", name = bc_settings.bc_methane_gas_name, amount = bc_settings.bc_fc_petroleum_gas_from_methane_gas_methane_gas},
					{type = "fluid", name = "bc-syn-gas", amount = bc_settings.bc_fc_petroleum_gas_from_methane_gas_syn_gas}
				},
				results =
				{
					{type = "fluid", name = "petroleum-gas", amount = bc_settings.bc_fc_petroleum_gas_from_methane_gas_petroleum_gas}
				},
				-- TODO: CHANGE COLORS! ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ← ←
				crafting_machine_tint =
				{
					primary = {r = 0.88, g = 0.40, b = 1.00, a = 1.000},--	#E066FF	medium orchid1
					secondary = {r = 0.86, g = 0.64, b = 0.80, a = 1.000}, --	#DCA2CD	pink candy
					tertiary = {r = 0.86, g = 1.00, b = 0.97, a = 1.000}, --	#DBFEF8	mint blue
					quaternary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
				}
			}
		}
		)
	end
end

if bc_settings.bc_natural_gas_from_oil then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-advanced-oil-processing-with-gas",
			icon = "__basic-chemistry__/graphics/icons/advanced-oil-processing-with-gas.png",
			categories = {"oil-processing"},
			subgroup = "fluid-recipes",
			order = "a[oil-processing]-c[advanced-oil-processing-with-gas]",
			enabled = false,
			allow_productivity = true,
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
				{type = "fluid", name = "bc-natural-gas", amount = 120}
			},
		}
	}
	)
end

if bc_settings.bc_fc_syn_gas_from_wood > 0 then
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-syn-gas-from-wood",
			icons = {
				{icon="__base__/graphics/icons/wood.png", shift={-12, -12}, scale=0.4},
				{icon="__basic-chemistry__/graphics/icons/syn-gas.png", draw_background=true}
			},
			categories = {"chemistry"},
			subgroup = "fluid-recipes",
			order = "a[rng-processing]-a[b-syn-gas]",
			factoriopedia_alternative = "bc-syn-gas",
			enabled = false,
			allow_productivity = true,
			energy_required = bc_settings.bc_fc_syn_gas_from_wood_energy,
			ingredients =
			{
				{type = "item", name = "wood", amount = bc_settings.bc_fc_syn_gas_from_wood},
				{type = "fluid", name = bc_settings.bc_syngas_ing_lqd_name, amount = bc_settings.bc_fc_syn_gas_from_wood_water}
			},
			results =
			{
				{type = "fluid", name = "bc-syn-gas", amount = bc_settings.bc_fc_syn_gas_from_wood_syn_gas}
			},
			crafting_machine_tint =
			{
				primary = bc_settings.bc_fc_color_syn_gas_base,
				secondary = bc_settings.bc_fc_color_syn_gas_flow,
				tertiary = {0.29, 0.44, 0.14, 1.00}, --	#4A7023	kakapo
				quaternary = {0.53, 0.26, 0.12, 1.00}, --	#87421F	brownochre
			}
		}
	}
	)
end

-- Extractor-pump - RECIPE
if bc_settings.bc_extractor_pump then
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
