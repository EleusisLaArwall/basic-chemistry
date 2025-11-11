-- FDSL is dependency of crushing-industry
local frep = require("__fdsl__.lib.recipe")

-- Make changes only if crushing indstry's mod setting has enabled crushing coal
if settings.startup["crushing-industry-coal"].value then
-- Replace coal with crushed coal.
	frep.replace_ingredient("bc-syn-gas", "coal", {type="item", name="crushed-coal", amount=1})
end
