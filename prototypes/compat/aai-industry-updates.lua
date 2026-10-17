local util = require("__aai-industry__.data-util")

-- Basic Chemistry Mod Settings
local bc_settings = require ("bc-settings")

util.tech_lock_recipes(
	"burner-mechanics", {
		"pipe",
		"burner-offshore-pump",
		"bc-chemical-reactor",
		"bc-synthetic-plate"
	}
)

if not bc_settings.bc_simple_mode then
	util.tech_lock_recipes(
		"burner-mechanics", {
			"bc-syn-gas"
		}
	)
end
