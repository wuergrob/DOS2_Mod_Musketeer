Ext.Print("[Musketeer] Blunderbuss Weapon Mastery file loaded!")

if WeaponEx ~= nil then

	-- Cannot resolve character handle in restricted context, consider saving mastery flag in PersistentVars to check for Mastery
	--[[
	Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
		--local char = Ext.GetCharacter(character.MyGuid)
		Ext.Print(PersistentVars)

		if char:HasTag("Musk_Rifle_Blunderbuss_Mastery1") and skill.Name == "Rush_Musk_Blitzkrieg" then
			local skillCost = Ext.StatGetAttribute("Rush_Musk_Blitzkrieg", "ActionPoints")
			Ext.Print(skillCost)
			if skillCost > 0 then
				return skillCost -1, false
			end
			-- Don't return anything to use built-in AP cost
			-- Otherwise return AP and elemental affinity flag (i.e. whether the character is standing on a matching element)
		end

		return 0, false
	end)
	--]]
	Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
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
		if not WeaponEx.MasteryBonusManager.HasMasteryBonuses(character.MyGuid, "MUSK_BLUNDERBUSS_RELOAD_INVIGORATE") then Ext.Print("[BLUNDERBUSS] Reload Debuff was removed, but Reload Mastery is not active") return end
		--CharacterUseSkill(char, "Shout_Musk_Musket_Mastery_Inspire", char, 1, 1, 1)
		--PlayEffect(char, "RS3_FX_Skills_Divine_Cast_Shout_GuardianAngel_Root_01")
		CharacterUseSkill(char, "Target_Haste", char, 1, 1, 1)
		PlayEffect(char, "Musketeer_FX_Haste_Infuse")
	end)

	local function Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg_GameStart(...)
		for i,db in pairs(Osi.DB_IsPlayer:Get(nil)) do
			local player = db[1]
			if PersistentVars.WeaponExMasteries[player] == nil then PersistentVars.WeaponExMasteries[player] = {} end
			if IsTagged(player, "Musk_Rifle_Blunderbuss_Mastery1") and IsTagged(player, "Musk_Rifle_Blunderbuss_Equipped") and PersistentVars.WeaponExMasteries[player]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] ~= 1 then
				--if PersistentVars.WeaponExMasteries[player] == nil then PersistentVars.WeaponExMasteries[player] = {} end
				--PersistentVars.WeaponExMasteries[player]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] = 1
				Musketeer_WeaponEx_AddToPersistentVars(player, "Blunderbuss_Mastery1_Enhanced_Blitzkrieg", "yes")
			end
		end
	end
	Ext.RegisterOsirisListener("GameStarted", 2, "after", Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg_GameStart)

	function Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg(objectGuid, tag)
		if tag ~= "Musk_Rifle_Blunderbuss_Mastery1" and tag ~= "Musk_Rifle_Blunderbuss_Equipped" then return end
		if IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Mastery1") and IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") and ObjectIsCharacter(objectGuid) then
			--local character = Ext.GetCharacter(objectGuid)
			--if PersistentVars.WeaponExMasteries[objectGuid] == nil then PersistentVars.WeaponExMasteries[objectGuid] = {} end
			--PersistentVars.WeaponExMasteries[objectGuid]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] = 1
			Musketeer_WeaponEx_AddToPersistentVars(objectGuid, "Blunderbuss_Mastery1_Enhanced_Blitzkrieg", "yes")
		end
	end
	Ext.RegisterOsirisListener("ObjectWasTagged", 2, "before", Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg)

	function Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg(objectGuid, tag)
		if tag ~= "Musk_Rifle_Blunderbuss_Equipped" and tag ~= "Musk_Rifle_Blunderbuss_Mastery1" then return end
		if not IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Equipped") or IsTagged(objectGuid, "Musk_Rifle_Blunderbuss_Mastery1") and ObjectIsCharacter(objectGuid) then
			--local character = Ext.GetCharacter(objectGuid)
			--if PersistentVars.WeaponExMasteries[objectGuid] == nil then PersistentVars.WeaponExMasteries[objectGuid] = {} end
			--PersistentVars.WeaponExMasteries[objectGuid]["Blunderbuss_Mastery1_Enhanced_Blitzkrieg"] = 1
			Musketeer_WeaponEx_AddToPersistentVars(objectGuid, "Blunderbuss_Mastery1_Enhanced_Blitzkrieg", "no")
		end
	end
	Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", Musketeer_Blunderbuss_Mastery_Enhanced_Blitzkrieg)

	WeaponEx.MasteryBonusManager.RegisterSkillListener({"Rush_Musk_Blitzkrieg"}, {"MUSK_BLUNDERBUSS_BLITZKRIEG"}, function(bonuses, skill, char, state, skillData)
		if state == WeaponEx.SKILL_STATE.CAST then
			ApplyStatus(char, "MUSK_BLITZKRIEG_MASTERY1_BUFF", 6.0, 1, char)
		end
	end)

end


