--local item_sounds = require("__base__.prototypes.item_sounds")
-- FDSL is dependency of crushing industry
local frep = require("__fdsl__.lib.recipe")

-- Settings for fluid-box and methane name in ../recipe.lua

-- Basic Chemistry Mod Settings
local bc_natural_gas = settings.startup["bc-natural-gas"].value
local bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value
local bc_petroleum_gas_from_syn_gas = settings.startup["bc-petroleum-gas-from-syn-gas"].value

-- Scrappy Chemistry Mod Settings
local sc_sulfur = settings.startup["scrap-chemistry-sulfur"].value

-- ================================================================================

frep.add_result("bc-syn-gas", {type="fluid", name="methane", amount=3, probability=0.42})

if bc_natural_gas or bc_natural_gas_from_oil then
	-- Basic natural gas processing
	frep.add_result("bc-bas-natural-gas-processing", {type="item", name="tar", amount=1, probability=0.02})
	frep.add_result("bc-bas-natural-gas-processing", {type="fluid", name="sour-gas", amount=20, fluidbox_index=2})
	-- Advanced natural gas processing
	frep.add_result("bc-adv-natural-gas-processing", {type="item", name="tar", amount=1, probability=0.02})
	frep.add_result("bc-adv-natural-gas-processing", {type="fluid", name="sour-gas", amount=15, fluidbox_index=2})
	if bc_petroleum_gas_from_syn_gas then
		-- Natural gas is main resource for methane
		-- Hide methane-from-coal recipe if petroleum-gas-from-syn-gas is enabled, otherwise loop
		data.raw.recipe.methane.hidden = true
	end
end

if bc_natural_gas_from_oil then
	-- Oil processing with gas
	frep.add_result("bc-advanced-oil-processing-with-gas", {type="item", name="tar", amount=1, probability=0.15})
end

if bc_petroleum_gas_from_syn_gas then
	frep.add_result("bc-petroleum-gas-from-syn-gas", {type="fluid", name="butane", amount=4, probability=0.26})
end
