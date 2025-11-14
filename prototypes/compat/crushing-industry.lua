-- FDSL is dependency of crushing-industry
local frep = require("__fdsl__.lib.recipe")

-- Make changes only if crushing industry's mod setting has enabled crushing coal
if settings.startup["crushing-industry-coal"].value then
-- Replace coal with crushed coal.
	frep.replace_ingredient("bc-syn-gas", "coal", {type="item", name="crushed-coal", amount=1})
end

-- If "more glass usage" is enabled, advanced circuit (red) requires glass. Also train-stuff, car and display require glass
-- IF aai is NOT installed AND basic chemistry's more glass mod setting is enabled AND crushing industry's sand and glass mod setting is enabled
if not mods["aai-industry"] and settings.startup["bc-aai-more-glass-usage"].value and settings.startup["crushing-industry-glass"].value then
	frep.add_ingredient("advanced-circuit", {type="item", name="glass", amount=1})
	frep.add_ingredient("train-stop", {type="item", name="glass", amount=2})
--	frep.add_ingredient("rail-signal", {type="item", name="glass", amount=1})
--	frep.add_ingredient("rail-chain-signal", {type="item", name="glass", amount=1})
	frep.add_ingredient("locomotive", {type="item", name="glass", amount=5})
	frep.add_ingredient("car", {type="item", name="glass", amount=5})
--	frep.add_ingredient("display-panel", {type="item", name="glass", amount=1})
end
