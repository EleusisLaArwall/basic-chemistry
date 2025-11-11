local item_sounds = require("__base__.prototypes.item_sounds")
-- FDSL is dependency of crushing-industry
local frep = require("__fdsl__.lib.recipe")

if mods["scrap-industry"] then
	-- motor instead of engine !!! Need to remove when Git PR is implemented !!!
	if mods["aai-industry"] then
		data.raw.recipe["engine-from-scrap"].results = {{type="item", name="motor", amount=2}}
	end
	if settings.startup["bc-si-synthetic-scrap"].value then
		ScrapIndustry.items["bc-synthetic-plate"] = {scrap="bc-synthetic-scrap", scale=ScrapIndustry.COMMON, failrate=0.02}

		data:extend(
		{
			{
				type = "item",
				name = "bc-synthetic-scrap",
				icon = "__basic-chemistry__/graphics/icons/synthetic-scrap.png",
				pictures = {
					{size = 64, filename = "__basic-chemistry__/graphics/icons/synthetic-scrap.png",   scale = 0.5},
					{size = 64, filename = "__basic-chemistry__/graphics/icons/synthetic-scrap-1.png", scale = 0.5},
					{size = 64, filename = "__basic-chemistry__/graphics/icons/synthetic-scrap-2.png", scale = 0.5},
				},
				subgroup = "production-scrap",
				order = "c[product]-b[g-synthetic]",
				inventory_move_sound = item_sounds.resource_inventory_move,
				pick_sound = item_sounds.resource_inventory_pickup,
				drop_sound = item_sounds.resource_inventory_move,
				stack_size = 50,
				weight = 2*kg
			},

			{
				type = "recipe",
				name = "bc-synthetic-plate-from-scrap",
				icons = {
					{icon="__basic-chemistry__/graphics/icons/synthetic-scrap.png", shift={-12, -12}, scale=0.4},
					{icon="__basic-chemistry__/graphics/icons/synthetic-plate.png", draw_background=true}
				},
				category = mods["space-age"] and "chemistry-or-cryogenics" or "chemistry",
				subgroup = "production-scrap",
				order = "d[crafting]-d[g-synthetic]",
				enabled = false,
				allow_productivity = true,
				auto_recycle = false,
				allow_decomposition = false,
				hide_from_signal_gui = false,
				hide_from_player_crafting = true,
				energy_required = 2,
				ingredients = {
					{type="item", name="bc-synthetic-scrap", amount= 3},
					{type="fluid", name="bc-syn-gas", amount=10}
				},
				results = {{type="item", name="bc-synthetic-plate", amount=2}},
				crafting_machine_tint = {
					primary = {r = 0.29, g = 0.44, b = 0.14, a = 1.000}, --	#4A7023	kakapo
					secondary = {r = 0.53, g = 0.26, b = 0.12, a = 1.000}, --	#87421F	brownochre
		--			tertiary = {r = 1.00, g = 0.88, b = 1.00, a = 1.000}, --	#FFE1FF	thistle1
					tertiary = {r = 0.97, g = 0.70, b = 0.85, a = 1.000}, --	#F7B3DA	cotton candy
					quaternary = {r = 0.51, g = 0.40, b = 0.53, a = 1.000},--	#816687	eggplant
				}
			}
		}
		)

		-- Make changes only if crushing indstry's mod setting has enabled plastic bits
		if settings.startup["scrap-industry-plastic"].value then
		-- Add Syngas to Plastic-bar recyling recipe
			frep.add_ingredient("plastic-bar-from-bits", {type="fluid", name="bc-syn-gas", amount=5})
		end
	end
end
