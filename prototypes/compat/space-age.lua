if mods["space-age"] then
	-- FULGORA
	table.insert(data.raw["lightning-attractor"]["fulgoran-ruin-attractor"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 4})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-small"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 2})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-medium"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 3})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-stonehenge"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 5})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-big"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 6})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-huge"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 13})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-colossal"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 19})
	table.insert(data.raw["simple-entity"]["fulgoran-ruin-vault"].minable.results, {type = "item", name = "bc-synthetic-plate", amount = 56})
	-- GLEBA
	data:extend(
	{
		{
			type = "recipe",
			name = "bc-syn-gas-from-spoilage",
			icons = {
				{icon="__space-age__/graphics/icons/spoilage.png", shift={-12, -12}, scale=0.4},
				{icon="__basic-chemistry__/graphics/icons/syn-gas.png", draw_background=true}
			},
			category = "organic-or-chemistry",
			subgroup = "agriculture-products",
			order = "a[organic-products]-i[syn-gas]",
			enabled = false,
			allow_productivity = true,
			energy_required = 2,
			auto_recycle = false,
			ingredients =
			{
				{type = "item", name = "spoilage", amount = 8},
				{type = "fluid", name = "water", amount = 10}
			},
			results =
			{
				{type="fluid", name="bc-syn-gas", amount=15}
			},
			crafting_machine_tint =
			{
				primary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
				secondary = {r = 1.00, g = 0.51, b = 0.98, a = 1.000},--	#FF83FA	orchid1
				tertiary = {r = 0.23, g = 0.23, b = 0.23, a = 1.000}, --
				quaternary = {r = 0.05, g = 0.05, b = 0.05, a = 1.000}, --
			},
			show_amount_in_title = false
		}
	}
	)
	table.insert(data.raw.technology["biochamber"].effects, {recipe = "bc-syn-gas-from-spoilage", type = "unlock-recipe"})
end
