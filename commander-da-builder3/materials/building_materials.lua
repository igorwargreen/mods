-- Commander Architect

multiplierBracingCost = 0.5
multiplierBuiltTime = 0.5
multiplierBuiltTimeActive = 0.25

function UpdateMaterial(material)
	material.MetalBuildCost = material.MetalBuildCost*multiplierBracingCost
	material.MetalRepairCost = material.MetalRepairCost*multiplierBracingCost
	material.MetalReclaim = material.MetalReclaim*multiplierBracingCost
	material.EnergyBuildCost = material.EnergyBuildCost*multiplierBracingCost
	material.EnergyRepairCost = material.EnergyRepairCost*multiplierBracingCost
	material.Mass = 0.09
	material.HitPoints = 250
	material.CommanderReceiveDamageMultiplier = 0.5 -- receive reduced charge when our material is damaged by the enemy
end

CommanderApplyModBase = function()
	bracing = FindMaterial("bracing")
	UpdateMaterial(bracing)

	bracingbg = FindMaterial("backbracing")
	UpdateMaterial(bracingbg)

	for k, material in ipairs(Materials) do
		if active then
			material.BuildTime = material.BuildTime*multiplierBuiltTimeActive
		else
			material.BuildTime = material.BuildTime*multiplierBuiltTime
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)