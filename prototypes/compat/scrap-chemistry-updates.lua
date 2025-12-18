-- FDSL is dependency of scrap-industry
local ftech = require("__fdsl__.lib.technology")

-- Methane is by-product for syn-gas, needs recycle option
ftech.add_unlock("steam-power", "bc-syn-gas-from-methane-gas")
