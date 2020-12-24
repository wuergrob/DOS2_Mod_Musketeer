
if WeaponEx ~= nil then

	Ext.Print("[Musketeer] Musket Weapon Mastery file loaded!")

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Target_FirstAid"}, {"MUSK_MUSKET_FIRST_AID"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			ApplyStatus(skillData.TargetObjects[1], "MUSK_MASTERY_FIRST_AID", 0.0, 1, char)
			if skillData.TargetObjects[1] ~= char then
				ApplyStatus(char, "MUSK_MASTERY_FIRST_AID", 0.0, 1, char)
			end
		end
	end)

	WeaponEx.RegisterStatusListener("StatusRemoved", "RELOAD_DEBUFF", function(char, status)
		local character = Ext.GetCharacter(char)
		if not WeaponEx.MasteryBonusManager.HasMasteryBonuses(character.MyGuid, "MUSK_MUSKET_RELOAD_INSPIRE") then 
			--Ext.Print("Reload Debuff was removed, but Reload Mastery is not active") 
			return
		end
		CharacterUseSkill(char, "Shout_Musk_Musket_Mastery_Inspire", char, 1, 1, 1)
		PlayEffect(char, "RS3_FX_Skills_Divine_Cast_Shout_GuardianAngel_Root_01")
	end)

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Projectile_Musk_Grenade_GrenadeAssault"}, {"MUSK_MUSKET_GRENADE_ASSAULT"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			--Ext.Print(Ext.JsonStringify(skillData))
			--Ext.Print("Grenade Assault cast")
			if #skillData.TargetPositions[1] >= 3 then
				local targetPositions = skillData.TargetPositions[1]
				for i,v in pairs(Ext.GetCharacter(char):GetNearbyCharacters(13)) do
					--Ext.Print(i)
					--Ext.Print(v)
					--Ext.Print(CombatGetIDForCharacter(v))
					if CharacterIsDead(v) == 0 and CharacterIsAlly(char, v) == 1 and v ~= char then
						--Ext.Print(v)
						local x,y,z = Musketeer_GetRandomPosAround_Mastery(targetPositions[1], targetPositions[2], targetPositions[3], 5)
						--print(x, y, z)
						CharacterUseSkillAtPosition(v, "Projectile_Musk_Grenade_GrenadeAssault_Child", x, targetPositions[2], z, 0, 1)
					end
				end
			end
		end
	end)

	function Musketeer_Musket_Mastery_Enable_Grenade_Assault(objectGuid, tag)
		if tag == "Musk_Rifle_Musket_Mastery3" and ObjectIsCharacter(objectGuid) == 1 then
			--local character = Ext.GetCharacter(objectGuid)
			CharacterAddSkill(objectGuid, "Projectile_Musk_Grenade_GrenadeAssault", 1)
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Musket_Mastery_Enable_Grenade_Assault)

	local function Musketeer_Musket_Mastery_Enable_Grenade_Assault_Check(...)
		for i,db in pairs(Osi.DB_IsPlayer:Get(nil)) do
			local player = db[1]
			if IsTagged(player, "Musk_Rifle_Musket_Mastery3") == 1 then
				Musketeer_Musket_Mastery_Enable_Grenade_Assault(player, "Musk_Rifle_Musket_Mastery3")
			end
		end
	end
	--Ext.RegisterOsirisListener("SessionLoaded", 2, "after", Musketeer_Musket_Mastery_Enable_Grenade_Assault_Check)


	local function Musketeer_Musket_Mastery_Blazing_Flare_Radius(projectile)
		if projectile.SkillId ~= "Projectile_Flare_Explosion" then return end
		--Ext.PrintWarning("[Musketeer Blazing Flare Mastery] Tag checking added. Working correctly?")
		local attacker = Ext.GetCharacter(projectile.CasterHandle)
		--Ext.Print(PersistentVars.WeaponExMasteries[attacker.MyGuid])
		--Ext.Print(PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Musket_Mastery4"])
		-- TODO: add check for Mastery tag
		if PersistentVars.WeaponExMasteries[attacker.MyGuid] ~= nil
		and PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Musket_Mastery4"] == 1 then
				Ext.Print("Blazing Flare Explosion radius bonus added twice?")
				projectile.ExplodeRadius0 = projectile.ExplodeRadius0 + 3
				projectile.ExplodeRadius1 = projectile.ExplodeRadius1 + 3
		end
	end
	Ext.RegisterListener("ShootProjectile", Musketeer_Musket_Mastery_Blazing_Flare_Radius)

	function Musketeer_Musket_Mastery_BlazingFlare(objectGuid, tag)
		if tag ~= "Musk_Rifle_Musket_Mastery4" and tag ~= "Musk_Rifle_Musket_Equipped" then return end
		local tagList = {"Musk_Rifle_Musket_Mastery4"}
		for i = 1, #tagList, 1 do
			if IsTagged(objectGuid, tagList[i]) == 1 and IsTagged(objectGuid, "Musk_Rifle_Musket_Equipped") == 1 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "yes")
			end

			if IsTagged(objectGuid, tagList[i]) == 0 or IsTagged(objectGuid, "Musk_Rifle_Musket_Equipped") == 0 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "no")
			end
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Musket_Mastery_BlazingFlare)
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Musket_Mastery_BlazingFlare)
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