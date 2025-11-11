require("prototypes.base-recipe-changes")
require("prototypes.entity")
require("prototypes.fluid")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.resources")
require("prototypes.technology")

require("prototypes.compat.space-age")
-- Conditional require(…) because data.util can only be required if mod is active.
-- Conditional require(…) for mods[…] is fine according to devs on Discord.
-- Memo: NEVER do conditional require(…) with mod settings!
if mods["aai-industry"] then
	require("prototypes.compat.aai-industry")
end
-- Conditional require(…) because FDSL libs can only be required if mod is active.
-- Conditional require(…) for mods[…] is fine according to devs on Discord.
-- Memo: NEVER do conditional require(…) with mod settings!
if mods["crushing-industry"] then
	require("prototypes.compat.crushing-industry")
end
if mods["scrap-industry"] then
	require("prototypes.compat.scrap-industry")
end
