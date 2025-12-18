-- Basic Chemistry Mod Settings
local bc_natural_gas = settings.startup["bc-natural-gas"].value
local bc_natural_gas_from_oil = settings.startup["bc-natural-gas-from-oil"].value
local bc_petroleum_gas_from_syn_gas = settings.startup["bc-petroleum-gas-from-syn-gas"].value

-- Basic Chemistry Full Control Mod Settings
local bc_fc_syn_gas_from_wood = settings.startup["bc-fc-syn-gas-from-wood"].value

-- Without AAI, unlock at start. (For AAI see compat/aai-industry-updates.lua)
if not mods["aai-industry"] then
	table.insert(data.raw.technology["electronics"].effects, {recipe = "bc-synthetic-plate", type = "unlock-recipe"})
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-chemical-reactor", type = "unlock-recipe"})
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-syn-gas", type = "unlock-recipe"})
end

if bc_petroleum_gas_from_syn_gas then
	table.insert(data.raw.technology["coal-liquefaction"].effects, {recipe = "bc-petroleum-gas-from-syn-gas", type = "unlock-recipe"})
end

if bc_natural_gas or bc_natural_gas_from_oil then
--	table.insert(data.raw.technology["oil-gathering"].effects, {recipe = "bc-basic-natural-gas-processing", type = "unlock-recipe"})
--	table.insert(data.raw.technology["advanced-oil-processing"].effects, {recipe = "bc-advanced-natural-gas-processing", type = "unlock-recipe"})
	table.insert(data.raw.technology["oil-gathering"].effects, {recipe = "bc-bas-natural-gas-processing", type = "unlock-recipe"})
	table.insert(data.raw.technology["oil-gathering"].effects, {recipe = "bc-syn-gas-from-methane-gas", type = "unlock-recipe"})
	table.insert(data.raw.technology["advanced-oil-processing"].effects, {recipe = "bc-adv-natural-gas-processing", type = "unlock-recipe"})
end

if bc_natural_gas_from_oil then
	table.insert(data.raw.technology["advanced-oil-processing"].effects, {recipe = "bc-advanced-oil-processing-with-gas", type = "unlock-recipe"})
end

if bc_fc_syn_gas_from_wood > 0 then
	table.insert(data.raw.technology["steam-power"].effects, {recipe = "bc-syn-gas-from-wood", type = "unlock-recipe"})
end
