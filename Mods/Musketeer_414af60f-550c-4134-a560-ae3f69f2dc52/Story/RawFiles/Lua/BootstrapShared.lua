
Musketeer_MarkDamage_Table = {
    Projectile_Rifle_Snipe = 35,
    Projectile_Final_Act = 45,
    Projectile_Rifle_Scattershot = 10
}

-- TODO: Add different projectile styles for air and earth.
Musketeer_Rune_Projectile = {
    Default = "9bd7991d-7787-4390-a1b2-e56b37aa510f",
    Poison = "465c6446-9031-4e70-93d4-6c84da8a48ed",
    Air = "9bd7991d-7787-4390-a1b2-e56b37aa510f",
    Earth = "9bd7991d-7787-4390-a1b2-e56b37aa510f",
    Fire = "3b0acba6-db1c-4098-b0aa-70e9559bb118",
    Water = "bb1943cb-15c9-48f8-8f70-77df652ad0c6"
}

function Musketeer_GetRandomPosAround_Mastery(X, Y, Z, Radius)
    local newX = X + ((math.random() - 0.5) * Radius)
    local newY = Y + ((math.random() - 0.5) * Radius)
    local newZ = Z + ((math.random() - 0.5) * Radius)
    return newX, newY, newZ
end

function TestWeaponExMasteryAddition()
    if Ext.IsModLoaded("c60718c3-ba22-4702-9c5d-5ad92b41ba5f") then
		Ext.Print("WeaponEx is loaded, adding custom interactions")
        if Mods["WeaponExpansion"] ~= nil then
            Ext.Print("WeaponExpansion Mods table found")
            local WeaponEx = Mods["WeaponExpansion"]
            local TranslatedString = WeaponEx.LeaderLib.Classes["TranslatedString"]

            -- Musket Masteries
            Mods["WeaponExpansion"].Masteries.Musk_Rifle_Musket = Mods["WeaponExpansion"].MasteryDataClasses.MasteryData:Create("Musk_Rifle_Musket", TranslatedString:Create("ha25146f2ge2bbg4af6ga0dcg8340a68e5a3c", "Musket"), "#F5785A", {
                [0] = {Name = TranslatedString:Create("h61486b7fg93dag4c1fgb70ag324dd6edbc0c", "Recruit"), Color="#FDFFEA"},
                [1] = {Name = TranslatedString:Create("h587517a8g1aabg4305g84a9g0792d312ffb9", "Drafted Militia"), Color="#FFAAAA"},
                [2] = {Name = TranslatedString:Create("h54f440beg34d9g40d1gb2eaga38b28a253ca", "Veteran Riflemen"), Color="#D46A6A"},
                [3] = {Name = TranslatedString:Create("h45b232feg640cg48dag966agc13dc69941c1", "Seasoned Grenadier"), Color="#DD3939"},
                [4] = {Name = TranslatedString:Create("h31f914c1gab3bg42d1ga6c7gd33bc4043c07", "King's Royal Musketeer"), Color="#FF1515"},
            })

            -- Blunderbuss Masteries
            Mods["WeaponExpansion"].Masteries.Musk_Rifle_Blunderbuss = Mods["WeaponExpansion"].MasteryDataClasses.MasteryData:Create("Musk_Rifle_Blunderbuss", TranslatedString:Create("h2f4d621fg5904g4391g837cg864d414f6480", "Blunderbuss"), "#F5785A", {
                [0] = {Name = TranslatedString:Create("h61486b7fg93dag4c1fgb70ag324dd6edbc0c", "Recruit"), Color="#FDFFEA"},
                [1] = {Name = TranslatedString:Create("h5abb1f7ag640bg4a82gabe8g981eb5616ab9", "Conscript"), Color="#FFAAAA"},
                [2] = {Name = TranslatedString:Create("h2a6efa27gc484g4dabg9c13ga2c7fcf3ac24", "Frontline Soldier"), Color="#D46A6A"},
                [3] = {Name = TranslatedString:Create("h0739d367g3e72g4606g842ag17373e497a58", "Guerilla Riflemen"), Color="#DD3939"},
                [4] = {Name = TranslatedString:Create("hf96d760dg71b9g4173g8607g8161fba22470", "Expert Infiltrator"), Color="#FF1515"},
            })

            -- Matchlock Masteries
            Mods["WeaponExpansion"].Masteries.Musk_Rifle_Matchlock = Mods["WeaponExpansion"].MasteryDataClasses.MasteryData:Create("Musk_Rifle_Matchlock", TranslatedString:Create("h800072dcgad7ag4436gb1e6g9af5040217bf", "Matchlock"), "#F5785A", {
                [0] = {Name = TranslatedString:Create("h61486b7fg93dag4c1fgb70ag324dd6edbc0c", "Recruit"), Color="#FDFFEA"},
                [1] = {Name = TranslatedString:Create("h0664b17agbe69g4b6dg9f60g1a3c4332fc62", "Outlaw Musketeer"), Color="#FFAAAA"},
                [2] = {Name = TranslatedString:Create("h8decc7e8g87b1g419bgb172ga566f83a0fca", "Soldier of Fortune"), Color="#D46A6A"},
                [3] = {Name = TranslatedString:Create("h555867ecg8549g46eag95acg55ffa4608eec", "Unrelenting Hunter"), Color="#DD3939"},
                [4] = {Name = TranslatedString:Create("h685509fcg5fedg4497g88f4g9d84ee879568", "Hunter Killer"), Color="#FF1515"},
            })

            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Musket")
            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Blunderbuss")
            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Matchlock")
            --Mods["WeaponExpansion"].Tags.WeaponTypes.Musk_Rifle_Musket = "Musk_Rifle_Musket"
            local reloadSkillVariations = {"Shout_Reload", "Shout_Reload_Incendiary", "Shout_Reload_Explosive", "Shout_Reload_Freezing", "Shout_Reload_Silver", "Shout_Reload_Holy"}

            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery1"] = {	MUSK_MUSKET_FIRST_AID = {
                Skills = {"Target_FirstAid"},
                Param = TranslatedString:Create("h62d5dc47g5c25g4501g8b7egf0b3d90a756d","<font color='#00FF99'>Additionally heals you and your target for <font color='#ff3300'>25%</font> of this skill's Healing effect. (Only applies once when cast on yourself)</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery2"] = {	MUSK_MUSKET_RELOAD_INSPIRE = {
                Skills = reloadSkillVariations,
                Param = TranslatedString:Create("hffda4f23g4c7dg4b6cga0fbgddf8443a38d4","<font color='#00FF99'>After you finish reloading, <font color='#ff3300'>inspire</font> all allies and yourself in a [Stats:Shout_Musk_Musket_Mastery_Inspire:AreaRadius]m radius for 1 turn.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery3"] = {	MUSK_MUSKET_GRENADE_ASSAULT = {
                Skills = {"Projectile_Musk_Grenade_GrenadeAssault"}
                --Param = TranslatedString:Create("hb01d5b56g799ag4545ga221g12243f8c1bba","")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery4"] = {	MUSK_MUSKET_BLAZING_FLARE = {
                Skills = {"Target_Musk_Flare_Test_Target"},
                Param = TranslatedString:Create("h2afdeab9g1831g42f2gb761g9ef997e4c681","<font color='#00FF99'>Explosion radius is increased by <font color='#ff3300'>3m</font></font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery5"] = {	MUSK_MUSKET_UNUSED2 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("hd40f14d5g4946g4462gac7bga35fua61ed27","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}



            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery1"] = {	MUSK_BLUNDERBUSS_BLITZKRIEG = {
                Skills = {"Rush_Musk_Blitzkrieg"},
                Param = TranslatedString:Create("h1c1012afgdba4g49dagb1aeg43aae8b3e069", "<font color='#00FF99'><font color='#ff3300'>AP Cost</font> reduced by 1, additionally grants <font color='#97FBFF'>Magic Armor</font> to the same amount, scaling with <font color='#579CCA'>Hydrosophist</font></font>")
                --NamePrefix = "<font color='#DD4444'>Field Medic's</font>"
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery2"] = {	MUSK_BLUNDERBUSS_RELOAD_INVIGORATE = {
                Skills = reloadSkillVariations,
                Param = TranslatedString:Create("h5cbb47bfgba39g4eaag8a1eg5dc993d4273b","<font color='#00FF99'>After you finish reloading, grants <font color='#00FFFF'>[Key:HASTED_DisplayName]</font> for 1 turn.</font>")
            }}
            -- Scrap the "Fire Up" Skill and instead add Ammo recovery effect to "Steadfast" skill.
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery3"] = {	MUSK_BLUNDERBUSS_FIRE_UP = {
                Skills = {"Target_Musk_Steadfast"},
                Param = TranslatedString:Create("he0976981gba25g484fg8901gfa0a74928729","<font color='#00FF99'>Movement speed reduction decreased from 75% to 25%.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery4"] = {	MUSK_BLUNDERBUSS_BUCKSHOT = {
                Skills = {"Projectile_Buckshot"},
                Param = TranslatedString:Create("h221a8ecdg8d9dg491bgba62gc704c6b49460","<font color='#00FF99'>Explosion effect on impact is extended by 2m.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery5"] = {	MUSK_BLUNDERBUSS_UNUSED2 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h8cdc4957g11c1g4a2bgb661g01e750ca214f","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}



            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Matchlock_Mastery1"] = {	MUSK_MATCHLOCK_REND_THE_MARKED = {
                Skills = {"Projectile_Rend_The_Marked"},
                Param = TranslatedString:Create("h4ecd7428g0115g48bega393gfb4468faf9d0", "<font color='#00FF99'>Maximum amount of targets is increased from 3 to 5.</font>")
                --NamePrefix = "<font color='#DD4444'>Field Medic's</font>"
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Matchlock_Mastery2"] = {	MUSK_MATCHLOCK_RELOAD_STEADY_BREATHING = {
                Skills = reloadSkillVariations,
                Param = TranslatedString:Create("h521eed96gb2d4g4bafga208g65ead270fb1e","<font color='#00FF99'>After you finish reloading, grants bonus piercing damage and 10% critical chance on your next shot.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Matchlock_Mastery3"] = {	MUSK_MATCHLOCK_CONDENSED_TERROR = {
                Skills = {"Projectile_Musk_Grenade_GrenadeAssault"}
                --Param = TranslatedString:Create("h6ec72a83g2b1fg4433gaaf9gbb73649d511c","<icon id='Projectile_Musk_Condensed_Terror' icon='Reload'/><font color='#FF5E00' size='18'>New Skill: Condensed Terror</font><br>Only useable when stealthed. Fire off a round at an unsuspecting enemy, causing it to take damage upon trying to move.<br><font color='#FF1500'>Fears marked characters for 1 turn</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Matchlock_Mastery4"] = {	MUSK_MATCHLOCK_BULLETHELL = {
                Skills = {"Projectile_Bullethell"},
                Param = TranslatedString:Create("hbd5f89d0gd8cbg454dgbb35g267017a15789","<font color='#00FF99'>Launches 11 missiles per target instead of 7.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Matchlock_Mastery5"] = {	MUSK_MATCHLOCK_UNUSED2 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h611bbf0fgaba2g486fga1aag6cd79816e8c5","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}


            --WeaponEx.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle_Musket", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience("ad9a3327-4456-42a7-9bf4-7ad60cc9e54f", "Musk_Rifle_Musket", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle_Blunderbuss", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle_Matchlock", 100, true)

            --Mods.WeaponExpansion.AddMasteryExperience(CharacterGetHostCharacter(), "Musk_Rifle_Musket", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience(CharacterGetHostCharacter(), "Musk_Rifle_Blunderbuss", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience(CharacterGetHostCharacter(), "Musk_Rifle_Matchlock", 100, true)

            -- Register additional Mastery Bonuses to display NamePrefix
            local BonusIDEntry = WeaponEx.MasteryDataClasses.BonusIDEntry

            for tag,tbl in pairs(WeaponEx.Mastery.Bonuses) do
                for bonusName,bonusEntry in pairs(tbl) do
                    if WeaponEx.Mastery.BonusID[bonusName] == nil then
                        WeaponEx.Mastery.BonusID[bonusName] = BonusIDEntry:Create(bonusName)
                    end
                    WeaponEx.Mastery.BonusID[bonusName].Tags[tag] = bonusEntry
                    if bonusEntry.Skills ~= nil then
                        for i,v in pairs(bonusEntry.Skills) do
                            if WeaponEx.Mastery.Params.SkillData[v] == nil then
                                WeaponEx.Mastery.Params.SkillData[v] = {
                                    Tags = {}
                                }
                            end
                            WeaponEx.Mastery.Params.SkillData[v].Tags[tag] = bonusEntry
                        end
                    end
                    if bonusEntry.StatusParam ~= nil then
                        for i,v in pairs(bonusEntry.StatusParam.Statuses) do
                            if WeaponEx.Mastery.Params.StatusData[v] == nil then
                                WeaponEx.Mastery.Params.StatusData[v] = {
                                    Tags = {}
                                }
                            end
                            WeaponEx.Mastery.Params.StatusData[v].Tags[tag] = bonusEntry.StatusParam
                        end
                    end
                end
            end
        end
    end
end
Ext.RegisterListener('SessionLoaded', TestWeaponExMasteryAddition)


WeaponEx = Mods.WeaponExpansion

-- Ok, so this seems to work, at least the skill tooltip changes consistently.
-- Never tested this Multiplayer, so this is very experimental.
local testDynamicSkillStats = function (skill, attacker, isFromItem, stealthed, attackerPos, targetPos, level, noRandomization)
    --print("hello")
    --print(skill.Name)
    if skill.Name == "Projectile_Rend_The_Marked" or string.sub(skill.Name, 1, string.len("Projectile_Rend_The_Marked")) == "Projectile_Rend_The_Marked" then
        --print(attacker.MyGuid)
        if PersistentVars.WeaponExMasteries == nil then
            PersistentVars.WeaponExMasteries = {}
        end
        if PersistentVars.WeaponExMasteries[attacker.MyGuid] == nil then 
            PersistentVars.WeaponExMasteries[attacker.MyGuid] = {}
        end
        if PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == nil then
            PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] = 0
        end
        if  PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == nil
            or PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == 0 then
                print("Rend Targetcount to 3")
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AmountOfTargets", 3)
                Ext.SyncStat("Projectile_Rend_The_Marked")
        else
            if PersistentVars.WeaponExMasteries[attacker.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == 1 then
                print("Rend Targetcount to 5")
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AmountOfTargets", 5)
                Ext.SyncStat("Projectile_Rend_The_Marked")
            end
            --Ext.SyncStat("Projectile_Rend_The_Marked")
        end
    end
end
--Ext.RegisterListener("GetSkillDamage", testDynamicSkillStats)

Musketeer_WeaponEx_SkillStat_Bonus = {}

function Musketeer_WeaponEx_Setup_SkillStat_Table()
    -- Musket

    -- Mastery 4, Blazing Flare (Actual projectile radius increase is handled on server)
    table.insert(Musketeer_WeaponEx_SkillStat_Bonus, {
        tag = "Musk_Rifle_Musket_Mastery4",
        skillName = "Target_Musk_Flare_Test_Target",
        attributeName = "AreaRadius",
        originalVal = 6,
        bonusVal = 8,
        isApplied = false
        })

    -- Blunderbuss


    -- Matchlock

    -- Mastery 1, Rend the Marked
    table.insert(Musketeer_WeaponEx_SkillStat_Bonus, {
        tag = "Musk_Rifle_Matchlock_Mastery1",
        skillName = "Projectile_Rend_The_Marked",
        attributeName = "AmountOfTargets",
        originalVal = 3,
        bonusVal = 5,
        isApplied = false
        })

end
Musketeer_WeaponEx_Setup_SkillStat_Table()

local function Musketeer_Covering_Fire_AutoTurnEnd_Workaround(skill, character, grid, position, radius)

    local calculatedCost, affinity = Game.Math.GetSkillAPCost(skill, character, grid, position, radius)

    if Ext.IsServer() then
        return 0
    end
    return calculatedCost + 3, affinity
end

Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
    if skill.Name == "Target_Unload_Test" then
        return Musketeer_Covering_Fire_AutoTurnEnd_Workaround(skill, character, grid, position, radius)
    end
    
    --print(character.MyGuid)
    if PersistentVars.WeaponExMasteries == nil then
        PersistentVars.WeaponExMasteries = {}
    end
    if PersistentVars.WeaponExMasteries[character.MyGuid] == nil then
        PersistentVars.WeaponExMasteries[character.MyGuid] = {}
    end

    local playerMasteries = PersistentVars.WeaponExMasteries[character.MyGuid]
    local bonuses = Musketeer_WeaponEx_SkillStat_Bonus

    for i = 1,#bonuses do
        if playerMasteries[bonuses[i].tag] == 1 and bonuses[i].skillName == skill.Name then
            if bonuses[i].isApplied == false then
                --Ext.PrintWarning("Experimental Skill-Stat override -> to new Value")
                --Ext.PrintWarning(bonuses[i].skillName)
                Ext.StatSetAttribute(bonuses[i].skillName, bonuses[i].attributeName, bonuses[i].bonusVal)
                --Ext.SyncStat(skill.Name, false)
                bonuses[i].isApplied = true
            end
        --else
        elseif bonuses[i].isApplied == true then
            --Ext.PrintWarning("Experimental Skill-Stat override -> to default")
            --Ext.PrintWarning(bonuses[i].skillName)
            Ext.StatSetAttribute(bonuses[i].skillName, bonuses[i].attributeName, bonuses[i].originalVal)
            --Ext.SyncStat(skill.Name, false)
            bonuses[i].isApplied = false
        end
    end
    
end)

local Musketeer_TranslatedString_Append =
{
    h54f2ea13g97dbg4b86g9d13geeb81186faca = "<br><br><font color='#00EFFF'>Also applies when using Rifles</font>",
    h060e026bg5b59g4488gb987g3514e5f0f51c = "<br><br><font color='#00EFFF'>Also reloads your equipped Rifle when out of combat</font>",
}

Ext.RegisterListener("SessionLoaded", function ()
    for k,v in pairs(Musketeer_TranslatedString_Append) do
        local text = Ext.GetTranslatedString(k)
        if text ~= nil and text ~= "" then
            if not string.find(text, v) then
            --Ext.PrintWarning("Translated Key stuff appended")
            --print(text)
            Ext.CreateTranslatedStringHandle(k, (text .. v))
            end
        end

    end
end)

--[[
Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
    if skill.Name == "Projectile_Rend_The_Marked" or string.sub(skill.Name, 1, string.len("Projectile_Rend_The_Marked")) == "Projectile_Rend_The_Marked" then
        --print(character.MyGuid)
        if PersistentVars.WeaponExMasteries == nil then
            PersistentVars.WeaponExMasteries = {}
        end
        if PersistentVars.WeaponExMasteries[character.MyGuid] == nil then
            PersistentVars.WeaponExMasteries[character.MyGuid] = {}
        end
        if PersistentVars.WeaponExMasteries[character.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == nil then
            PersistentVars.WeaponExMasteries[character.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] = 0
        end
        if  PersistentVars.WeaponExMasteries[character.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == nil
            or PersistentVars.WeaponExMasteries[character.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == 0 then
                --print("Rend Targetcount to 3")
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AmountOfTargets", 3)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "TargetRadius", 5)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "ExplodeRadius", 1)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "HitRadius", 1)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AreaRadius", 2)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "Range", 2)
                Ext.SyncStat("Projectile_Rend_The_Marked")
        else
            if PersistentVars.WeaponExMasteries[character.MyGuid]["Musk_Rifle_Matchlock_Mastery1"] == 1 then
                --print("Rend Targetcount to 5")
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AmountOfTargets", 5)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "TargetRadius", 15)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "ExplodeRadius", 3)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "HitRadius", 3)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "AreaRadius", 2)
                Ext.StatSetAttribute("Projectile_Rend_The_Marked", "Range", 2)
                Ext.SyncStat("Projectile_Rend_The_Marked")
            end
            --Ext.SyncStat("Projectile_Rend_The_Marked")
        end
    end
end)
]]
-- player = CharacterGetHostCharacter()
-- Mods.Musketeer.Musketeer_WeaponEx_AddToPersistentVars(player, "Musk_Rifle_Matchlock_Mastery1", "yes")
-- Mods.Musketeer.Musketeer_WeaponEx_AddToPersistentVars(player, "Musk_Rifle_Matchlock_Mastery1", "no")

