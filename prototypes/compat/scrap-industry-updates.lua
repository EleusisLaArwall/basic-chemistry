-- FDSL is dependency of scrap-industry
local ftech = require("__fdsl__.lib.technology")

-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")

-- Make changes only if mod setting "synthetic scrap" is enabled
if bc_settings.bc_si_synthetic_scrap then
-- Add synthetic scrap recyling recipe to unlock with electronics (stock) / burner mechanics (aai)
	if mods["aai-industry"] then
		ftech.add_unlock("burner-mechanics", "bc-synthetic-plate-from-scrap")
	else
		ftech.add_unlock("electronics", "bc-synthetic-plate-from-scrap")
	end
end
