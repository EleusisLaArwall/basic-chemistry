require ("__base__.prototypes.entity.pipecovers")

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local bc_craft_category = {"chemistry"}
if mods["space-age"] then
	bc_craft_category = {"organic-or-chemistry", "chemistry-or-cryogenics", "chemistry"}
end

data:extend(
{
	{
		type = "assembling-machine",
		name = "bc-chemical-reactor",
		icon = "__basic-chemistry__/graphics/icons/chemical-reactor.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.1, result = "bc-chemical-reactor"},
		fast_replaceable_group = "chemical-plant",
		max_health = 300,
		corpse = "chemical-plant-remnants",
		dying_explosion = "chemical-plant-explosion",
		icon_draw_specification = {shift = {0, -0.3}},
		circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
		circuit_connector = circuit_connector_definitions["assembling-machine"],--electric-mining-drill
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		damaged_trigger_effect = hit_effects.entity(),
		drawing_box_vertical_extension = 0.4,
		module_slots = 0,
		allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
		graphics_set =
		{
			animation = make_4way_animation_from_spritesheet({ layers =
			{
				{
					filename = "__basic-chemistry__/graphics/entity/chemical-reactor/chemical-reactor.png",
					width = 244,
					height = 284,
					frame_count = 1,
					shift = util.by_pixel(-5, -8.5),
					scale = 0.5
				},
				{
					filename = "__basic-chemistry__/graphics/entity/chemical-reactor/chemical-reactor-shadow.png",
					width = 350,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(31.5, 10.75),
					draw_as_shadow = true,
					scale = 0.5
				}
			}}),
			working_visualisations =
			{
				{
					north_position = util.by_pixel(30, -24),
					west_position = util.by_pixel(1, -49.5),
					south_position = util.by_pixel(-30, -48),
					east_position = util.by_pixel(-11, -1),
					apply_recipe_tint = "primary",
					animation =
					{
						filename = "__basic-chemistry__/graphics/entity/chemical-reactor/boiling-green-patch.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5
					}
				},

				{
					north_position = util.by_pixel(30, -24),
					west_position = util.by_pixel(1, -49.5),
					south_position = util.by_pixel(-30, -48),
					east_position = util.by_pixel(-11, -1),
					apply_recipe_tint = "secondary",
					animation =
					{
						filename = "__basic-chemistry__/graphics/entity/chemical-reactor/boiling-green-patch-mask.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5
					}
				},

				{
					apply_recipe_tint = "secondary",
					north_position = util.by_pixel(0, 0),
					west_position = util.by_pixel(0, 0),
					south_position = util.by_pixel(0, 0),
					east_position = util.by_pixel(0, 0),
					north_animation =
					{
						filename = "__basic-chemistry__/graphics/entity/chemical-reactor/boiling-window-green-patch.png",
						x = 0,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					},
					east_animation =
					{
						filename = "__basic-chemistry__/graphics/entity/chemical-reactor/boiling-window-green-patch.png",
						x = 174,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					},
					south_animation =
					{
						filename = "__basic-chemistry__/graphics/entity/chemical-reactor/boiling-window-green-patch.png",
						x = 348,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					}
				},

				{
					apply_recipe_tint = "tertiary",
					fadeout = true,
					constant_speed = true,
					north_position = util.by_pixel_hr(-10, -156),
					east_position = util.by_pixel_hr(29, -136),
					south_position = util.by_pixel_hr(10, -136),
					west_position = util.by_pixel_hr(-46, -138),
					render_layer = "wires",
					animation =
					{
						filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
						frame_count = 47,
						line_length = 16,
						width = 90,
						height = 188,
						animation_speed = 0.5,
						shift = util.by_pixel(-2, -40),
						scale = 0.5
					}
				},
				{
					apply_recipe_tint = "quaternary",
					fadeout = true,
					constant_speed = true,
					north_position = util.by_pixel_hr(-10, -156),
					east_position = util.by_pixel_hr(29, -136),
					south_position = util.by_pixel_hr(10, -136),
					west_position = util.by_pixel_hr(-46, -138),
					render_layer = "wires",
					animation =
					{
						filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
						frame_count = 47,
						line_length = 16,
						width = 40,
						height = 84,
						animation_speed = 0.5,
						shift = util.by_pixel(0, -14),
						scale = 0.5
					}
				}
			}
		},
		impact_category = "metal-large",
		open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
		close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
		working_sound =
		{
			sound = sound_variations("__base__/sound/chemical-plant", 3, 0.5),
			fade_in_ticks = 4,
			fade_out_ticks = 20
		},
		crafting_speed = 0.5,
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions_per_minute = { pollution = 6 }
		},
		energy_usage = "90kW",
		crafting_categories = bc_craft_category,
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				volume = 1000,
				pipe_connections =
				{
					{
						flow_direction="input",
						direction = defines.direction.north,
						position = {-1, -1}
					}
				}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				volume = 1000,
				pipe_connections =
				{
					{
						flow_direction="input",
						direction = defines.direction.north,
						position = {1, -1}
					}
				}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				volume = 100,
				pipe_connections =
				{
					{
						flow_direction = "output",
						direction = defines.direction.south,
						position = {-1, 1}
					}
				}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				volume = 100,
				pipe_connections =
				{
					{
						flow_direction = "output",
						direction = defines.direction.south,
						position = {1, 1}
					}
				}
			}
		}
	},
}
)

-- Extractor-pump - ENTITY
--if settings.startup["bc-extractor-pump"].value then
	local extractor_pump = table.deepcopy(data.raw["mining-drill"]["pumpjack"])
	extractor_pump.name = "bc-extractor-pump"
	extractor_pump.minable.result = "bc-extractor-pump"
	extractor_pump.next_upgrade = "pumpjack"
	extractor_pump.energy_source = {
		type = "burner",
		fuel_categories = {"chemical", data.raw["fuel-category"]["processed-chemical"] and "processed-chemical"},
		effectivity = 0.8,
		fuel_inventory_size = 1,
		emissions_per_minute = { pollution = 2 },
		smoke =
		{
			{
				name = "smoke",
				deviation = {0.1, 0.1},
				position = {0.5, -1.5},
				frequency = 2
			}
		}
	}
	extractor_pump.energy_usage = "24kW"	-- 24kW ÷ 0.8 = 30 kW; energy_usage ÷ effectivity = ingame
	extractor_pump.mining_speed = 0.5
	extractor_pump.module_slots = 0
	extractor_pump.base_picture = {
		sheets =
		{
			{
				filename = "__basic-chemistry__/graphics/entity/extractor-pump/extractor-pump.png",
				priority = "extra-high",
				width = 261,
				height = 273,
				shift = util.by_pixel(-2.25, -4.75),
				scale = 0.5
			},
			{
				filename = "__basic-chemistry__/graphics/entity/extractor-pump/extractor-pump-shadow.png",
				width = 220,
				height = 220,
				scale = 0.5,
				draw_as_shadow = true,
				shift = util.by_pixel(6, 0.5)
			},
			{
				filename = "__basic-chemistry__/graphics/entity/extractor-pump/extractor-pump-shadow-inner.png",
				width = 309,
				height = 82,
				scale = 0.5,
				draw_as_shadow = true,
				shift = util.by_pixel(17.75, 14.5)
			}
		}
	}
	extractor_pump.graphics_set = nil
	data:extend({ extractor_pump })
--end
