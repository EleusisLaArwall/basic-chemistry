local resource_autoplace = require("resource-autoplace");
local tile_sounds = require("__base__.prototypes.tile.tile-sounds")

if settings.startup["bc-natural-gas"].value then
	resource_autoplace.initialize_patch_set("bc-natural-gas", true)
	data.raw.planet.nauvis.map_gen_settings.autoplace_controls["bc-natural-gas"] = {}
	data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["bc-natural-gas"] = {}

	bcng_natural_gas_autoplace_settings =
	{
		name = "bc-natural-gas",
		order = "c",
		has_starting_area_placement = false,
		base_density = 8.2,
		base_spots_per_km2 = 1.8,
		random_probability = 1/48,--48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1, -- don't randomize spot size
		additional_richness = 320000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
		regular_rq_factor_multiplier = 1
	}

	data:extend(
	{
		{
			type = "resource",
			name = "bc-natural-gas",
			icon = "__basic-chemistry__/graphics/resources/natural-gas-resource.png",
			flags = {"placeable-neutral"},
			category = "basic-fluid",
			subgroup = "mineable-fluids",
			order="a",
			infinite = true,
			highlight = true,
			minimum = 40000,
			normal = 200000,
			infinite_depletion_amount = 10,
			resource_patch_search_radius = 12,
--			decorative_removal_probability = 1,
			tree_removal_probability = 0.7,
			tree_removal_max_distance = 32 * 32,
			minable =
			{
				mining_time = 1,
				results =
				{
					{
						type = "fluid",
						name = "bc-natural-gas",
						amount_min = 10,
						amount_max = 10,
						probability = 1
					}
				}
			},
			walking_sound = tile_sounds.walking.oil({}),
			driving_sound = tile_sounds.driving.oil,
			collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings(bcng_natural_gas_autoplace_settings),
			stage_counts = {0},
			stages =
			{
				sheet = util.sprite_load("__basic-chemistry__/graphics/resources/natural-gas",
				{
					priority = "extra-high",
					scale = 0.5,
					variation_count = 1,
					frame_count = 4,
				})
			},
			draw_stateless_visualisation_under_building = false,
			stateless_visualisation =
			{
				{
					count = 1,
					render_layer = "decorative",
					animation = util.sprite_load("__basic-chemistry__/graphics/resources/natural-gas-animation",
					{
						priority = "extra-high",
						scale = 0.5,
						frame_count = 32,
						animation_speed = 0.05,
					})
				},
					{
						count = 1,
						render_layer = "smoke",
						animation = {
							filename = "__base__/graphics/entity/crude-oil/oil-smoke-outer.png",
							frame_count = 47,
							line_length = 16,
							width = 90,
							height = 188,
							animation_speed = 0.3,
							shift = util.by_pixel(-2, 24 -152),
							scale = 1.5,
							tint = util.multiply_color({r = 0.48, g = 0.47, b = 0.13}, 0.2)	--	#7B7922	 pickle
						}
					},
					{
						count = 1,
						render_layer = "smoke",
						animation = {
							filename = "__base__/graphics/entity/crude-oil/oil-smoke-inner.png",
							frame_count = 47,
							line_length = 16,
							width = 40,
							height = 84,
							animation_speed = 0.3,
							shift = util.by_pixel(0, 24 -78),
							scale = 1.5,
							tint = util.multiply_color({r = 0.29, g = 0.44, b = 0.14}, 0.2)	--	#4A7023 kakapo
						}
					}
			},
			mining_visualisation_tint = {r = 0.47, g = 0.67, b = 0.27, a = 1.000}, --47%, 67%, 27%
			map_color = {r = 0.19, g = 0.96, b = 0.44},
			map_grid = false
		},
		{
			type = "autoplace-control",
			name = "bc-natural-gas",
			localised_name = {"", "[entity=bc-natural-gas] ", {"entity-name.bc-natural-gas"}},
			richness = true,
			order = "a-e-c",
			category = "resource"
		}
	}
	)
-- Adjust natural-gas frequency, size and richness for the different map presets.
	data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"]["autoplace_controls"]["bc-natural-gas"] = { richness = "very-good"}
	data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"]["autoplace_controls"]["bc-natural-gas"] = { frequency = 0.33333333333, size = 3}
	data.raw["map-gen-presets"]["default"]["ribbon-world"]["basic_settings"]["autoplace_controls"]["bc-natural-gas"] = { frequency = 3, size = 0.5, richness = 2}
end

if settings.startup["bc-coal-amount"].value == "copper-ore" then
	data.raw.resource.coal.autoplace = resource_autoplace.resource_autoplace_settings{
		name = "coal",
		order = "b",
		has_starting_area_placement = true,
		base_density = 8,
		regular_rq_factor_multiplier = 1.10,
		starting_rq_factor_multiplier = 1.2
	}
end

if settings.startup["bc-coal-amount"].value == "iron-ore" then
	data.raw.resource.coal.autoplace = resource_autoplace.resource_autoplace_settings{
		name = "coal",
		order = "b",
		has_starting_area_placement = true,
		base_density = 10,
		regular_rq_factor_multiplier = 1.10,
		starting_rq_factor_multiplier = 1.5
	}
end
