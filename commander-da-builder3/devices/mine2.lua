Mass = 0.0
CommanderApplyModBase = function()
	local multiplier = 1.25
	MetalProductionRate = multiplier*(MetalProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)