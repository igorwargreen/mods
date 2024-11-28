-- Commander Architect

multiplierBracingCost = 0.5
multiplierBuiltTime = 0.5
multiplierBuiltTimeActive = 0.25
multiplierBracingHitPoints = 2

function UpdateMaterial(material)
	material.MetalBuildCost = material.MetalBuildCost*multiplierBracingCost
	material.MetalRepairCost = material.MetalRepairCost*multiplierBracingCost
	material.MetalReclaim = material.MetalReclaim*multiplierBracingCost
	material.EnergyBuildCost = material.EnergyBuildCost*multiplierBracingCost
	material.EnergyRepairCost = material.EnergyRepairCost*multiplierBracingCost
	material.HitPoints = material.HitPoints*multiplierBracingHitPoints
	material.CommanderReceiveDamageMultiplier = 0.5 -- receive reduced charge when our material is damaged by the enemy
end

CommanderApplyModBase = function()
	armour = FindMaterial("armour")
	UpdateMaterial(armour)
	
	door = FindMaterial("door")
	UpdateMaterial(door)
	
	shield = FindMaterial("shield")
	UpdateMaterial(shield)

	bracingbg = FindMaterial("backbracing")
	UpdateMaterial(bracingbg)
	
	bracing = FindMaterial("bracing")
	UpdateMaterial(bracing)

	for k, material in ipairs(Materials) do
		if active then
			material.BuildTime = material.BuildTime*multiplierBuiltTimeActive
		else
			material.BuildTime = material.BuildTime*multiplierBuiltTime
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)