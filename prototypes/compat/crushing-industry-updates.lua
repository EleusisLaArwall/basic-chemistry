-- FDSL is dependency of crushing-industry
local ftech = require("__fdsl__.lib.technology")

-- Make changes only if crushing indstry's mod setting has enabled crushing coal
if settings.startup["crushing-industry-coal"].value then
-- Add crushed-coal recipe to unlock with steam-power (stock) / burner-mechanics (aai)
-- Required to make synthetic-plates at the start.
	if mods["aai-industry"] then
		ftech.add_unlock("burner-mechanics", "crushed-coal")
	else
		ftech.add_unlock("steam-power", "crushed-coal")
	end
end
