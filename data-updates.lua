-- Conditional require(…) because data.util can only be required if mod is active.
-- Conditional require(…) for mods[…] is fine according to devs on Discord.
-- Memo: NEVER do conditional require(…) with mod settings!
if mods["aai-industry"] then
	require("prototypes.compat.aai-industry-updates")
end
-- Conditional require(…) because FDSL libs can only be required if mod is active.
-- Conditional require(…) for mods[…] is fine according to devs on Discord.
-- Memo: NEVER do conditional require(…) with mod settings!
if mods["crushing-industry"] then
	require("prototypes.compat.crushing-industry-updates")
end
if mods["scrap-industry"] then
	require("prototypes.compat.scrap-industry-updates")
end
if mods["scrap-chemistry"] then
	require("prototypes.compat.scrap-chemistry-updates")
end
