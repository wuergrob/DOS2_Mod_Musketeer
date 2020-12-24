
if WeaponEx ~= nil then

	Ext.Print("[Musketeer] Blunderbuss Weapon Mastery file loaded!")

	Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
		--Ext.Print("[Musketeer Server: GetSkillAPCost] I'm being called.")
		if skill.Name ~= "Rush_Musk_Blitzkrieg" then return end
		if character.MyGuid ~= nil then
			local calculatedCost, affinity = Game.Math.GetSkillAPCost(skill, character, grid, position, radius)
			local charGuid = character.MyGuid
			if PersistentVars.WeaponExMasteries[charGuid] == nil then PersistentVars.WeaponExMasteries[charGuid] = {} end
			if PersistentVars.WeaponExMasteries[charGuid].Blunderbuss_Mastery1_Enhanced_Blitzkrieg == 1 then
				--Ext.Print("[Server] Blunderbuss Mastery1 PersVar is set")
				if calculatedCost > 0 then
					return calculatedCost - 1, affinity
				end
				return 0, affinity
			end
		end
		--Ext.Print("GetSkillApCost with Blitzkrieg called, but cost was not modified.")
	end)

	WeaponEx.RegisterStatusListener("StatusRemoved", "RELOAD_DEBUFF", function(char, status)
		local character = Ext.GetCharacter(char)
		if not WeaponEx.MasteryBonusManager.HasMasteryBonuses(character.MyGuid, "MUSK_BLUNDERBUSS_RELOAD_INVIGORATE") then 
			--Ext.Print("[BLUNDERBUSS] Reload Debuff was removed, but Reload Mastery is not active")
			return
		end
		--CharacterUseSkill(char, "Shout_Musk_Musket_Mastery_Inspire", char, 1, 1, 1)
		--PlayEffect(char, "RS3_FX_Skills_Divine_Cast_Shout_GuardianAngel_Root_01")
		CharacterUseSkill(char, "Target_Musk_Blunderbuss_Mastery_Haste", char, 1, 1, 1)
		PlayEffect(char, "Musketeer_FX_Haste_Infuse")
	end)

	function Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg(objectGuid, tag)
		if tag ~= "Musk_Rifle_Blunderbuss_Mastery1" and tag ~= "Musk_Rifle_Blunderbuss_Equipped" then return end
		if IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Mastery1") == 1 and IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") == 1 and ObjectIsCharacter(objectGuid) == 1 then
			--local character = Ext.GetCharacter(objectGuid)
			--if PersistentVars.WeaponExMasteries[objectGuid] == nil then PersistentVars.WeaponExMasteries[objectGuid] = {} end
			--PersistentVars.WeaponExMasteries[objectGuid]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] = 1
			Musketeer_WeaponEx_AddToPersistentVars(objectGuid, "Blunderbuss_Mastery1_Enhanced_Blitzkrieg", "yes")
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg)

	function Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg(objectGuid, tag)
		if tag ~= "Musk_Rifle_Blunderbuss_Equipped" and tag ~= "Musk_Rifle_Blunderbuss_Mastery1" then return end
		if IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") == 0 or IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Mastery1") == 0 and ObjectIsCharacter(objectGuid) == 1 then
			--local character = Ext.GetCharacter(objectGuid)
			--if PersistentVars.WeaponExMasteries[objectGuid] == nil then PersistentVars.WeaponExMasteries[objectGuid] = {} end
			--PersistentVars.WeaponExMasteries[objectGuid]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] = 1
			Musketeer_WeaponEx_AddToPersistentVars(objectGuid, "Blunderbuss_Mastery1_Enhanced_Blitzkrieg", "no")
		end
	end
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg)

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Rush_Musk_Blitzkrieg"}, {"MUSK_BLUNDERBUSS_BLITZKRIEG"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			if CharacterIsDead(char) == 0 then
				--Ext.PrintWarning("Blitzkrieg MagicArmor buff applied")
				ApplyStatus(char, "MUSK_BLITZKRIEG_MASTERY_MAGICARMOR_BUFF", 6.0, 1, char)
			end
		end
	end)

	local function Musketeer_Blunderbuss_Mastery_Steadfast(targetGuid, statusId, statusHandle, instigatorGuid)
		if statusId ~= "MUSK_STEADFAST" then return end
		if IsTagged(instigatorGuid, "Musk_Rifle_Blunderbuss_Mastery3") == 1 and IsTagged(instigatorGuid, "Musk_Rifle_Blunderbuss_Equipped") == 1 then
			NRD_StatusPreventApply(targetGuid, statusHandle, 1)
			ApplyStatus(targetGuid, "MUSK_STEADFAST_BLUNDERBUSS_MASTERY", 18.0, 0, instigatorGuid)
			--Ext.Print("Applied enhanced Steadfast")
		end
		--Ext.Print("Blunderbuss Steadfast handler done")
	end
	Ext.RegisterOsirisListener("NRD_OnStatusAttempt", 4, "after", Musketeer_Blunderbuss_Mastery_Steadfast)

	function Musketeer_Blunderbuss_Mastery_Buckshot(objectGuid, tag)
		if tag ~= "Musk_Rifle_Blunderbuss_Mastery4" and tag ~= "Musk_Rifle_Blunderbuss_Equipped" then return end
		local tagList = {"Musk_Rifle_Blunderbuss_Mastery4"}
		
		for i = 1, #tagList, 1 do
			if IsTagged(objectGuid, tagList[i]) == 1 and IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") == 1 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "yes")
			end

			if IsTagged(objectGuid, tagList[i]) == 0 or IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") == 0 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "no")
			end
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Blunderbuss_Mastery_Buckshot)
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Blunderbuss_Mastery_Buckshot)

end


