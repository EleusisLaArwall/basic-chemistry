-- FDSL is dependency of scrap-industry
local ftech = require("__fdsl__.lib.technology")

-- Make changes only if mod setting "synthetic scrap" is enabled
if settings.startup["bc-si-synthetic-scrap"].value then
-- Add synthetic scrap recyling recipe to unlock with electronics (stock) / burner mechanics (aai)
	if mods["aai-industry"] then
		ftech.add_unlock("burner-mechanics", "bc-synthetic-plate-from-scrap")
	else
		ftech.add_unlock("electronics", "bc-synthetic-plate-from-scrap")
	end
end
