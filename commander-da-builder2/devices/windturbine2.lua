Mass = 0.0
CommanderApplyModBase = function()
	local multiplier = 1.25
	EnergyProductionRate = multiplier*(EnergyProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)