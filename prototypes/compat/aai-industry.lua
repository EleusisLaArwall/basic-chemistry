local util = require("__aai-industry__.data-util")
local resource_autoplace = require("resource-autoplace");

if settings.startup["bc-aai-remove-electronic-circuit-wood"].value then
-- remove "electric-circuit from wood" recipe (provided by aai-industry)
--	data.raw.recipe["electronic-circuit-wood"] = nil
	data.raw.recipe["electronic-circuit-wood"].hidden = true
end

if settings.startup["bc-aai-remove-stone-tablet"].value then
-- remove stone-tablet recipe (provided by aai-industry)
--	data.raw.recipe["stone-tablet"] = nil
	data.raw.recipe["stone-tablet"].hidden = true
	data.raw.item["stone-tablet"].hidden = true
-- replace stone-tablet with iron-plate for electronic-circuit (provided by aai-industry)
	util.replace_or_add_ingredient_sub(data.raw.recipe["electronic-circuit"], "stone-tablet", "iron-plate", 1)
-- revert the amount of stone on the map back to default (increased by aai-industry; 10, 1.1, 1.5)
	data.raw.resource.stone.autoplace = resource_autoplace.resource_autoplace_settings{
		name = "stone",
		order = "b",
		has_starting_area_placement = true,
		base_density = 4,
		regular_rq_factor_multiplier = 1.0,
		starting_rq_factor_multiplier = 1.1
	}
end

-- Chemical reactor is ingredient of chemical plant (require previous tier)
util.replace_or_add_ingredient(data.raw.recipe["chemical-plant"], "bc-chemical-reactor", "bc-chemical-reactor", 1)
-- Synthetic plate is ingredient of small iron pole instead of medium pole
util.replace_or_add_ingredient(data.raw.recipe["small-iron-electric-pole"], "bc-synthetic-plate", "bc-synthetic-plate", 1)
-- Synthetic plate is ingredient of repair pack
util.replace_or_add_ingredient(data.raw.recipe["repair-pack"], "bc-synthetic-plate", "bc-synthetic-plate", 3)
-- Synthetic plate is ingredient of small electric motor
util.replace_or_add_ingredient(data.raw.recipe["electric-motor"], "bc-synthetic-plate", "bc-synthetic-plate", 1)
-- If "more glass usage" is enabled, advanced circuit (red) requires glass. Also train-stuff, car and display require glass
if settings.startup["bc-aai-more-glass-usage"].value and not mods["Krastorio2"] then
	util.replace_or_add_ingredient(data.raw.recipe["advanced-circuit"], "glass", "glass", 1)
	util.replace_or_add_ingredient(data.raw.recipe["train-stop"], "glass", "glass", 2)
	util.replace_or_add_ingredient(data.raw.recipe["rail-signal"], "glass", "glass", 1)
	util.replace_or_add_ingredient(data.raw.recipe["rail-chain-signal"], "glass", "glass", 1)
	util.replace_or_add_ingredient(data.raw.recipe["locomotive"], "glass", "glass", 5)
	util.replace_or_add_ingredient(data.raw.recipe["car"], "glass", "glass", 5)
	util.replace_or_add_ingredient(data.raw.recipe["display-panel"], "glass", "glass", 1)
	util.replace_or_add_ingredient(data.raw.recipe["night-vision-equipment"], "glass", "glass", 2)
end

-- Burner offshore-pump - ENTITY
local burner_offshore_pump = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
burner_offshore_pump.name = "burner-offshore-pump"
burner_offshore_pump.minable.result = "burner-offshore-pump"
burner_offshore_pump.next_upgrade = "offshore-pump"
burner_offshore_pump.energy_source = {
	type = "burner",
	fuel_categories = {"chemical", data.raw["fuel-category"]["processed-chemical"] and "processed-chemical"},
	effectivity = 0.8,
	fuel_inventory_size = 1,
	emissions_per_minute = { pollution = 2 },
	light_flicker =
	{
		minimum_light_size = 1,
		light_intensity_to_size_coefficient = 0.2,
		color = {1,0.6,0},
		minimum_intensity = 0.05,
		maximum_intensity = 0.2
	},
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
burner_offshore_pump.energy_usage = "16kW"	-- 16kW ÷ 0.8 = 20 kW; energy_usage ÷ effectivity = ingame
burner_offshore_pump.pumping_speed = 5	-- 5 × 60 ticks = 300 / second

data:extend({ burner_offshore_pump })

-- Burner offshore-pump - ITEM
local burner_offshore_pump_item = table.deepcopy(data.raw["item"]["offshore-pump"])
burner_offshore_pump_item.name = "burner-offshore-pump"
burner_offshore_pump_item.icon = nil
burner_offshore_pump_item.icons = {
	{icon="__base__/graphics/icons/coal.png", shift={-12, -12}, scale=0.4},
	{icon="__base__/graphics/icons/offshore-pump.png", draw_background=true}
}
burner_offshore_pump_item.order = "b[fluids]-a[e-offshore-pump]"
burner_offshore_pump_item.place_result = "burner-offshore-pump"

data:extend({ burner_offshore_pump_item })

-- Burner offshore-pump - RECIPE
local burner_offshore_pump_recipe = table.deepcopy(data.raw["recipe"]["offshore-pump"])
burner_offshore_pump_recipe.name = "burner-offshore-pump"
burner_offshore_pump_recipe.ingredients = {
	{type = "item", name = "iron-plate", amount = 2},
	{type = "item", name = "stone-brick", amount = 2},
	{type = "item", name = "pipe", amount = 2},
	{type = "item", name = "motor", amount = 1}
}
burner_offshore_pump_recipe.results = {
	{type="item", name="burner-offshore-pump", amount=1}
}

data:extend({ burner_offshore_pump_recipe })
