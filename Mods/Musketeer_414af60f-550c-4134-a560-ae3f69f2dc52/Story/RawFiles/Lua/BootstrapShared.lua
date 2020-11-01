
--- Split a version integer into separate values
---@param version integer
---@return integer,integer,integer,integer
local function ParseVersion(version)
    if type(version) == "string" then
        version = math.floor(tonumber(version))
    elseif type(version) == "number" then
        version = math.tointeger(version)
    end
    local major = math.floor(version >> 28)
    local minor = math.floor(version >> 24) & 0x0F
    local revision = math.floor(version >> 16) & 0xFF
    local build = math.floor(version & 0xFFFF)
    return major,minor,revision,build
end

--- Turn a version integer into a string.
---@param version integer
---@return string
local function VersionIntegerToVersionString(version)
    if version == -1 then return "-1" end
    local major,minor,revision,build = ParseVersion(version)
    if major ~= -1 and minor ~= -1 and revision ~= -1 and build ~= -1 then
        return string.format("%s.%s.%s.%s", major, minor, revision, build)
    elseif major == -1 and minor == -1 and revision == -1 and build == -1 then
        return "-1"
    end
    return nil
end

function TestWeaponExMasteryAddition()
    if Ext.IsModLoaded("c60718c3-ba22-4702-9c5d-5ad92b41ba5f") then
		Ext.Print("WeaponEx is loaded, adding custom interactions")
        if Mods["WeaponExpansion"] ~= nil then
            Ext.Print("WeaponExpansion Mods table found")
            local WeaponEx = Mods["WeaponExpansion"]
            local TranslatedString = WeaponEx.LeaderLib.Classes["TranslatedString"]
            --local hostCharacter = CharacterGetHostCharacter()
            --local MasteryData = WeaponEx.MasteryDataClasses.MasteryData
            --Mods["WeaponExpansion"].AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle_Musket", 100, true)

            --Ext.CreateTranslatedStringKey("rlhaislzfizy5nc29yr1ptfdcmikmxsk9z0xi", )
            --[[
            Ext.CreateTranslatedStringKey("Musk_Rifle_Musket", "ha25146f2ge2bbg4af6ga0dcg8340a68e5a3c")
            Ext.CreateTranslatedStringHandle("ha25146f2ge2bbg4af6ga0dcg8340a68e5a3c", "Musket")

            Ext.CreateTranslatedStringKey("Strawberry lul", "hd40f14d5g4946g4462gac7bga65fda61ed27")
            Ext.CreateTranslatedStringHandle("hd40f14d5g4946g4462gac7bga65fda61ed27", "Cranberry rofl")

            Ext.CreateTranslatedStringKey("Rifle Mastery 1", "hd40f14d5g4946g8362gac7bga65fda61ed27")
            Ext.CreateTranslatedStringHandle("hd40f14d5g4946g4462gac7bga35fda61ed27", "Rifle Wurstery")

            Ext.CreateTranslatedStringKey("Musk_Rifle_Blunderbuss", "hef23a85bg90f9g4182g9031g94036059545f")
            Ext.CreateTranslatedStringHandle("hef23a85bg90f9g4182g9031g94036059545f", "gagagaga")

            Ext.CreateTranslatedStringKey("Musk_Rifle_Musket_Rank1_Description", "r1zr7dj295ovgk5c3eebmovf0fbfl6w2x10ak")
            Ext.CreateTranslatedStringHandle("r1zr7dj295ovgk5c3eebmovf0fbfl6w2x10ak",
             "<icon id='Target_FirstAid' icon='Skill_Ranger_FirstAid'/>Your [Key:Target_FirstAid_DisplayName] healing is increased by <font color='##00FFFF'>16 Vitality</font> or do other fancy stuff."
            )
            --]]
            --Ext.StatSetAttribute("WPN_Rifles", "Tags", "Musk_Rifle_Musket_Equipped")
            --Ext.SyncStat("WPN_Rifles", false)

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
            --[[
            Mods["WeaponExpansion"].Text.MasteryRankTagText["Musk_Rifle_Musket_Mastery1"] = TranslatedString:Create("hd40f14d5g4946g8362gac7bga65fda61ed27", "Rifle Mastery 1")
            Mods["WeaponExpansion"].Text.MasteryRankTagText["Musk_Rifle_Musket_Mastery2"] = "Rifle Mastery 2"
            Mods["WeaponExpansion"].Text.MasteryRankTagText["Musk_Rifle_Musket_Mastery3"] = "Rifle Mastery 3"
            Mods["WeaponExpansion"].Text.MasteryRankTagText["Musk_Rifle_Musket_Mastery4"] = "Rifle Mastery 4"
            Mods["WeaponExpansion"].Text.MasteryRankTagText["Musk_Rifle_Musket_Mastery5"] = "Rifle Mastery 5"
            --]]

            --Mods["WeaponExpansion"].Tags.WeaponTypeToTag.Musk_Rifle_Musket = "Musk_Rifle_Musket"
            --Mods["WeaponExpansion"].Tags.RangedWeaponTags[(#Mods["WeaponExpansion"].Tags.RangedWeaponTags + 1)] = "Musk_Rifle_Musket"
            --Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle")
            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Musket")
            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Blunderbuss")
            Mods["WeaponExpansion"].AddWeaponTypeTag("Musk_Rifle_Matchlock")
            --Mods["WeaponExpansion"].Tags.WeaponTypes.Musk_Rifle_Musket = "Musk_Rifle_Musket"

            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery1"] = {	MUSK_MUSKET_FIRST_AID = {
                Skills = {"Target_FirstAid"},
                Param = TranslatedString:Create("h4becf9a3g96f0g41c9g8db9ga57ddd7f2c04", "<icon id='Target_FirstAid' icon='Skill_Ranger_FirstAid'/>Your [Key:Target_FirstAid_DisplayName] healing is increased by <font color='#00FFFF'>16 Vitality</font> or do other fancy stuff."),
                NamePrefix = "<font color='#DD4444'>Field Medic's</font>"
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery2"] = {	MUSK_MUSKET_RELOAD_INSPIRE = {
                Skills = {"Shout_Reload"},
                Param = TranslatedString:Create("haa6c1ecfg7d95g45b3g80e8g33904400ab62","<icon id='Shout_Reload' icon='Reload'/>Your [Key:Shout_Reload_DisplayName] inspires you and allies in a 8m range around you after completion for 1 turn.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery3"] = {	MUSK_MUSKET_GRENADE_ASSAULT = {
                Skills = {"Projectile_Musk_Grenade_GrenadeAssault"},
                Param = TranslatedString:Create("hb01d5b56g799ag4545ga221g12243f8c1bba","Gain a new skill: Grenade Assault!. Every ally in a radius of 13 meters around you will throw grenades around a target location, resulting in a large blast radius.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery4"] = {	MUSK_MUSKET_UNUSED1 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("hd40f14d5g4946g4462gac7bga35ffa61ed27","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Musket_Mastery5"] = {	MUSK_MUSKET_UNUSED2 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("hd40f14d5g4946g4462gac7bga35fua61ed27","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}


            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery1"] = {	MUSK_Matchlock1 = {
                Skills = {"Target_FirstAid"},
                Param = TranslatedString:Create("hb9f904a2gd5d5g4329g97b9g905f627ce222", "<icon id='Rush_Musk_Blitzkrieg' icon='Blitzkrieg'/><font color='#006FFF' size='18'>Ammo Conservationist</font><br>Your [Key:Rush_Musk_Blitzkrieg_DisplayName] costs 1 AP to use and also increases <font color='#00FFFF'>Magic Armor</font>."),
                NamePrefix = "<font color='#DD4444'>Field Medic's</font>"
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery2"] = {	MUSK_Matchlock2 = {
                Skills = {"Shout_Reload"},
                Param = TranslatedString:Create("h3fc0ca29g86aeg4891g93edga43bb03cca2a","<icon id='Shout_Reload' icon='Reload'/>Your [Key:Shout_Reload_DisplayName] inspires you and allies in a 8m range around you after completion for 1 turn.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery3"] = {	MUSK_Matchlock3 = {
                Skills = {"Projectile_Musk_Grenade_GrenadeAssault"},
                Param = TranslatedString:Create("h5d41910dga33eg4dbeg85a0ge4c27c41be29","Gain a new skill: Grenade Assault!. Every ally in a radius of 13 meters around you will throw grenades around a target location, resulting in a large blast radius.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery4"] = {	MUSK_Matchlock4 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h611bbf0fgaba2g486fga1aag6cd79816e8c5","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery5"] = {	MUSK_Matchlock5 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h611bbf0fgaba2g486fga1aag6cd79816e8c5","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}


            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery1"] = {	MUSK_BLUNDERBUSS_BLITZKRIEG = {
                Skills = {"Rush_Musk_Blitzkrieg"},
                Param = TranslatedString:Create("h4becf9a3g96f0g41c9g8db9ga57ddd7f2c04", "<icon id='Target_FirstAid' icon='Skill_Ranger_FirstAid'/>Your [Key:Target_FirstAid_DisplayName] healing is increased by <font color='#00FFFF'>16 Vitality</font> or do other fancy stuff."),
                NamePrefix = "<font color='#DD4444'>Field Medic's</font>"
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery2"] = {	MUSK_BLUNDERBUSS_RELOAD_INVIGORATE = {
                Skills = {"Shout_Reload"},
                Param = TranslatedString:Create("haa6c1ecfg7d95g45b3g80e8g33904400ab62","<icon id='Shout_Reload' icon='Reload'/>Your [Key:Shout_Reload_DisplayName] inspires you and allies in a 8m range around you after completion for 1 turn.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery3"] = {	MUSK_MUSKET_GRENADE_ASSAULT = {
                Skills = {"Projectile_Musk_Grenade_GrenadeAssault"},
                Param = TranslatedString:Create("hb01d5b56g799ag4545ga221g12243f8c1bba","Gain a new skill: Grenade Assault!. Every ally in a radius of 13 meters around you will throw grenades around a target location, resulting in a large blast radius.")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery4"] = {	MUSK_MUSKET_UNUSED1 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h8cdc4957g11c1g4a2bgb661g01e750ca214f","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}
            Mods["WeaponExpansion"].Mastery.Bonuses["Musk_Rifle_Blunderbuss_Mastery5"] = {	MUSK_MUSKET_UNUSED2 = {
                Skills = {"Target_SingleHandedAttack", "Target_LLWEAPONEX_SinglehandedAttack"},
                Param = TranslatedString:Create("h8cdc4957g11c1g4a2bgb661g01e750ca214f","Gain a follow-up combo skill ([Key:Target_LLWEAPONEX_Rapier_SuckerCombo1_DisplayName]) after punching a target.<br><font color='#99FF22' size='22'>[ExtraData:LLWEAPONEX_MasteryBonus_SuckerPunch_KnockdownTurnExtensionChance]% chance to increase Knockdown by 1 turn.</font>")
            }}



     
            

            --Ext.Print("OLAAAAAAAAAAAAAAAA")
            --WeaponEx.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle", 100, true)
            --Mods.WeaponExpansion.AddMasteryExperience("7b6c1f26-fe4e-40bd-a5d0-e6ff58cef4fe", "Musk_Rifle_Musket", 100, true)
            

        end
    end
end
Ext.RegisterListener('SessionLoaded', TestWeaponExMasteryAddition)


WeaponEx = Mods.WeaponExpansion

--[[
Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
    if skill.Name ~= "Rush_Musk_Blitzkrieg" then return end
    if Ext.IsClient() then
        if PersistentVars.WeaponExMasteries.Blunderbuss_Mastery1_Enhanced_Blitzkrieg == 1 then
            Ext.Print("Blunderbuss Mastery1 PersVar is set")
            return 1, false
        end
    end

    if Ext.IsServer() and character.MyGuid ~= nil then
        local charGuid = character.MyGuid
        if PersistentVars.WeaponExMasteries.charGuid.Blunderbuss_Mastery1_Enhanced_Blitzkrieg == 1 then
            Ext.Print("Blunderbuss Mastery1 PersVar is set")
            return 1, false
        end
    end

    Ext.Print("GetSkillApCost with Blitzkrieg called, but cost was not modified.")
end)
--]]



--[[

Musketeer Masteries (Ideas):

Musket:
1. After reloading, inspire yourself and all allies around you for 1 turn
    Fix Reload Debuffs getting cleansed after end of round.
2. Increase Healing effect of First Aid skill and reduce it's cooldown by 1 turn
    Create new Stat and implement Skill-Swap mechanic. (Actually, just use the same skill Listeners as LL is using in WeaponEx)
3. New Skill: Rifle Grenade: Fire off a highly explosive grenade and deal heavy damage, blinding and causing concussion on targets hit
    Create Stat and handle enable/disable logic
4. Increase Radius of Blazing Flare by 2m
    Use LL WeaponEx Listeners to do this


Blunderbuss:
1. Blitzkrieg cost reduced to 1 AP and also grants magic armor
2. Buckshot Cone Range increased by 2m, pushback increased by 1m
3. Gain damage reduction when at least 3 enemies are nearby
4. Get a 25% chance to restore 1 Ammunition when killing an enemy in combat


Matchlock:
1. Deal 15% bonus damage when attacking from stealth
2. Rend the Marked maximum target limit increased to 5
3. New Skill: Hunter Killer: can only be cast from stealth, rupture a target and fear it if it's marked
4. Seeker Strikedown missile count increased from 7 to 11

Each has 1 AP reduction on something, or a similar effect




]]