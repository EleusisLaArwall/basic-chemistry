local item_sounds = require("__base__.prototypes.item_sounds")
local bc_settings = require ("bc-settings")

data:extend(
{
	{
		type = "item",
		name = "bc-synthetic-plate",
		icon = "__basic-chemistry__/graphics/icons/synthetic-" .. bc_settings.bc_synthetic_plate_icon .. ".png",
--		icon_size = 64,
		localised_name = {"item-name.bc-synthetic-" .. bc_settings.bc_synthetic_plate_locale},
		subgroup = "raw-material",
		order = "b[chemistry]-a[synthetic-plate]",
		inventory_move_sound = item_sounds.plastic_inventory_move,
		pick_sound = item_sounds.plastic_inventory_pickup,
		drop_sound = item_sounds.plastic_inventory_move,
		stack_size = 100,
		weight = 0.5 * kg
	},
	{
		type = "item",
		name = "bc-chemical-reactor",
		icon = "__basic-chemistry__/graphics/icons/chemical-reactor.png",
		subgroup = "production-machine",
		order = "e[chemical-l-reactor]",
		inventory_move_sound = item_sounds.fluid_inventory_move,
		pick_sound = item_sounds.fluid_inventory_pickup,
		drop_sound = item_sounds.fluid_inventory_move,
		place_result = "bc-chemical-reactor",
		stack_size = 20
	}
}
)

-- Extractor-pump - ITEM
-- Keep item-config even if disabled
local extractor_pump_item = table.deepcopy(data.raw["item"]["pumpjack"])
extractor_pump_item.name = "bc-extractor-pump"
extractor_pump_item.icon = "__basic-chemistry__/graphics/icons/extractor-pump.png"
extractor_pump_item.order = "b[fluids]-b[extractor-pump]"
extractor_pump_item.place_result = "bc-extractor-pump"
data:extend({ extractor_pump_item })
