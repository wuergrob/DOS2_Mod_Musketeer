Ext.Print("[Musketeer] Musket Weapon Mastery file loaded!")

function Musketeer_GetRandomPosAround_Mastery(X, Y, Z, Radius)
    local newX = X + ((math.random() - 0.5) * Radius)
    local newY = Y + ((math.random() - 0.5) * Radius)
    local newZ = Z + ((math.random() - 0.5) * Radius)
    return newX, newY, newZ
end

if WeaponEx ~= nil then

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Target_FirstAid"}, {"MUSK_MUSKET_FIRST_AID"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			ApplyStatus(char, "MUSK_MASTERY_FIRST_AID", 0.0, 1, char)
			ApplyStatus(skillData.TargetObjects[1], "MUSK_MASTERY_FIRST_AID", 0.0, 1, char)
		end
	end)

	WeaponEx.RegisterStatusListener("StatusRemoved", "RELOAD_DEBUFF", function(char, status)
		local character = Ext.GetCharacter(char)
		if not WeaponEx.MasteryBonusManager.HasMasteryBonuses(character.MyGuid, "MUSK_MUSKET_RELOAD_INSPIRE") then Ext.Print("Reload Debuff was removed, but Reload Mastery is not active") return end
		CharacterUseSkill(char, "Shout_Musk_Musket_Mastery_Inspire", char, 1, 1, 1)
		PlayEffect(char, "RS3_FX_Skills_Divine_Cast_Shout_GuardianAngel_Root_01")
	end)

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Projectile_Musk_Grenade_GrenadeAssault"}, {"MUSK_MUSKET_GRENADE_ASSAULT"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			--Ext.Print(Ext.JsonStringify(skillData))
			if #skillData.TargetPositions[1] >= 3 then
				local targetPositions = skillData.TargetPositions[1]
				for i,v in pairs(Ext.GetCharacter(char):GetNearbyCharacters(13)) do
					--Ext.Print(CombatGetIDForCharacter(v))
					if CharacterIsDead(v) == 0 and CharacterIsAlly(char, v) == 1 and CharacterIsEnemy(char, v) == 0 and v ~= char then
							local x,y,z = Musketeer_GetRandomPosAround_Mastery(targetPositions[1], targetPositions[2], targetPositions[3], 5)
							CharacterUseSkillAtPosition(v, "Projectile_Musk_Grenade_GrenadeAssault_Child", x, y, z, 1, 1)
					end
				end
			end
		end
	end)

	function Musketeer_Musket_Mastery_Enable_Grenade_Assault(objectGuid, tag)
		if tag == "Musk_Rifle_Musket_Mastery2" and ObjectIsCharacter(objectGuid) then
			--local character = Ext.GetCharacter(objectGuid)
			CharacterAddSkill(objectGuid, "Projectile_Musk_Grenade_GrenadeAssault", 1)
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Musket_Mastery_Enable_Grenade_Assault)

	local function Musketeer_Musket_Mastery_Enable_Grenade_Assault_Check(...)
		for i,db in pairs(Osi.DB_IsPlayer:Get(nil)) do
			local player = db[1]
			if IsTagged(player, "Musk_Rifle_Musket_Mastery2") then
				Musketeer_Musket_Mastery_Enable_Grenade_Assault(player, "Musk_Rifle_Musket_Mastery2")
			end
		end
	end
	Ext.RegisterOsirisListener("GameStarted", 2, "after", Musketeer_Musket_Mastery_Enable_Grenade_Assault_Check)


	local function Musketeer_Musket_Mastery_Blazing_Flare_Radius(projectile)
		--Ext.Print("CANYOUTALK??")
		if projectile.SkillId == "Projectile_Flare_Explosion" then
			Ext.Print("Blazing Flare Projectile was launched.")
			--Ext.Print("projectile.ExplodeRadius0 and projectile.ExplodeRadius1:")
			--Ext.Print(projectile.ExplodeRadius0)
			--Ext.Print(projectile.ExplodeRadius0)
			projectile.ExplodeRadius0 = projectile.ExplodeRadius0 + 3
			projectile.ExplodeRadius1 = projectile.ExplodeRadius1 + 3
		end
	end
	Ext.RegisterListener("ShootProjectile", Musketeer_Musket_Mastery_Blazing_Flare_Radius)
	--[[
	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Target_Musk_GrenadeAssault"}, {"MUSK_MUSKET_FIRST_AID"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			Ext.Print("Applying Musketeer First Aid Effect!")
			ApplyStatus(char, "BLESSED", 6.0, 0, char)
		end
	end)
	--]]

	--[[

	This is probably a good base function to derive the reload AoE inspire effect from (Retrieve party members and implement a distance check)

	MasteryBonusManager.RegisterSkillListener({"Shout_FleshSacrifice", "Shout_EnemyFleshSacrifice"}, {"BLOOD_EMPOWER"}, function(bonuses, skill, char, state, skillData)
		if state == SKILL_STATE.CAST then
			---@return string[]
			local party = GameHelpers.GetParty(char, true, true, false, false)
			if #party > 0 then
				for i,partyMember in pairs(party) do
					local surfaceGround = GetSurfaceGroundAt(partyMember)
					local surfaceCloud = GetSurfaceCloudAt(partyMember)
					if string.find(surfaceCloud, "Blood") or string.find(surfaceCloud, "Blood") then
						ApplyStatus(partyMember, "LLWEAPONEX_BLOOD_EMPOWERED", 6.0, 0, char)
					end
				end
			end
		end
	end)

	--]]
end