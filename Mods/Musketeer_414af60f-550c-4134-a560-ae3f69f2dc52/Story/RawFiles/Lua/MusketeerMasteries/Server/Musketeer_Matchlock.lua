
if WeaponEx ~= nil then

	Ext.Print("[Musketeer] Matchlock Weapon Mastery file loaded!")

	WeaponEx.RegisterStatusListener("StatusRemoved", "RELOAD_DEBUFF", function(char, status)
		if not WeaponEx.MasteryBonusManager.HasMasteryBonuses(char, "MUSK_MATCHLOCK_RELOAD_STEADY_BREATHING") then
			--Ext.Print("Reload Debuff was removed, but Reload Mastery is not active") 
			return
		end
		--Ext.Print("[Matchlock Mastery 1 - Counterstrike] Not implemented yet. Does stat entry for status exist?")
		--Keep in mind, that the duration is in seconds, not turns. Change to 6.0 for live version.
		ApplyStatus(char, "MUSK_MASTERY_COUNTERSTRIKE", 6.0, 1, char)
	end)

	function Musketeer_Matchlock_Mastery_Enable_Concentrated_Terror(objectGuid, tag)
		if tag == "Musk_Rifle_Matchlock_Mastery2" and ObjectIsCharacter(objectGuid) then
			--local character = Ext.GetCharacter(objectGuid)
			CharacterAddSkill(objectGuid, "Projectile_Musk_Matchlock_Concentrated_Terror", 1)
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Matchlock_Mastery_Enable_Concentrated_Terror)

	--[[
	function Musketeer_Matchlock_Mastery_Unlearn_Concentrated_Terror(objectGuid, tag)
		if tag ~= "Musk_Rifle_Matchlock_Equipped" and tag ~= "Musk_Rifle_Matchlock_Mastery2" then return end
		if IsTagged(objectGuid, "Musk_Rifle_Matchlock_Equipped") == 0 or IsTagged(objectGuid, "Musk_Rifle_Matchlock_Mastery2") == 0 and ObjectIsCharacter(objectGuid) == 1 then
			--CharacterRemoveSkill(objectGuid, "Projectile_Musk_Matchlock_Concentrated_Terror")
		end
	end
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Matchlock_Mastery_Unlearn_Concentrated_Terror)
	]]

	function Musketeer_Matchlock_Mastery_Manage_Skill_Bonus(objectGuid, tag)
		if tag ~= "Musk_Rifle_Matchlock_Mastery1" and tag ~= "Musk_Rifle_Matchlock_Mastery4" and tag ~= "Musk_Rifle_Matchlock_Equipped" then return end

		local tagList = {"Musk_Rifle_Matchlock_Mastery1", "Musk_Rifle_Matchlock_Mastery4"}
		for i = 1, #tagList, 1 do
			if IsTagged(objectGuid, tagList[i]) == 1 and IsTagged(objectGuid, "Musk_Rifle_Matchlock_Equipped") == 1 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "yes")
			end

			if IsTagged(objectGuid, tagList[i]) == 0 or IsTagged(objectGuid, "Musk_Rifle_Matchlock_Equipped") == 0 then
				Musketeer_WeaponEx_AddToPersistentVars(objectGuid, tagList[i], "no")
			end
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Matchlock_Mastery_Manage_Skill_Bonus)
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Matchlock_Mastery_Manage_Skill_Bonus)

	-- Musketeer_WeaponEx_AddToPersistentVars(CharacterGetHostCharacter(), "Musk_Rifle_Matchlock_Mastery1", "yes")
	-- Appears to throw errors when items are attacked. Works though, so I'll keep this instead of rewriting it by using a different event.	

	Ext.RegisterListener("StatusHitEnter", function(esvStatus, hitContext)
		--bla(hitContext)
		if esvStatus ~= nil and esvStatus.StatusSourceHandle ~= nil and esvStatus.TargetHandle ~= nil then
			local attacker = Ext.GetCharacter(esvStatus.StatusSourceHandle)
			if (hitContext.HitType == "Ranged" or
				hitContext.HitType == "WeaponDamage") and
				attacker and
				HasActiveStatus(attacker.MyGuid, "MUSK_MASTERY_COUNTERSTRIKE") == 1 then
					--Ext.Print("Character has Counterstrike Status and used a weapon based attack!")
					RemoveStatus(attacker.MyGuid, "MUSK_MASTERY_COUNTERSTRIKE")
			end
		end
	end)
end

