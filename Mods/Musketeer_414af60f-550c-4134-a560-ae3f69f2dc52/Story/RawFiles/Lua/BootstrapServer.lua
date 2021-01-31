Ext.Require("BootstrapShared.lua")


PersistentVars = {
    WeaponExMasteries = {},
}

--- Split a version integer into separate values
---@param version integer
---@return integer,integer,integer,integer
function ParseVersion(version)
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
function VersionIntegerToVersionString(version)
    if version == -1 then return "-1" end
    local major,minor,revision,build = ParseVersion(version)
    if major ~= -1 and minor ~= -1 and revision ~= -1 and build ~= -1 then
        return string.format("%s.%s.%s.%s", major, minor, revision, build)
    elseif major == -1 and minor == -1 and revision == -1 and build == -1 then
        return "-1"
    end
    return nil
end

local function Musketeer_Version_Is_Newer(oldVersion, newVersion)
    local oma, omi, ore, obu = ParseVersion(oldVersion)
    local nma, nmi, nre, nbu = ParseVersion(newVersion)

    if nma > oma then return true end
    if nma == oma and nmi > omi then return true end
    if nma == oma and nmi == omi and nre > ore then return true end
    if nma == oma and nmi == omi and nre == ore and nbu > obu then return true end
    return false
end

local function Musketeer_Update_Savegame(oldVersion, newVersion)
    --if Musketeer_Version_Is_Newer(oldVersion, newVersion) then
        --if VersionIntegerToVersionString(oldVersion) == "1.2.1.0" then
        if Osi.DB_Musketeer_Skillist:Get("Projectile_Musk_Matchlock_Concentrated_Terror", nil)[1] == nil then
            Osi.DB_Musketeer_Skillist("Projectile_Musk_Matchlock_Concentrated_Terror", -1)
            Osi.DB_Musketeer_Skillist("Projectile_Musk_Mastery_Rifle_Grenade", 0)

            local concat = {}
            concat["skillname"] = "Projectile_Musk_Matchlock_Concentrated_Terror"
            concat["ammocost"] = -1
            Ext.BroadcastMessage("Musketeer_Rifle_Skill", Ext.JsonStringify(concat))

            concat = {}
            concat["skillname"] = "Projectile_Musk_Mastery_Rifle_Grenade"
            concat["ammocost"] = 0
            Ext.BroadcastMessage("Musketeer_Rifle_Skill", Ext.JsonStringify(concat))
        end
    --end
end

--Ext.RegisterListener("SessionLoaded", function ()
local function Musketeer_Init_Mod_Version(levelName, isEditorMode)
    local modInfo = Ext.GetModInfo("414af60f-550c-4134-a560-ae3f69f2dc52")
    local modVersion = modInfo.Version
    if PersistentVars.Musketeer_Mod_Version == nil then
        --local major, minor, revision, build = Osi.SysStoryVersion()
        --local versionString = string.format("%s.%s.%s.%s", major, minor, revision, build)
        Ext.Print("Musketeer Mod Version: ")
        Ext.Print(modVersion)
        Ext.Print(modInfo.PublishVersion)
        PersistentVars.Musketeer_Mod_Version = modVersion
    else
        if modVersion ~= PersistentVars.Musketeer_Mod_Version then
            Ext.Print("[Musketeer] Mod Update detected! Updating savegame data...")
            Ext.Print(modVersion)
            Musketeer_Update_Savegame(PersistentVars.Musketeer_Mod_Version, modVersion)
        else
            Ext.Print("[Musketeer] Mod version matches savegame version, welcome!")
            
        end
    end
end
Ext.RegisterOsirisListener("GameStarted", 2, "after", Musketeer_Init_Mod_Version)

if PlayerTable == nil then
    PlayerTable = {}
end

DebugMode = false
function DebugPrint(...)
    if DebugMode then
        Ext.Print(...)
    end
end

Musketeer_Ammo_Statuses = {
    "RELOAD_INCENDIARY",
    "RELOAD_FREEZING",
    "RELOAD_SILVER",
    "RELOAD_HOLY",
    "RELOAD_UNUSED",
    "RELOAD_EXPLOSIVE",
}

Musketeer_Reload_Skill_Variants = {
    "Shout_Reload_Incendiary",
    "Shout_Reload_Explosive",
    "Shout_Reload_Freezing",
    "Shout_Reload_Silver",
    "Shout_Reload_Holy",
}

Musketeer_Ammo_Projectiles = {
    "Projectile_Ammo_Default",
    "Projectile_Ammo_Incendiary",
    "Projectile_Ammo_Explosive",
    "Projectile_Ammo_Silver",
    "Projectile_Ammo_Shock",
    "Projectile_Ammo_Freezing",
    "Projectile_Ammo_Holy"
}
-- List of all the Bow/XBow skills that are incompatible with Rifles.
Musketeer_Vanilla_Huntsman_Override = {
    -- [Projectile Entries]
    -- Bow/XBow Skills
    "Projectile_Multishot",
    "Projectile_ArrowSpray",
    "Projectile_PiercingShot",
    "Projectile_Snipe",
    "Projectile_Ricochet",
    "Projectile_BallisticShot",
    "Projectile_Mark",
    "Projectile_PinDown",
    "Projectile_SkyShot",
    -- Special Arrows
    "Projectile_FireArrow",
    "Projectile_ExplosionArrow",
    "Projectile_FreezingArrow",
    "Projectile_WaterArrow",
    "Projectile_CursedFireArrow",
    "Projectile_BlessedWaterArrow",
    "Projectile_SlowDownArrow",
    "Projectile_StunningArrow",
    "Projectile_SteamCloudArrow",
    "Projectile_SmokescreenArrow",
    "Projectile_StaticCloudArrow",
    "Projectile_SilverArrow",
    "Projectile_BleedingArrow",
    "Projectile_KnockedOutArrow",
    "Projectile_PoisonedCloudArrow",
    "Projectile_CharmingArrow",
    "Projectile_PoisonArrow",
    "Projectile_DebuffAllArrow",
    -- [ProjectileStrike Entries]
    "ProjectileStrike_RainOfArrows",
    -- [Target Entries] (Require special handling in function, otherwise they get skipped)
    "Target_ElementalArrowheads",
    -- [Odinblades Hunstman Skills]
    "Projectile_OdinHUN_Tooltip_ArrowSpray",
    "Projectile_OdinHUN_Tooltip_Assassinate",
    "Projectile_OdinHUN_PowerShot",
    "Shout_OdinHUN_SeekingArrows",
}

--local function TestLog(msg)
--    print(msg)
--end
--Ext.NewCall(TestLog, "NRD_EXT_TestLog", "(STRING)_Msg");

--- Sends a message to the specified peer
--- @param characterguid string Peer that will receive the message
--- @param channel string Channel that will receive the message
--- @param payload string Message payload
local function Musketeer_AmmoBar_Set_UI(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_Set_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_AmmoBar_Set_UI, "NRD_AmmoBar_Set_GUI", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Bool");

local function Musketeer_AmmoBar_Preview_Difference(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_Preview_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_AmmoBar_Preview_Difference, "NRD_AmmoBar_Preview_Difference", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Amount");

local function Musketeer_AmmoBar_SetElement(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_Element_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_AmmoBar_SetElement, "NRD_AmmoBar_Set_Element", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_EnumVal");

local function Musketeer_AmmoBar_SetAmmo(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_SetAmmo_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_AmmoBar_SetAmmo, "NRD_AmmoBar_Set_Ammo", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Amount");

local function Musketeer_AmmoBar_SetMaxAmmo(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_SetMaxAmmo_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_AmmoBar_SetMaxAmmo, "NRD_AmmoBar_Set_Max_Ammo", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Amount");

local function Musketeer_AmmoBar_Initialize(characterguid, channel)
    Ext.PostMessageToClient(characterguid, "Musketeer_Init_AmmoBar_UI", 1)
end
Ext.NewCall(Musketeer_AmmoBar_Initialize, "NRD_AmmoBar_Init", "(CHARACTERGUID)_Character, (STRING)_Channel");

local function Musketeer_AmmoBar_SetBreathingMode(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_AmmoBar_BreathingMode", payload)
end
Ext.NewCall(Musketeer_AmmoBar_SetBreathingMode, "NRD_AmmoBar_BreathingMode", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Bool");

local function Musketeer_Send_Rifle_Skill(characterguid, channel, name, cost)
    Ext.PostMessageToClient(characterguid, "Musketeer_Rifle_Skill2", name, cost)
end
Ext.NewCall(Musketeer_Send_Rifle_Skill, "NRD_Send_Rifle_Skill", "(CHARACTERGUID)_Character, (STRING)_Channel, (STRING)_Skillname, (INTEGER)_Ammocost");

local function Musketeer_Send_Client_Hotbar_UI_Refresh(characterguid)
    Ext.PostMessageToClient(characterguid, "Client_Refresh_Hotbar", "")
end
Ext.NewCall(Musketeer_Send_Client_Hotbar_UI_Refresh, "NRD_Client_Refresh_Hotbar", "(CHARACTERGUID)_Character");

-- Appearantly we can't send a whole table in a message, guess that's why Json support was
-- implemented by Norbyte, as that seems to be necessary as soon as messages get even slightly more complex.

-- I only now understood why he chose Json to circumvent this, but this way you can simply package your list in a single string
-- and unpack it as a list again client side.

-- DEPRECATED, USE Musketeer_Broadcast_Rifle_Skill2 INSTEAD
local function Musketeer_Broadcast_Rifle_Skill(channel, name, cost)
    local concat = {}
    if name == "Target_Unload_Test" then
        cost = -11
     end
     if name == "Shout_Reload" then
        cost = 11
     end
    concat["skillname"] = name
    concat["ammocost"] = cost
    local concatJson = Ext.JsonStringify(concat)
    DebugPrint("Sending skill: " .. name .. " with cost: " .. cost)
    DebugPrint('Json: '.. concatJson)
    --cost = tonumber(cost)
    Ext.BroadcastMessage("Musketeer_Rifle_Skill", concatJson)
end
--Ext.NewCall(Musketeer_Broadcast_Rifle_Skill, "NRD_Broadcast_Rifle_Skill", "(STRING)_Channel, (STRING)_Skillname, (INTEGER)_Ammocost");

local function consoleCmd(cmd, a1, a2)
	if cmd == "setPos" and a1 ~= nil and a1 ~= nil then
		local ui = Ext.GetUI("AmmoBarGUIv1.swf")
		if (ui == nil) then DebugPrint("Ammobar was nil, reposition failed.") end
		ui:SetPosition(a1,a2)
		DebugPrint("Ammobar x: " .. a1 ..", y: " .. a2)
    end
    DebugPrint("Console executed stuff.")
end


--Ext.RegisterListener("ConsoleCommand", consoleCmd)

-- Using Broadcast instead of sending to a specific player, simply because
-- there are no negative effects of doing so.
local function Musketeer_Send_Rifle_Skill_2(call, payload, player)
    DebugPrint("[SERVER] Broadcasting Skill-List")
    local rows = Osi.DB_Musketeer_Skillist:Get(nil, nil)
    --DebugPrint(rows)
    for k,v in pairs(rows) do
        local concat = {}
         DebugPrint(k,v)
         concat["skillname"] = v[1]
         concat["ammocost"] = v[2]
         -- Added this for testing AmmoPreview stuff, needs actual logic.
         if v[1] == "Target_Unload_Test" then
            concat["ammocost"] = -11
         end
         --if v[1] == "Shout_Reload" then
         --   concat["ammocost"] = 11
         --end
         if v[1] == "Shout_Reload" then
            DebugPrint("[SERVER] DEBUG RELOAD: Server retrieved Reload from the DB and is sending it...")
         end
         local concatJson = Ext.JsonStringify(concat)
         --DebugPrint(concatJson)
         Ext.BroadcastMessage("Musketeer_Rifle_Skill", concatJson)
    end
    -- Special handling of Reload variants. Should be refactored once PoC is done.
    for i,skill in pairs(Musketeer_Reload_Skill_Variants) do
        local concat = {}
        concat["skillname"] = skill
        concat["ammocost"] = 11
        DebugPrint("[SERVER] Sending Special Reload: " .. skill)
        Ext.BroadcastMessage("Musketeer_Rifle_Skill", Ext.JsonStringify(concat))
    end
end
Ext.RegisterNetListener('clientReady', Musketeer_Send_Rifle_Skill_2)

local function MusketeerSendHello(channel, player)
    Ext.PostMessageToClient(player, "Musketeer_SendHello", player)
    DebugPrint("Trying to reach " .. player)
end
Ext.NewCall(MusketeerSendHello, "NRD_InitPlayer", "(STRING)_Channel, (CHARACTERGUID)_Character");

local function Musketeer_Ack_Player_Ready(call, player)
    Osi.Musketeer_Client_Is_Initialized(player)
    DebugPrint(player .. " is initialized.")
    --DebugPrint("Testithing:")
    --DebugPrint(randarg)
    Musketeer_Send_Rifle_Skill_2(call, nil, player)
end
Ext.RegisterNetListener('clientAck', Musketeer_Ack_Player_Ready)


-- Used to preview active skill ammo requirements.
local function Musketeer_Retrieve_Skillbar_Entry(channel, payload)
    local decoded = Ext.JsonParse(payload)
    local player = decoded["player"]
    local slotIndex = decoded["slotnumber"]
    --DebugPrint("[SERVER] Debug Skillbar Request")
    --DebugPrint("player: " .. player)
    --DebugPrint("index: ")
    --DebugPrint(slotIndex)

    DebugPrint(player)
    if slotIndex ~= nil and type(slotIndex) == string then
		slotIndex = tonumber(slotIndex)
	end
    --DebugPrint(slotIndex)

    local entry = NRD_SkillBarGetSkill(player, slotIndex)
    --DebugPrint("[Server]: Retrieved " .. entry .. " from Skillbar.")
    if (entry == nil) then
        DebugPrint("[SERVER] Musketeer_Retrieve_Skillbar_Entry, entry was nil")
        --[[
    elseif entry == "Projectile_Tracking_Shot" then
        Ext.Print("Special Tracking shot debug stuff")
        local message = {entry, 0-math.random(1,5)}
        Ext.PostMessageToClient(player, "skillbar_entry_answer_update_cost", Ext.JsonStringify(message))
        ]]
    else
        Ext.PostMessageToClient(player, "skillbar_entry_answer", entry)
    end
end
Ext.RegisterNetListener('skillbar_entry_request', Musketeer_Retrieve_Skillbar_Entry)
--Ext.RegisterNetListener('clientAck', Musketeer_Send_Rifle_Skill_2, player)


-- Experimental: Try to initialize stuff here
--[[
if IsInit == nil then
    IsInit = 1
    for i,player in  ipairs(Osi.DB_IsPlayer:Get(nil)) do
        Osi.DB_Musketeer_Skillist:Set(player, 0)
        DebugPrint("Welcome " .. player)
    end
    Osi.Musketeer_Force_Init();
    DebugPrint("Forcing Initialization from LUA")
end
]]
local function InitPlayerTable()
    for i,player in  ipairs(Osi.DB_IsPlayer:Get(nil)) do
        PlayerTable[player[1]] = false
        DebugPrint("Added " .. player[1] .. "to PlayerTable.")
        Ext.PostMessageToClient(player[1], "requestClient", player[1])
    end
    DebugPrint("[SERVER] PlayerTable is initialized.")
end
--Ext.RegisterListener('SessionLoaded', InitPlayerTable)
--Ext.RegisterNetListener('StatsLoaded', InitPlayerTable)



local function ReceivePlayerState(channel, player)
    if PlayerTable[player] == false then
        PlayerTable[player] = true
        DebugPrint("[SERVER] Added Player to PlayerTable (set to true).")
    else
        DebugPrint("[SERVER] Player was not registered in Playertable.")
    end
end
Ext.RegisterNetListener('clientReady', ReceivePlayerState)

local function GameStartedEvent()
    -- Until v53 need to explicitly enable Property Write support (Remove when v53 is released!)
    --Ext.EnableExperimentalPropertyWrites()
    InitPlayerTable()
    DebugPrint("[SERVER] GameStartedEvent")
end
Ext.NewCall(GameStartedEvent, "NRD_GameStarted", "");


-- Get the full player character string from the provided GUID.
local function GetFullPlayerCharacterHandle(characterGUID)
    for i,player in  ipairs(Osi.DB_IsPlayer:Get(nil)) do
        local char = Ext.GetCharacter(player[1])
        DebugPrint("GUID from DB: " .. player[1])
        DebugPrint("ExtCharacter: " .. tostring(char))
        if char.MyGuid == characterGUID then
            return player[1]
        end
    end
    DebugPrint("Character not found.")
    return nil
end

-- return index value of current ammo type, return 0 if default ammo type is being used.
local function GetCharacterCurrentAmmoType(charHandle)
    for i,status in pairs(Musketeer_Ammo_Statuses) do
        --DebugPrint(i)
        --DebugPrint(status)
        if HasActiveStatus(charHandle, status) == 1 then
            return i
        end
    end
    return 0
end

-- Just for testing, sending seperate messages for each variable, but should probably be refactored into sending a single json string.
local function ReceiveClientContextSwitch(call, charHandle)
    --Ext.Print("ReceiveClientContextSwitch")
    --Ext.Print(charHandle)
    local charGuid = nil
    if #charHandle < 30 then
        local charHandleInt = NRD_StringToInt(charHandle)
        local char = Ext.GetCharacter(charHandleInt)
        --Ext.Print("NetID as charHandle")
        --Ext.Print(char.MyGuid)
        charGuid = char.MyGuid
    else
        --Ext.Print("[SERVER] ReceiveClientContextSwitch, receives ClientContextSwitch Signal")
        charGuid = charHandle
    end
    local isSummon = CharacterIsSummon(charGuid)
    if isSummon == 1 then
        Ext.Print("Summon selected, hiding AmmoBar")
        charGuid = CharacterGetOwner(charGuid)
        Ext.PostMessageToClient(charGuid, "Musketeer_SetClientContext", charGuid)
        Ext.PostMessageToClient(charGuid, "Musketeer_Set_AmmoBar_UI", "0")
        return
    end
    --Ext.Print("charGuid:")
    --Ext.Print(charGuid)
    local charWPN = CharacterGetEquippedWeapon(charGuid)
    DebugPrint(charWPN)
    Ext.PostMessageToClient(charGuid, "Musketeer_SetClientContext", charGuid)
    -- If a character is unarmed, charWPN is nil.
    if charWPN == nil then
        Ext.PostMessageToClient(charGuid, "Musketeer_Set_AmmoBar_UI", "0")
        return
    end
    local maxAmmo = ItemGetMaxCharges(charWPN)
    DebugPrint(maxAmmo)
    local currentAmmo = ItemGetCharges(charWPN)
    DebugPrint(currentAmmo)
    local ammoTypeIndex = GetCharacterCurrentAmmoType(charGuid)
    Ext.PostMessageToClient(charGuid, "Musketeer_Element_AmmoBar_UI", ammoTypeIndex)
    Ext.PostMessageToClient(charGuid, "Musketeer_Set_AmmoBar_UI", "0")
    if maxAmmo == -1 and currentAmmo == -1 then
        Ext.PostMessageToClient(charGuid, "Musketeer_Set_AmmoBar_UI", "0")
    else
        Ext.PostMessageToClient(charGuid, "Musketeer_Set_AmmoBar_UI", "1")
    end
    Ext.PostMessageToClient(charGuid, "Musketeer_SetMaxAmmo_AmmoBar_UI", maxAmmo)
    Ext.PostMessageToClient(charGuid, "Musketeer_SetAmmo_AmmoBar_UI", currentAmmo)
    
end
Ext.RegisterNetListener('clientContextSwitch', ReceiveClientContextSwitch)


local function Musketeer_GetRandomPosAround(X, Y, Z, Distance)
    local newX = X + ((math.random() - 0.5) * (Distance / 3))
    local newY = Y + ((math.random() - 0.5) * (Distance / 3))
    local newZ = Z + ((math.random() - 0.5) * (Distance / 3))
    --DebugPrint("X: " .. tostring(X) .. " newX: " .. tostring(newX) .. " Delta: " .. (X - newX))
    --DebugPrint("Y: " .. tostring(Y) .. " newY: " .. tostring(newY) .. " Delta: " .. (Y - newY))
    --DebugPrint("Z: " .. tostring(Z) .. " newZ: " .. tostring(newZ) .. " Delta: " .. (Z - newZ))
    --DebugPrint("Max. Radius around Target (m): " .. (Distance/3))
    return newX, newY, newZ
end
Ext.NewQuery(Musketeer_GetRandomPosAround, "NRD_Musketeer_Get_Random_Pos", "[in](REAL)_X, [in](REAL)_Y, [in](REAL)_Z, [in](REAL)_Distance, [out](REAL)_newX, [out](REAL)_newY, [out](REAL)_newZ");


local function AddRequirementToEntry(stat)
    local skillRequirements = Ext.StatGetAttribute(stat, "Requirements")
    local appendNoRifleRequirement = {Not = true, Param = "Rifle_Armed", Requirement = "Tag"}
    local hasRequirement = false
    for RequirementsIndex = 1,rawlen(skillRequirements),1 do
        DebugPrint(skillRequirements[RequirementsIndex])
        if skillRequirements[RequirementsIndex].Param == "Rifle_Armed" then
            hasRequirement = true
            DebugPrint("noRifle tag Requirement already exists.")
            return
        end
    end
    -- Append the "!Rifle_Armed" tag requirement without overriding other requirements.
    if hasRequirement == false then
        skillRequirements[rawlen(skillRequirements)+1] = appendNoRifleRequirement
        Ext.StatSetAttribute(stat, "Requirements", skillRequirements)
        Ext.SyncStat(stat)
        DebugPrint("noRifle tag Requirement appended.")
    end
end

-- Temporarily using a bool to check if the Override already occured, because multiple Listeners use this callback.
-- According to Documentation, "StatsLoaded" should be used for Stat overriding, but this event never triggeres when testing
-- in the Editor. TODO: Test ingame and remove unnecessary event callbacks.
Overridden = false
local function OverrideSkillRequirements()
    if (Overridden == true) then DebugPrint("Skill Requirement Override already done.") return end
    local appendNoRifleRequirement = {Not = true, Param = "Rifle_Armed", Requirement = "Tag"}
    local projectileString = "Projectile"
    DebugPrint("====================================================")
    DebugPrint("[SERVER] OverrideSkillRequirements")
    for i,name in pairs(Ext.GetStatEntries("SkillData")) do
        -- Filter out any non-Projectile/non-ProjectileStrike skills. (Reactive Shot is intentionally not being "patched")
        if name ~= nil and (string.sub(name, 1, string.len(projectileString)) == projectileString or name == "Target_ElementalArrowheads") or name == "Shout_OdinHUN_SeekingArrows" then
            for j, entry in pairs(Musketeer_Vanilla_Huntsman_Override) do
                if name == entry then
                    DebugPrint(name)
                    local skillRequirements = Ext.StatGetAttribute(name, "Requirements")

                    -- Check if the "!Rifle_Armed" tag requirement is already set.
                    local hasRequirement = false
                    for RequirementsIndex = 1,rawlen(skillRequirements),1 do
                        DebugPrint(skillRequirements[RequirementsIndex])
                        if skillRequirements[RequirementsIndex].Param == "Rifle_Armed" then
                            hasRequirement = true
                            DebugPrint("noRifle tag Requirement already exists.")
                        end
                    end
                    -- Append the "!Rifle_Armed" tag requirement without overriding other requirements.
                    if hasRequirement == false then
                        skillRequirements[rawlen(skillRequirements)+1] = appendNoRifleRequirement
                        Ext.StatSetAttribute(name, "Requirements", skillRequirements)
                        Ext.SyncStat(name)
                        DebugPrint("noRifle tag Requirement appended.")
                    end
                end
            end
        end
    end
    AddRequirementToEntry("WPN_Arrow_SlowDown_A")
    AddRequirementToEntry("WPN_Arrow_Water_A")
    AddRequirementToEntry("WPN_Arrow_KO_A")
    AddRequirementToEntry("WPN_Arrow_Poison_A")
    AddRequirementToEntry("WPN_Arrow_Fire_A")
    AddRequirementToEntry("WPN_Arrow_Cloud_Steam_A")
    AddRequirementToEntry("WPN_Arrow_Freezing_A")
    AddRequirementToEntry("WPN_Arrow_Explosive_A")
    AddRequirementToEntry("WPN_Arrow_Charming_A")
    AddRequirementToEntry("WPN_Arrow_Stunning_A")
    AddRequirementToEntry("WPN_Arrow_Cloud_Static_A")
    AddRequirementToEntry("WPN_Arrow_Poison_Cloud_A")
    AddRequirementToEntry("WPN_Arrow_SmokeScreen_A")
    AddRequirementToEntry("WPN_Arrow_CursedFire_A")
    AddRequirementToEntry("WPN_Arrow_BlessedWater_A")
    AddRequirementToEntry("WPN_Arrow_Debuff_All_A")
    Overridden = true
    DebugPrint("Donso.")
end
Ext.RegisterListener("StatsLoaded", OverrideSkillRequirements)
Ext.RegisterListener("SessionLoading", OverrideSkillRequirements)


local function IsRifleBasedSkill(statId)
    if statId == nil or statId == "" then DebugPrint("IsRifleBasedSkill with empty param") return end
    DebugPrint("IsRifleBasedSkill with param: " .. statId)
    local markedString = "Projectile_Musk_Mark_Dmg_"

    -- Special case, Covering Fire instances have no req's but are obviously rifle based damage.
    if statId == "Projectile_Unload_Instance_-1" or statId == "Projectile_Unload_Instance" then
        DebugPrint("Killed by Covering Fire")
        return true
    end
    
    -- Special case, Buckshot Impact Explosion instances have no req's but are obviously rifle based damage.
    if string.sub(statId, 1, #"Projectile_Buckshot") == "Projectile_Buckshot" or statId == "Buckshot_Fire-1" or statId == "Buckshot_Fire" then
        DebugPrint("Killed by Buckshot Impact Fire")
        return true
    end

    -- Additional AmmoType effects count as rifle based damage.
    for i = 1,#Musketeer_Ammo_Projectiles,1 do
        if statId == Musketeer_Ammo_Projectiles[i] then
            DebugPrint("Killed by AmmoType effect")
            return true
        end
    end

    if #statId >= #markedString and string.sub(statId, 1, (#markedString)) == markedString then
        DebugPrint("Killed by Mark Bonus Damage")
        return true
    end

    -- Have to remove the last 2 characters to obtain the real statId.
    DebugPrint("Trying to retrieve Stat:")
    DebugPrint(string.sub(statId, 1, (#statId - 3)))
    local skillStatEntry = Ext.GetStat(string.sub(statId, 1, (#statId - 3)))
    if skillStatEntry == nil then
        skillStatEntry = Ext.GetStat(statId)
    end
    -- If no stat entry exists with the statId, then return false.
    if skillStatEntry == nil then return false end

    -- If a stat entry with the statId exists and also has the "Rifle_Armed" tag as a requirement, then it's a rifle based skill.
    for i = 1,#skillStatEntry.Requirements,1 do
        local reqParam = skillStatEntry.Requirements[i].Param
        DebugPrint(reqParam)
        if reqParam == "Rifle_Armed" or reqParam == "Musketeer_Exactly_One_Left" or reqParam == "Musketeer_AtLeast_One_Left" or reqParam == "Musketeer_AtLeast_Two_Left" then
            DebugPrint("Killed by rifle skill")
            return true
        end
    end

    return false
end

--- Retrieve the currently active AmmoType for a character. Returns nil if no AmmoType is active.
--- @param characterGUID string Character to check AmmoType for
--- @return string statusId name of the AmmoType statusId, or nil if none present
local function GetCharacterAmmoType(characterGUID)
    local charObj = Ext.GetCharacter(characterGUID)
    local charStatuses = charObj:GetStatusObjects()
    if charObj == nil or charStatuses == nil or #charStatuses == 0 then
        return nil
    end

    for i = 1,#charStatuses,1 do
        for j = 1,#Musketeer_Ammo_Statuses,1 do
            if charStatuses[i].StatusType == "CONSUME" and charStatuses[i].StatusId == Musketeer_Ammo_Statuses[j] then
                -- Apply the onKill AmmoType stuff here, if it doesn't rely on the target's statuses.
                DebugPrint(charStatuses[i].StatusId)
                return charStatuses[i].StatusId
            end
        end
    end
    return nil
end


local function GetOvershootPosition(attacker, defender, overshootDistance)
    --DebugPrint("Piercing Ammo stuffs")
    local attackerX, attackerY, attackerZ = GetPosition(attacker)
    local targetX, targetY, targetZ = GetPosition(defender)

    local dist = ((targetZ - attackerZ)^2 + (targetX - attackerX)^2)^(1/2)

    local newZ = attackerZ + ((targetZ - attackerZ)/(dist)) * (dist+overshootDistance)
    local newX = attackerX + ((targetX - attackerX)/(dist)) * (dist+overshootDistance)
    local newY = targetY + 0.2
    return newX, newY, newZ
end


local function AmmotypeOnKill(defender, attackOwner, attacker)

    if (attacker == nil or defender == nil) then return end
    local targetObj = Ext.GetCharacter(defender)
    local attackerObj = Ext.GetCharacter(attacker)
    local attackerArmedTag = attackerObj:HasTag("Rifle_Armed")

    if (attackerArmedTag == false) then return end

    local targetStatuses = targetObj:GetStatusObjects()

    local targetHasHitStatus = false
    local onDeathEffectTriggered = false
    local validAttackSource = false
    DebugPrint("--- Target Statuses ---")
    for i = 1,#targetStatuses,1 do
        DebugPrint(targetStatuses[i].StatusType)
        if (targetStatuses[i].StatusType == "HIT" and onDeathEffectTriggered == false) then
            targetHasHitStatus = true
            if targetStatuses[i].SkillId == "" and targetStatuses[i].DamageSourceType == "Attack" then
                DebugPrint("TARGET KILLED WITH BASIC ATTACK!")
                validAttackSource = true
            else
                if IsRifleBasedSkill(targetStatuses[i].SkillId) then
                    DebugPrint("TARGET KILLED WITH RIFLE BASED SKILL/EFFECT!")
                    onDeathEffectTriggered = true
                    validAttackSource = true
                end
            end
        end
    end

    if (not targetHasHitStatus) or (not validAttackSource) then
        DebugPrint("Invalid TargetHitStatus or AttackSource, no AmmoEffect should be performed.")
        return
    end
    -- Make sure to check if the hit actually occured by using a rifle and not any other kind of weapon.
    -- (Basically, check for the "Rifle_Armed" tag on the attacker)

    --DebugPrint("--- Attacker Statuses ---")

    local ammoTypeStatusId = GetCharacterAmmoType(attacker)

    if ammoTypeStatusId == "RELOAD_INCENDIARY" then
        NRD_ProjectilePrepareLaunch();
        NRD_ProjectileSetString("SkillId", "Projectile_Musk_Incendiary_Ammo_Effect");
        --NRD_ProjectileSetInt("CasterLevel", 1);
        NRD_ProjectileSetGuidString("Caster", attacker);
        NRD_ProjectileSetInt("CasterLevel", attackerObj.Stats.Level);
        NRD_ProjectileSetGuidString("Source", attacker);
        NRD_ProjectileSetGuidString("Target", defender);
        NRD_ProjectileSetGuidString("HitObject", defender);
        NRD_ProjectileSetGuidString("HitObjectPosition", defender);
        NRD_ProjectileSetGuidString("SourcePosition", defender);
        NRD_ProjectileSetGuidString("TargetPosition", defender);
        NRD_ProjectileLaunch();
    end
end
Ext.RegisterOsirisListener("CharacterKilledBy", 3, "before", AmmotypeOnKill)

-- Includes logic for WeaponEx Blunderbuss Buckshot Mastery
local function Musketeer_OnHit_Handler(defender, attacker, damageAmount, statusHandle)

    -- NOTE: basic attacks apply a "HIT" Status without "SkillId" and with "WeaponHandle" = nil.
    -- Also, attacks on items cannot miss, so no need to check for dodge/missed attack.
    -- However, i noticed that "damageAmount" on characters is 0 when the attack misses. (good to know)

    local trackingShotSkillName = "Projectile_Tracking_Shot"
    local piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Effect"
    local finalActSkillName = "Projectile_Final_Act"
    local RendSkillName = "Projectile_Rend_The_Marked"
    local BuckshotSkillName = "Projectile_Buckshot"
    local RapidfireSkillName = "Projectile_Rapidfire"
    local PiercingAmmoRendSkillName = "Projectile_Musk_Piercing_Ammo_Rend"
    local defenderIsItem = false
    local fromBasicAttack = false
    local hitIsValid = false
    DebugPrint("NRD_OnHit OsirisListener triggered")
    local statusObj = Ext.GetStatus(defender, statusHandle)
    local statusObjStatuses = nil
    local StatusSkillId = nil
    local attackerObj = Ext.GetCharacter(attacker)
    if statusObj == nil and Ext.GetItem(defender) ~= nil then
        statusObj = Ext.GetItem(defender)
        statusObjStatuses = statusObj:GetStatusObjects()
        defenderIsItem = true
    elseif damageAmount == 0 then
        DebugPrint("Attack either missed or did 0 damage")
        return
    end

    if defenderIsItem then
        for i = 1,#statusObj:GetStatusObjects(),1 do
            if statusObjStatuses[i].StatusHandle == statusHandle then
                DebugPrint("Found Statushandle on affected item.")
                if statusObjStatuses[i].StatusType == "HIT" and statusObjStatuses[i].WeaponHandle ~= nil and statusObjStatuses[i].SkillId == "" then
                    DebugPrint("Affected Item was hit by a basic attack")
                    fromBasicAttack = true
                    hitIsValid = true
                    StatusSkillId = statusObjStatuses[i].SkillId
                elseif statusObjStatuses[i].StatusType == "HIT" and statusObjStatuses[i].WeaponHandle == nil and IsRifleBasedSkill(statusObjStatuses[i].SkillId) then
                    DebugPrint("Affected Item was hit by a rifle based skill")
                    hitIsValid = true
                    StatusSkillId = statusObjStatuses[i].SkillId
                end
            end
        end
    else
        if (statusObj.SkillId ~= nil) then
            local skillId = statusObj.SkillId
            StatusSkillId = skillId
            if skillId == "" and statusObj.DamageSourceType == "Attack" and attackerObj ~= nil and attackerObj:HasTag("Rifle_Armed") then
                DebugPrint("Affected Character was hit by a basic attack")
                fromBasicAttack = true
                hitIsValid = true
            elseif attackerObj ~= nil and attackerObj:HasTag("Rifle_Armed") and IsRifleBasedSkill(statusObj.SkillId) then
                DebugPrint("Affected Character was hit by a rifle based skill")
                hitIsValid = true
                if #statusObj.SkillId >= #finalActSkillName and string.sub(statusObj.SkillId, 1, #finalActSkillName) == finalActSkillName then
                    DebugPrint("Defender got attacked with the Final Act skill.")
                    ApplyStatus(defender, "MUSK_MARK_FINALACT_DUMMY", 2, 1, attacker)
                    --return
                elseif #statusObj.SkillId >= #RendSkillName and string.sub(statusObj.SkillId, 1, #RendSkillName) == RendSkillName then
                    DebugPrint("Defender got attacked with the Rend the Marked skill.")
                    ApplyStatus(defender, "MUSK_MARK_REND_DUMMY", 2, 1, attacker)
                    piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Rend"
                    --return
                elseif #statusObj.SkillId >= #trackingShotSkillName and string.sub(statusObj.SkillId, 1, #trackingShotSkillName) == trackingShotSkillName then
                    DebugPrint("Defender got attacked with the Tracking Shot skill.")
                    piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Tracking"
                    --return
                elseif #statusObj.SkillId >= #RapidfireSkillName and string.sub(statusObj.SkillId, 1, #RapidfireSkillName) == RapidfireSkillName then
                    DebugPrint("Defender got attacked with the Rapidfire skill.")
                    piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_RapidFire"
                    --return
                elseif #statusObj.SkillId >= #BuckshotSkillName and string.sub(statusObj.SkillId, 1, #BuckshotSkillName) == BuckshotSkillName then
                    DebugPrint("Defender got attacked with the Buckshot skill.")
                    NRD_ProjectilePrepareLaunch()
                    if attackerObj:HasTag("Musk_Rifle_Blunderbuss_Mastery4") then
                        Ext.Print("Attacker has Blunderbuss Mastery 4, adding 2m to Buckshot explosion range")
                        NRD_ProjectileSetString("SkillId", "Projectile_Buckshot_Fire_Blunderbuss_Mastery")
                    else
                        NRD_ProjectileSetString("SkillId", "Projectile_Buckshot_Fire")
                    end
                    NRD_ProjectileSetGuidString("Caster", attacker)
                    NRD_ProjectileSetInt("CasterLevel", attackerObj.Stats.Level)
                    NRD_ProjectileSetGuidString("Source", attacker)
                    NRD_ProjectileSetGuidString("Target", defender)
                    NRD_ProjectileSetGuidString("HitObject", defender)
                    NRD_ProjectileSetGuidString("HitObjectPosition", defender)
                    NRD_ProjectileSetGuidString("SourcePosition", defender)
                    NRD_ProjectileSetGuidString("TargetPosition", defender)
                    NRD_ProjectileLaunch();
                    return
                end
            elseif attackerObj ~= nil and attackerObj:HasTag("Rifle_Armed") and statusObj.SkillId == PiercingAmmoRendSkillName then
                --DebugPrint(":::::::::::::::::::::: Hit with Piercing Ammo effect off of Rend the Marked ::::::::::::::::::::::")
                ApplyStatus(defender, "MUSK_MARK_REND_DUMMY", 2, 1, attacker)
            end
        end
    end
    if not hitIsValid then return end
    -- basic attack on item or chars: All Effects
    -- skill attacks on item or chars: only piercing effect

    local ammoTypeStatusId = GetCharacterAmmoType(attacker)
    if ammoTypeStatusId == nil then return end

    local ammoTypeSkillName = "Projectile_Ammo_Default"
    if ammoTypeStatusId == Musketeer_Ammo_Statuses[1] then
        ammoTypeSkillName = "Projectile_Ammo_Incendiary"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[2] then
        ammoTypeSkillName = "Projectile_Ammo_Freezing"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[3] then
        ammoTypeSkillName = "Projectile_Ammo_Shock"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[4] then
        ammoTypeSkillName = "ProjectileStrike_Musk_AmmoType_Doom"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[5] then
        return
        -- Used to be Explosive, but has been replaced with Piercing
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[6] then
        --ammoTypeSkillName = "Musketeer_FX_Ammo_Piercing_Beam"
        ammoTypeSkillName = "Projectile_Ammo_Explosive"
        local newX, newY, newZ = GetOvershootPosition(attacker, defender, 5)
        if ammoTypeSkillName ~= StatusSkillId then
            SetVarFloat3(attacker, "Piercing_TargetLocation", newX, newY, newZ)
            SetVarObject(attacker, "Piercing_OriginLocation", defender)
            DebugPrint("---------------")
            DebugPrint(piercingAmmoSkillName)
            DebugPrint("---------------")
            SetVarFixedString(attacker, "Piercing_Projectile_Skill", piercingAmmoSkillName)
            SetStoryEvent(attacker, "Musketeer_Pierce_Ammo_Event")
            DebugPrint("Piercing Ammo overshoot Event")
        end
    end

    -- Triggering the Piercing Projectile for skills here instead of via GameScript,
    -- as it would require a ExplodeRadius of at least 1 and would thus be AoE.

    if fromBasicAttack or (ammoTypeSkillName == "Projectile_Ammo_Explosive" and (ammoTypeSkillName ~= StatusSkillId)) then
        DebugPrint(ammoTypeSkillName)
        DebugPrint(StatusSkillId)
        NRD_ProjectilePrepareLaunch()
        NRD_ProjectileSetString("SkillId", ammoTypeSkillName)
        NRD_ProjectileSetGuidString("Caster", attacker)
        NRD_ProjectileSetInt("CasterLevel", attackerObj.Stats.Level)
        NRD_ProjectileSetGuidString("Source", attacker)
        NRD_ProjectileSetGuidString("Target", defender)
        NRD_ProjectileSetGuidString("HitObject", defender)
        NRD_ProjectileSetGuidString("HitObjectPosition", defender)
        NRD_ProjectileSetGuidString("SourcePosition", defender)
        NRD_ProjectileSetGuidString("TargetPosition", defender)
        NRD_ProjectileLaunch();
        return
    end
end
Ext.RegisterOsirisListener("NRD_OnHit", 4, "after", Musketeer_OnHit_Handler)

-- Delete this function after testing the FinalAct execution effect.
local function DebugFinalActTagRemoval(character, tag)
    if tag == "Musketeer_Final_Act_Tag" then
        DebugPrint("Musketeer_Final_Act_Tag was removed from: ")
        DebugPrint(character)
    end
end
--Ext.RegisterOsirisListener("ObjectLostTag", 2, "before", DebugFinalActTagRemoval)


local function Musketeer_Skill_AmmoType_BeamFX(item, event)
    if item == nil then return end
    --DebugPrint("------------------- Musketeer_Skill_AmmoType_BeamFX -------------------")
    --DebugPrint(item, event)
    local helperName = "Musk_Skill_Helperobject"
    if #item >= #helperName and string.sub(item, 1, #helperName) == helperName then
        DebugPrint("The Object is a HelperObject")
        DebugPrint(item, event)
        local itemObj = Ext.GetItem(item)
        --print(itemObj)
        --print(itemObj.OwnerHandle)
        local charObj = Ext.GetCharacter(itemObj.OwnerHandle)
        --print(charObj)
        local weaponGUID = CharacterGetEquippedItem(charObj.MyGuid, "Weapon")
        DebugPrint(weaponGUID)

        if charObj ~= nil and NRD_ActionStateGetString(charObj.MyGuid, "SkillId") == "Projectile_Tracking_Shot_-1" then
            --DebugPrint("Character used Tracking Shot, thus no BeamFX")
            return
        end
        --DebugPrint(NRD_ActionStateGetString(charObj.MyGuid, "SkillId"))

        local characterAmmoTypeStatusId = GetCharacterAmmoType(charObj.MyGuid)
        if characterAmmoTypeStatusId == nil then
            DebugPrint(" /////////////// No AmmoType Status found on character /////////////// ")
            return
        end
        local beamFXName = "Musketeer_FX_Bullet_Projectile_Beam"
        if characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[1] then
            beamFXName = "Musketeer_FX_Ammo_Incendiary_Beam"
        elseif characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[2] then
            beamFXName = "Musketeer_FX_Ammo_Freezing_Beam"
        elseif characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[3] then
            beamFXName = "Musketeer_FX_Ammo_Shock_Beam"
        elseif characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[4] then
            beamFXName = "Musketeer_FX_Ammo_Doom_Beam"
        elseif characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[5] then
            -- Used to be Explosive, but has been replaced with Piercing
            beamFXName = "Musketeer_FX_Bullet_Projectile_Beam"
        elseif characterAmmoTypeStatusId == Musketeer_Ammo_Statuses[6] then
            beamFXName = "Musketeer_FX_Ammo_Piercing_Beam"
        end

        PlayBeamEffect(charObj.MyGuid, item, beamFXName, "Dummy_ArrowFX", "Dummy_Root")
        --print("FX Handle from Looping Beam: " .. fxHandle)
    end
    --DebugPrint("skill used: " .. skill.Name)
end
Ext.RegisterOsirisListener("StoryEvent", 2, "before", Musketeer_Skill_AmmoType_BeamFX)




local function Musketeer_Test_AmmoType_Boost_Remove(itemGuid, characterGuid)

end
--Ext.RegisterOsirisListener("ItemUnEquipped", 2, "before", Musketeer_Test_AmmoType_Boost_Remove)


local function Musketeer_Test_AmmoType_Boost_Apply(itemGuid, characterGuid)
    local itemObj = Ext.GetItem(itemGuid)
    local itemTemplate = itemObj.RootTemplate
    DebugPrint(itemGuid)
    DebugPrint(itemObj.MyGuid)
    DebugPrint(itemTemplate)
    DebugPrint(itemTemplate.Owner)
    DebugPrint(itemTemplate.Description)
    ItemAddDeltaModifier(itemGuid, "_Boost_Weapon_Primary_Finesse_Large")
    local debugVar = ItemHasDeltaModifier(itemGuid, "_Boost_Weapon_Primary_Finesse_Large")
    DebugPrint(debugVar)
end
--Ext.RegisterOsirisListener("ItemEquipped", 2, "before", Musketeer_Test_AmmoType_Boost_Apply)

local function Musketeer_Ammobar_CC_Visibility(playerGuid, bool)
    --if bool == 1 then bool = true elseif bool == 0 then bool = false end
    Ext.PostMessageToClient(playerGuid, "playerSetInCC", bool)
end
Ext.NewCall(Musketeer_Ammobar_CC_Visibility, "NRD_AmmoBar_SetCC_Visibility", "(STRING)_Player, (INTEGER)_Bool");

Ext.RegisterListener("ProjectileHit", function (projectile, hitObject, position)
    DebugPrint("ProjectileHit event fired")
    DebugPrint("ProjectileHit: ", projectile, hitObject, position)
    DebugPrint(projectile.WeaponHandle)
    DebugPrint(projectile.SkillId)

    if projectile ~= nil and projectile.SkillId == "Projectile_Buckshot_-1" and projectile.DamageSourceType == "Attack" and not projectile.IsFromItem then
        local attackerObj = Ext.GetCharacter(projectile.CasterHandle)
        NRD_ProjectilePrepareLaunch()
        if attackerObj:HasTag("Musk_Rifle_Blunderbuss_Mastery4") then
            Ext.Print("Attacker has Blunderbuss Mastery 4, adding 2m to Buckshot explosion range")
            NRD_ProjectileSetString("SkillId", "Projectile_Buckshot_Fire_Blunderbuss_Mastery")
        else
            NRD_ProjectileSetString("SkillId", "Projectile_Buckshot_Fire")
        end
        NRD_ProjectileSetGuidString("Caster", attackerObj.MyGuid)
        NRD_ProjectileSetInt("CasterLevel", attackerObj.Stats.Level)
        if hitObject ~= nil then
            DebugPrint("Buckshot object event")
            NRD_ProjectileSetGuidString("SourcePosition", hitObject.MyGuid)
            NRD_ProjectileSetGuidString("TargetPosition", hitObject.MyGuid)
        else
            DebugPrint("Buckshot attack ground event")
            NRD_ProjectileSetVector3("SourcePosition", position[1], position[2], position[3])
            NRD_ProjectileSetVector3("TargetPosition", position[1], position[2], position[3])
        end
        NRD_ProjectileLaunch();
        return
    end

    if hitObject ~= nil or projectile == nil or projectile.SkillId ~= "" or projectile.DamageSourceType ~= "Attack" or projectile.IsFromItem then return end
    DebugPrint("ProjectileHit: ", projectile, hitObject, position)
    local attackerObj = Ext.GetCharacter(projectile.CasterHandle)

    if attackerObj == nil or not attackerObj:HasTag("Rifle_Armed") then return end

    local attackerWeapon = Ext.GetItem(CharacterGetEquippedWeapon(attackerObj.MyGuid))
    DebugPrint(projectile.WeaponHandle)
    DebugPrint(attackerWeapon.Handle)

    if projectile.WeaponHandle ~= attackerWeapon.Handle then return end
    DebugPrint("Attack Ground hit event with firearm detected.")

    DebugPrint(Ext.JsonStringify(position))

    local ammoTypeStatusId = GetCharacterAmmoType(attackerObj.MyGuid)
    if ammoTypeStatusId == nil then return end

    local ammoTypeSkillName = "Projectile_Ammo_Default"
    if ammoTypeStatusId == Musketeer_Ammo_Statuses[1] then
        ammoTypeSkillName = "Projectile_Ammo_Incendiary"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[2] then
        ammoTypeSkillName = "Projectile_Ammo_Freezing"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[3] then
        ammoTypeSkillName = "Projectile_Ammo_Shock"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[4] then
        ammoTypeSkillName = "ProjectileStrike_Musk_AmmoType_Doom"
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[5] then
        return
    elseif ammoTypeStatusId == Musketeer_Ammo_Statuses[6] then
        return
    end
    NRD_ProjectilePrepareLaunch()
    NRD_ProjectileSetString("SkillId", ammoTypeSkillName)
    NRD_ProjectileSetGuidString("Caster", attackerObj.MyGuid)
    NRD_ProjectileSetInt("CasterLevel", attackerObj.Stats.Level)
    NRD_ProjectileSetVector3("SourcePosition", position[1], position[2], position[3])
    NRD_ProjectileSetVector3("TargetPosition", position[1], position[2], position[3])
    NRD_ProjectileLaunch();
end)

local function Musketeer_Weapon_Generated(item)
    do return end
    if #item:GetGeneratedBoosts() == 0 then return end
    --DebugPrint(item.Stats.ItemGroup)
    --DebugPrint(Ext.JsonStringify(item:GetTags()))
    --if not (item:HasTag("Musk_Rifle_Long") or item:HasTag("Musk_Rifle_Short") or item:HasTag("Musk_Rifle_Medium")) then DebugPrint(item.DisplayName) return end
    
    if not (string.sub(item.Stats.ItemGroup, 1, string.len("Musk_")) == "Musk_") then return end
    DebugPrint("----------------------------------------------------------------")
    local oldDeltaMods = item:GetGeneratedBoosts()
    local newBoostList = {}
    local maxCharges = item.MaxCharges
    local currCharges = item.Charges
    local itemOwner = GetInventoryOwner(item.MyGuid)

    DebugPrint("All Deltamods of current item:")
    DebugPrint(Ext.JsonStringify(oldDeltaMods))
    DebugPrint("----------------------------")
    
    for i = 1,#oldDeltaMods,1 do
        local deltaMod = Ext.GetDeltaMod(oldDeltaMods[i], "Weapon")
        if deltaMod ~= nil then
            --DebugPrint(deltaMod.WeaponType)
            if deltaMod.WeaponType == "Crossbow" then
                --DebugPrint(oldDeltaMods[i])
                --DebugPrint(Ext.JsonStringify(deltaMod))
                newBoostList[#newBoostList+1] = oldDeltaMods[i] .. "_Musk"
                --DebugPrint(deltaMod.Boosts[1].Boost)
            elseif oldDeltaMods[i] == "Boost_Weapon_EmptyRuneSlot" then
                DebugPrint("Add an additional Ammo-Slot or somethin")
                newBoostList[#newBoostList+1] = oldDeltaMods[i] .. "_Musk"
            else
                newBoostList[#newBoostList+1] = oldDeltaMods[i]
            end
        end
    end

    --DebugPrint(item.DisplayName)
    local rootTemplate = GetTemplate(item.MyGuid)
    NRD_ItemCloneBegin(item.MyGuid)

    NRD_ItemCloneSetString("RootTemplate", rootTemplate)
    NRD_ItemCloneSetString("OriginalRootTemplate", rootTemplate)
    NRD_ItemCloneSetString("GenerationStatsId", item.Name)
    NRD_ItemCloneSetString("StatsEntryName", item.Name)
    

    NRD_ItemCloneSetString("ItemType", "Unique")
    NRD_ItemCloneSetString("GenerationItemType", "Unique")
    NRD_ItemCloneSetInt("HasGeneratedStats", 0)
    local genItemGuid = NRD_ItemClone()

    NRD_ItemCloneBegin(genItemGuid)
    
    for i = 1,#newBoostList,1 do
        if newBoostList[i] == "Boost_Weapon_EmptyRuneSlot_Musk" then
            maxCharges = maxCharges + 1
            currCharges = currCharges + 1
            DebugPrint("Cannot add charges to items yet, so currently currently ignoring this.")
            --NRD_ItemCloneAddBoost("Generation", "Boost_Weapon_Damage_Bonus_Medium")
        end
        NRD_ItemCloneAddBoost("Generation", newBoostList[i])
        --print("Boost added to cloned item", newBoostList[i])
    end

    local itemGenBase, itemGenType, itemGenLevel, itemGenRandom = NRD_ItemGetGenerationParams(item.MyGuid)
    --Ext.Print(itemGenType)

    NRD_ItemCloneSetString("RootTemplate", rootTemplate)
    NRD_ItemCloneSetString("OriginalRootTemplate", rootTemplate)
    NRD_ItemCloneSetString("GenerationStatsId", item.Name)
    NRD_ItemCloneSetString("StatsEntryName", item.Name)
    NRD_ItemCloneSetInt("StatsLevel", item.Level)
    --NRD_ItemCloneSetString("GenerationItemType", item.Stats.ItemTypeReal)
    --NRD_ItemCloneSetString("GenerationItemType", "Unique")
    NRD_ItemCloneSetString("ItemType", itemGenType)
    NRD_ItemCloneSetInt("HasGeneratedStats", 1)
    NRD_ItemCloneSetInt("GenerationLevel", item.Level)
    NRD_ItemCloneSetInt("GMFolding", 0)
    --NRD_ItemCloneSetInt("IsIdentified", 1)
    local genItemGuid2 = NRD_ItemClone()
    
    local genItemObj = Ext.GetItem(genItemGuid2)

    SetVarObject(item.MyGuid, "MusketeerFinishCloning", genItemGuid2)
    SetStoryEvent(item.MyGuid, "MusketeerFinishCloningEvent")
    SetStoryEvent(genItemGuid, "MusketeerDeleteItem")
    DebugPrint("----------------------------------------------------------------")
end
--Ext.RegisterListener("TreasureItemGenerated", Musketeer_Weapon_Generated)

local function Musketeer_Vendor_Delete_Old_Unsold(traderGuid)
    --Ext.Print("I'm here too")
    local traderObj = Ext.GetCharacter(traderGuid)
    if traderObj.Trader then
        --Ext.Print("Deleting old Inventory rifles...")
        local traderItemList = traderObj:GetInventoryItems()
        local closePlayerGuid, distance = GetClosestAlivePlayer(traderGuid)
        local playerLvl = CharacterGetLevel(closePlayerGuid)
        --Ext.Print(playerLvl)
        local traderInventoryList = traderObj:GetInventoryItems()
        local riflecount = 0
        for i=1, #traderInventoryList do
            local tempItem = Ext.GetItem(traderInventoryList[i])
            if tempItem:HasTag("Musk_Rifle") and tempItem.UnsoldGenerated == false and tempItem.Stats.Level < playerLvl then
                --Ext.Print("Found stale rifle in vendor inventory")
                --Ext.Print(tempItem.DisplayName)

                --ItemRemove(tempItem.MyGuid)
            elseif
             tempItem.UnsoldGenerated == false and tempItem.Stats.Level >= playerLvl then
                riflecount = riflecount + 1
            end
        end
        --Ext.Print("Final Rifle Count:")
        --Ext.Print(riflecount)
        --Ext.Print(Ext.JsonStringify(traderObj:GetInventoryItems()))
        MoveAllItemsTo(traderGuid, traderGuid, 0, 0, 0)
    end
end
-- Ext.RegisterOsirisListener("TradeGenerationEnded", 1, "before", Musketeer_Vendor_Delete_Old_Unsold)

local function Musketeer_Check_Equipped_Item(itemGuid, charGuid)
    --print("Equip Item")
    local item = Ext.GetItem(itemGuid)
    if item ~= nil and item.StatsId ~= nil then
        if string.sub(item.StatsId, 1, #"WPN_Rifle") == "WPN_Rifle" or string.sub(item.StatsId, 1, #"_Musk_Rifles") == "_Musk_Rifles" or string.sub(item.StatsId, 1, #"_Npc_Rifles") == "_Npc_Rifles" then
            --Ext.Print("A Rifle was equipped by someone.")
            --Ext.Print("Rifle Equipped Event")
            CharacterItemSetEvent(charGuid, itemGuid, "Musketeer_Rifle_Equipped")
        end
        --Ext.Print(item)
        --Ext.Print(item.StatsId) 
    end
    --[[
    if tag ~= nil and type(tag) == "string" and string.sub(tag, 1, #"Musk_Rifle_") == "Musk_Rifle_" then
        Ext.Print("Rifle was equipped.")
    end
    --]]
end
Ext.RegisterOsirisListener("ItemEquipped", 2, "before", Musketeer_Check_Equipped_Item)


local function Musketeer_Check_Unequipped_Item(itemGuid, charGuid)
    --print("Unequip Item")
    local item = Ext.GetItem(itemGuid)
    if item ~= nil and item.StatsId ~= nil then
        if string.sub(item.StatsId, 1, #"WPN_Rifle") == "WPN_Rifle"
        or string.sub(item.StatsId, 1, #"_Musk_Rifles") == "_Musk_Rifles"
        or string.sub(item.StatsId, 1, #"_Npc_Rifles") == "_Npc_Rifles"
        or string.sub(item.StatsId, 1, #"_Rifle") == "_Rifle" then
            --Ext.Print("A Rifle was equipped by someone.")
            --Ext.Print("Rifle Unequipped Event")
            CharacterItemSetEvent(charGuid, itemGuid, "Musketeer_Rifle_Unequipped")
        end
        --Ext.Print(item)
        --Ext.Print(item.StatsId) 
    end
    --[[
    if tag ~= nil and type(tag) == "string" and string.sub(tag, 1, #"Musk_Rifle_") == "Musk_Rifle_" then
        Ext.Print("Rifle was equipped.")
    end
    --]]
end
Ext.RegisterOsirisListener("ItemUnEquipped", 2, "before", Musketeer_Check_Unequipped_Item)

function Musketeer_WeaponEx_AddToPersistentVars(charGuid, key, value)
    local persVarValue = 0
    if value == "yes" then persVarValue = 1 end
    --Ext.Print("[Musketeer Server]: Send WeaponEx stuff to Client")
    --Ext.Print(charGuid)
    if not ObjectIsCharacter(charGuid) then Ext.Print("Trying to send message to invalid character") return end
    local message = {key, charGuid, value}
    if PersistentVars.WeaponExMasteries[charGuid] == nil then PersistentVars.WeaponExMasteries[charGuid] = {} end
    PersistentVars.WeaponExMasteries[charGuid][key] = persVarValue
    --Ext.Print(Ext.JsonStringify(message))
    --Ext.Print("Debug Musketeer AddToPersistentVars function")
        --[[
    local charObj = Ext.GetCharacter(charGuid)
    local guidOrNetID = charGuid
    if charObj ~= nil and charObj.NetID ~= nil then
        Ext.Print("Character has a NetID")
        Ext.Print(charObj.NetID)
        guidOrNetID = charObj.NetID
        Ext.PostMessageToUser(guidOrNetID, "Musketeer_WeaponEx_Mastery_PersistentVars", Ext.JsonStringify(message))
        return
    end
    ]]
    Ext.PostMessageToClient(charGuid, "Musketeer_WeaponEx_Mastery_PersistentVars", Ext.JsonStringify(message))
end

Ext.Require("414af60f-550c-4134-a560-ae3f69f2dc52", "MusketeerMasteries/Server/Musketeer_Musket.lua")
Ext.Require("414af60f-550c-4134-a560-ae3f69f2dc52", "MusketeerMasteries/Server/Musketeer_Blunderbuss.lua")
Ext.Require("414af60f-550c-4134-a560-ae3f69f2dc52", "MusketeerMasteries/Server/Musketeer_Matchlock.lua")

function Test()
    --Ext.Print("Test here!")
    local allCharacters = Ext.GetAllCharacters()
    --Ext.Print(#allCharacters)
    for i=1,#allCharacters,1 do
        local characterInventory = Ext.GetCharacter(allCharacters[i]):GetInventoryItems()
        for j=1,#characterInventory,1 do
            local currentItem = Ext.GetItem(characterInventory[j])
            if currentItem:HasTag("Musk_Rifle") and currentItem:HasTag("LLWEAPONEX_Crossbow") then
                Ext.Print("Detected Musketeer Rifle with legacy WeaponType tag, removing WeaponEx Crossbow tag.")
                ClearTag(characterInventory[j], "LLWEAPONEX_Crossbow")
            end
        end
    end
end
Ext.RegisterOsirisListener("GameStarted", 2, "before", Test)

local function Musketeer_Receive_Single_Skill_AmmoCost_Request(call, payload)
    local message = Ext.JsonParse(payload)
    local player = message[1]
    local skillname = message[2]
    
    local dbEntry = Osi.DB_Musketeer_Skillist:Get(skillname, nil)
    if dbEntry ~= nil and dbEntry[1] ~= nil and dbEntry[1][2] ~= nil then
        Ext.PostMessageToClient(player, "Musketeer_Answer_AmmoCost_Single_Skill", dbEntry[1][2])
    end
end
Ext.RegisterNetListener('Musketeer_Request_AmmoCost_Single_Skill', Musketeer_Receive_Single_Skill_AmmoCost_Request)



Ext.RegisterSkillProperty("MUSKETEER_BUCKSHOT_SKILLPROP", {
    ExecuteOnTarget = function (property, attacker, target, position, isFromItem, skill, hit)
        if attacker ~= nil and WeaponEx ~= nil and attacker:HasTag("Musk_Rifle_Blunderbuss_Mastery3") then
            Ext.ExecuteSkillPropertiesOnTarget("Projectile_Buckshot_Explosion_Cone_Dummy_Mastery", attacker.MyGuid, target.MyGuid, position, "Target", isFromItem)
        else
            Ext.ExecuteSkillPropertiesOnTarget("Projectile_Buckshot_Explosion_Cone_Dummy", attacker.MyGuid, target.MyGuid, position, "Target", isFromItem)
        end
        --Ext.PrintWarning("SKILLPROPERTY ExecuteOnTarget!")
        --Ext.PrintWarning(property, attacker, target, position, isFromItem, skill, hit)
        --Ext.ExecuteSkillPropertiesOnPosition("Buckshot_Explosion_Cone_Dummy", ch, pos, 3.0, "AoE", false)
    end,
    ExecuteOnPosition = function (property, attacker, position, areaRadius, isFromItem, skill, hit)
        --Ext.PrintWarning("SKILLPROPERTY ExecuteOnPosition!")
        --Ext.PrintWarning(property, attacker, position, areaRadius, isFromItem, skill, hit)
        if attacker ~= nil and WeaponEx ~= nil and attacker:HasTag("Musk_Rifle_Blunderbuss_Mastery3") then
            Ext.ExecuteSkillPropertiesOnPosition("Projectile_Buckshot_Explosion_Cone_Dummy_Mastery", attacker.MyGuid, position, 0.0, "Target", isFromItem)
        else
            Ext.ExecuteSkillPropertiesOnPosition("Projectile_Buckshot_Explosion_Cone_Dummy", attacker.MyGuid, position, 0.0, "Target", isFromItem)
        end
    end
})


local function Musketeer_Add_Mark_Damage_Handler(target, attacker, damage, hitStatus)
    --print("Ola")
    local hitStatus = Ext.GetStatus(target, hitStatus)
    --print(hitStatus.SkillId)
    if ObjectIsCharacter(target) == 1 and HasActiveStatus(target, "MUSK_MARK_TARGET") == 1 then
        if Musketeer_MarkDamage_Table[hitStatus.SkillId] ~= nil then
            --print("Marked Damage of Skill:", hitStatus.SkillId)
            local markDamageHit = NRD_HitPrepare(target, attacker)
            NRD_HitAddDamage(markDamageHit, "Physical", damage * ( Musketeer_MarkDamage_Table[hitStatus.SkillId] / 100 ))
            NRD_HitSetInt(markDamageHit, "SimulateHit", 1)
            NRD_HitSetInt(markDamageHit, "NoEvents", 1)
            NRD_HitExecute(markDamageHit);
        elseif Musketeer_MarkDamage_Table[string.sub(hitStatus.SkillId, 1, (#hitStatus.SkillId - 3))] ~= nil then
                --print("Marked Damage of Skill:", hitStatus.SkillId)
                local markDamageHit = NRD_HitPrepare(target, attacker)
                NRD_HitAddDamage(markDamageHit, "Physical", damage * ( Musketeer_MarkDamage_Table[string.sub(hitStatus.SkillId, 1, (#hitStatus.SkillId - 3))] / 100 ))
                NRD_HitSetInt(markDamageHit, "SimulateHit", 1)
                NRD_HitSetInt(markDamageHit, "NoEvents", 1)
                NRD_HitExecute(markDamageHit);
        end
    end
end
Ext.RegisterOsirisListener("NRD_OnHit", 4, "before", Musketeer_Add_Mark_Damage_Handler)


Musketeer_Rune_Update_Pending = {}
--Item = nil
local function Musketeer_Rune_Projectile_Handler(character, item, runeItemTemplate, slot)
    local statIndex = 3 + slot
    --print(character, item, runeItemTemplate, slot)
    if character ~= nil and item ~= nil then
        --print(item)
        local itemObj = Ext.GetItem(item)
        --print(itemObj.Stats)
        --print(itemObj.Stats.DynamicStats)
        --Item = itemObj.Stats.DynamicStats

        local runeDamageType = itemObj.Stats.DynamicStats[statIndex].DamageType
        --Ext.Print(runeDamageType)

        if Musketeer_Rune_Projectile[runeDamageType] ~= nil then
            
            itemObj.Stats.DynamicStats[statIndex].Projectile = Musketeer_Rune_Projectile[runeDamageType]
            local message = {}
            message[1] = item
            message[2] = Musketeer_Rune_Projectile[runeDamageType]
            message[3] = statIndex
            --Ext.Print("Valid projectile replacement found.")
            --Ext.PostMessageToClient(character, "Musketeer_Sync_Rune_Projectile", Ext.JsonStringify(message))
            local tuple = {character, item, Musketeer_Rune_Projectile[runeDamageType], statIndex}
            table.insert(Musketeer_Rune_Update_Pending, tuple)
            TimerLaunch("Musketeer_Sync_Rune_Projectile_Timer", 50)
            --Ext.BroadcastMessage("Musketeer_Sync_Rune_Projectile", Ext.JsonStringify(message))
        else
            --Ext.PrintWarning(runeDamageType)
            --Ext.PrintWarning(Musketeer_Rune_Projectile[runeDamageType])
        end

    end
end

Ext.RegisterOsirisListener("RuneInserted", 4, "after", Musketeer_Rune_Projectile_Handler)

local function Musketeer_Update_Character_Rune_Projectile(characterGuid)
    local weaponGuid = CharacterGetEquippedWeapon(characterGuid)
    local weapon = Ext.GetItem(weaponGuid)
    local dynamicStats = weapon.Stats.DynamicStats
    for i = 3, 5, 1 do
        if dynamicStats[i] ~= nil and dynamicStats[i].Projectile ~= nil and dynamicStats[i].DamageType ~= nil then
            Musketeer_Rune_Projectile_Handler(characterGuid, weaponGuid, nil, (i - 3))
        end
    end

end

local function Musketeer_OnStart_Restore_Changed_Rune_Projectiles()
    --IterateUsers("Musketeer_Update_Rune_Projectiles")
    local playersDB = Osi.DB_Musketeer_RifleEquipped:Get(nil, nil)
		if playersDB ~= nil and #playersDB > 0 then
			local players = {}
			for i,v in pairs(playersDB) do
                --Ext.Print("Checking rifle wielders")
                --Ext.Print(i)
                --Ext.Print(v[1])
                --Ext.Print(v[2])
                if v[2] == 1 and v[1] ~= nil and i ~= 1 then
                    Musketeer_Update_Character_Rune_Projectile(v[1])
                end
			end
			--Ext.PostMessageToUser(id, "LeaderLib_UnlockCharacterInventory", Ext.JsonStringify(players))
		end
end
Ext.RegisterOsirisListener("GameStarted", 2, "after", Musketeer_OnStart_Restore_Changed_Rune_Projectiles)
--Ext.RegisterListener("SessionLoaded", Musketeer_OnStart_Restore_Changed_Rune_Projectiles)



Ext.RegisterOsirisListener("TimerFinished", 1, "after", function (timerName)
    --print("Proc listener works")
    --print(timerName)
    if timerName == "Musketeer_Sync_Rune_Projectile_Timer" then
        Ext.Print("Syncing Rune Projectile Changes")
        for i = 1, #Musketeer_Rune_Update_Pending, 1 do
            Ext.PostMessageToClient(Musketeer_Rune_Update_Pending[i][1], "Musketeer_Sync_Rune_Projectile", Ext.JsonStringify(Musketeer_Rune_Update_Pending[i]))
        end
        --Ext.PostMessageToClient(character, "Musketeer_Sync_Rune_Projectile", Ext.JsonStringify(message))
        Musketeer_Rune_Update_Pending = {}
    end
end)

--[[
Ext.RegisterListener("ProjectileHit", function (projectile, hitObject, position)
    if projectile == nil then return end
    if projectile.SkillId == "Projectile_Unload_Instance_-1" or projectile.SkillId == "Projectile_Unload_Instance" then
        if projectile.CasterHandle ~= nil then
            local attacker = Ext.GetCharacter(projectile.CasterHandle)
            print(attacker.Stats)
            print(attacker.Stats:GetItemBySlot("Weapon"))
            print(attacker.Stats.MainWeapon)
            print(attacker.Stats.MainWeapon.Charges)
            print(attacker.Stats.CurrentAP)
            if attacker.Stats.MainWeapon.Charges > 0 then
                attacker.Stats.MainWeapon.Charges = attacker.Stats.MainWeapon.Charges -1
                Osi.Musketeer_Ammo_Requirement_Tags(CharacterGetEquippedWeapon(attacker.MyGuid), attacker.MyGuid)
                --print(IsTagged(attacker.MyGuid, "Rifle_Armed"))
                --Musketeer_AmmoBar_SetAmmo(attacker.MyGuid, "Musketeer_SetAmmo_AmmoBar_UI", attacker.Stats.MainWeapon.Charges)
            end
            if attacker.Stats.MainWeapon.Charges <= 0 then
                if attacker.Stats.CurrentAP >= 3 then
                    attacker.Stats.CurrentAP = attacker.Stats.CurrentAP - 3
                else
                    attacker.Stats.CurrentAP = 0
                end
            end
        end
    end
    --Ext.PrintWarning("ProjectileHit: ", projectile, hitObject, position)
end)
--]]

Musketeer_Covering_Fire_Initial_Position = {}

-- Use Game.Math.GetSkillAPCost to correctly calculate skill cost? Has to be done on "Target_Unload_Test" cast though I suppose...
Ext.RegisterListener("ProjectileHit", function (projectile, hitObject, position)
    if projectile == nil then return end
    if projectile.SkillId == "Projectile_Unload_Instance_-1" or projectile.SkillId == "Projectile_Unload_Instance" then
        if projectile.CasterHandle ~= nil then
            local attacker = Ext.GetCharacter(projectile.CasterHandle)
            --[[
            print(attacker.Stats)
            print(attacker.Stats:GetItemBySlot("Weapon"))
            print(attacker.Stats.MainWeapon)
            print(attacker.Stats.MainWeapon.Charges)
            print(attacker.Stats.CurrentAP)
            ]]
            if attacker.Stats.MainWeapon.Charges > 0 then
                attacker.Stats.MainWeapon.Charges = attacker.Stats.MainWeapon.Charges -1
                Osi.Musketeer_Ammo_Requirement_Tags(CharacterGetEquippedWeapon(attacker.MyGuid), attacker.MyGuid)
                --print(attacker.MyGuid)
                --print(Musketeer_Covering_Fire_Initial_Position[attacker.MyGuid])
                if attacker.Stats.MainWeapon.Charges > 0 and Musketeer_Covering_Fire_Initial_Position[attacker.MyGuid] ~= nil then
                    --Ext.Print("Shooting Again")
                    local position = Musketeer_Covering_Fire_Initial_Position[attacker.MyGuid]
                    local distance = GetDistanceToPosition(attacker.MyGuid, position[1], position[2], position[3])
                    local newx, newy, newz = Osi.NRD_Musketeer_Get_Random_Pos(position[1], position[2], position[3], distance)
                    CharacterUseSkillAtPosition(attacker.MyGuid, "Projectile_Unload_Instance", newx, position[2], newz, 0, 1)
                end
                --print(IsTagged(attacker.MyGuid, "Rifle_Armed"))
                --Musketeer_AmmoBar_SetAmmo(attacker.MyGuid, "Musketeer_SetAmmo_AmmoBar_UI", attacker.Stats.MainWeapon.Charges)
            end
            if attacker.Stats.MainWeapon.Charges <= 0 then
                if attacker.Stats.CurrentAP >= 3 then
                    attacker.Stats.CurrentAP = attacker.Stats.CurrentAP - 3
                else
                    attacker.Stats.CurrentAP = 0
                end
                Musketeer_Covering_Fire_Initial_Position[attacker.MyGuid] = nil
            end
        end
    end
    --Ext.PrintWarning("ProjectileHit: ", projectile, hitObject, position)
end)

local function Musketeer_Handle_Covering_Fire_Cast(character, x, y, z, skill, skillType, skillElement)
    Ext.PrintWarning("Covering Fire Used")
    Musketeer_Covering_Fire_Initial_Position[Ext.GetCharacter(character).MyGuid] = {x, y, z}
    local position = {x, y, z}
    local distance = GetDistanceToPosition(character, position[1], position[2], position[3])
    local newx, newy, newz = Osi.NRD_Musketeer_Get_Random_Pos(position[1], position[2], position[3], distance)
    CharacterUseSkillAtPosition(character, "Target_Unload_Buffer", x, y, z, 0, 1);
    CharacterUseSkillAtPosition(character, "Projectile_Unload_Instance", newx, position[2], newz, 0, 1)
end

Ext.RegisterOsirisListener("CharacterUsedSkillAtPosition", 7, "after", function (character, x, y, z, skill, skillType, skillElement)
    if skill ~= "Target_Unload_Test" then return end
    Musketeer_Handle_Covering_Fire_Cast(character, x, y, z, skill, skillType, skillElement)
end)

Ext.RegisterOsirisListener("CharacterUsedSkillOnTarget", 5, "after", function (character, target, skill, skillType, skillElement)
    if skill ~= "Target_Unload_Test" then return end
    local x, y, z = GetPosition(target)
    Musketeer_Handle_Covering_Fire_Cast(character, x, y, z, skill, skillType, skillElement)
end)


Musketeer_Rapidfire_Path = {}

-- Luckily, ProjectileHit is triggered when the attack misses too
Ext.RegisterListener("ProjectileHit", function (projectile, hitObject, position)
    if projectile.SkillId == "Projectile_Rapidfire" or projectile.SkillId == "Projectile_Rapidfire_-1" then
        local attacker = Ext.GetGameObject(projectile.SourceHandle)
        local hitObjectHandle = nil
        if hitObject ~= nil then hitObjectHandle = hitObject.Handle end
        if attacker ~= nil and attacker.MyGuid ~= nil and Musketeer_Rapidfire_Path[attacker.MyGuid] == nil then
            Musketeer_Rapidfire_Path[attacker.MyGuid] = {
                selectedTarget = projectile.TargetObjectHandle,
                attackedObject = hitObjectHandle,
                hitPosition = position,
                restCount = 2
                }
        elseif attacker ~= nil and attacker.MyGuid ~= nil and Musketeer_Rapidfire_Path[attacker.MyGuid] ~= nil then
            if Musketeer_Rapidfire_Path[attacker.MyGuid].restCount > 0 then
                hitObject = Ext.GetGameObject(Musketeer_Rapidfire_Path[attacker.MyGuid].selectedTarget)
            elseif Musketeer_Rapidfire_Path[attacker.MyGuid].restCount <= 0 then
                Musketeer_Rapidfire_Path[attacker.MyGuid] = nil
            end
        end
    end
end)

Ext.RegisterListener("ShootProjectile", function (projectile)
    --if nil == nil then return end
    if projectile.SkillId == "Projectile_Rapidfire" or projectile.SkillId == "Projectile_Rapidfire_-1" then
        local attacker = Ext.GetGameObject(projectile.SourceHandle)
        local projectileInfo = Musketeer_Rapidfire_Path[attacker.MyGuid]
        if projectileInfo ~= nil then        
            if projectileInfo.selectedTarget == projectileInfo.attackedObject then
                projectile.ForceTarget = true
                projectileInfo.restCount = projectileInfo.restCount - 1
            end
        end
    end
end)

Ext.RegisterOsirisListener("NRD_OnActionStateExit", 2, "after", function (character, action)
    if NRD_CharacterGetCurrentAction(character) == "UseSkill" then
        if NRD_ActionStateGetString(character, "SkillId") == "Projectile_Rapidfire" or NRD_ActionStateGetString(character, "SkillId") == "Projectile_Rapidfire_-1" then
            local charObj = Ext.GetCharacter(character)
            Musketeer_Rapidfire_Path[charObj.MyGuid] = nil
            --Ext.Print("Cleared RapidFire table")
        end
    end
end)

local function Musketeer_Character_Is_Ai_Controlled(characterguid)
    if CharacterIsControlled(characterguid) == 0
        or HasActiveStatus(characterguid, "MADNESS") == 1
        or HasActiveStatus(characterguid, "TAUNTED") == 1
        or HasActiveStatus(characterguid, "CHARMED") == 1
        then
            --Ext.PrintWarning("character is mad, taunted, charmed or not controlled") 
            return true 
        end
    
    local statuses = Ext.GetCharacter(characterguid):GetStatusObjects()
    
    for i=1,#statuses,1 do
        if statuses[i].StatusType == "CONSUME" then
            if statuses[i].LoseControl == true then
                Ext.PrintWarning("character has status: ".. statuses[i].StatusId .." with LoseControl property set")
                return true
            end
        end
    end
    return false
end

--Ext.RegisterOsirisListener("NRD_OnActionStateEnter", 2, "after", function (character, action)
local function Musketeer_Weapon_Attack_Handler(character)
    if ObjectIsCharacter(character) == 0 then return end
    -- No Ammo usecase
    if IsTagged(character, "Musketeer_None_Left") == 1 then
        -- player tries to attack when out of ammo
        if Musketeer_Character_Is_Ai_Controlled(character) == false then
            --Ext.PrintWarning("Player tried to AA without Ammo, canceling AA")
            CharacterUseSkill(character, "Target_Unload_Buffer", character)
            CharacterMoveTo(character, character, 1, "", 1)
            CharacterSetStill(character)
            CharacterAddActionPoints(character, 2)
        -- AI tries to attack when out of ammo
        else
            --Ext.PrintWarning("AI tried to AA without Ammo, forcing cast Reload")
            Osi.Musketeer_ClearActionQueue(character)
            CharacterUseSkill(character, "Shout_Reload", character, 1, 1)
        end
    -- At least 1 Ammo usecase
    elseif IsTagged(character, "Musketeer_AtLeast_One_Left") == 1 then
        --Ext.PrintWarning("At least 1 Ammo left, AutoAttack not cancelled.")
        local weapon = CharacterGetEquippedWeapon(character)
        Osi.Musketeer_Consume_Ammo(weapon, -1, character)
    end
end

Ext.RegisterOsirisListener("CharacterStartAttackObject", 3, "after", function (defender, owner, attacker)
    Musketeer_Weapon_Attack_Handler(attacker)
end)

Ext.RegisterOsirisListener("CharacterStartAttackPosition", 5, "after", function (x, y, z, owner, attacker)
    Musketeer_Weapon_Attack_Handler(attacker)
end)

local Musketeer_Flush_AI_Queue = {}

Ext.RegisterOsirisListener("CharacterStatusApplied", 3, "after", function (character, status, causee)
    if Musketeer_Character_Is_Ai_Controlled(character) == true and status == "RELOAD_DEBUFF" then
        table.insert(Musketeer_Flush_AI_Queue, character)
        TimerLaunch("Musketeer_Flush_AI_Queue", 2000)
    end
end)

Ext.RegisterOsirisListener("TimerFinished", 1, "after", function (timerName)
    --print("Proc listener works")
    --print(timerName)
    if timerName == "Musketeer_Flush_AI_Queue" then
        --Ext.Print("Syncing Rune Projectile Changes")
        for i = 1, #Musketeer_Flush_AI_Queue, 1 do
            --Ext.PrintWarning("AI character: ".. Musketeer_Flush_AI_Queue[i] .." action queue cleared")
            Osi.Musketeer_ClearActionQueue(Musketeer_Flush_AI_Queue[i], 1)
        end
        --Ext.PostMessageToClient(character, "Musketeer_Sync_Rune_Projectile", Ext.JsonStringify(message))
        Musketeer_Flush_AI_Queue = {}
    end
end)

Guid = "ad9a3327-4456-42a7-9bf4-7ad60cc9e54f"
function Musketeer_Cheat (mode)
    if mode == 1 or mode == nil then
        CharacterLevelUp(Guid)
    end
    if mode == 2 or mode == nil then
        CharacterGiveReward(Guid, "ST_SkillbookRanger", 1)
        CharacterAddSkill(Guid, "Target_Musk_Flare_Test_Target")
    end
    if mode == 3 or mode == nil then
        RemoveStatus(Guid, "SOURCE_MUTED")
        CharacterOverrideMaxSourcePoints(Guid, 3)
        CharacterAddSourcePoints(Guid, 3)
    end
end
--[[

For appending TreasureTable entries:

- Check LL's code in WeaponEx for TreasureTable category tables (e.g. ST_LLWEAPONEX_Trader_RangedNormal entry)
- Don't overwrite TreasureTable and instead create a new category from the current overwrite (So we can append the whole table and append it)
- Check LL's code again to see how to append such a new table to the existing ones


]]

--[[
local function Musketeer_Covering_Fire_Use_Skill(characterguid, channel, payload)
    Ext.PostMessageToClient(characterguid, "Musketeer_Set_AmmoBar_UI", payload)
end
Ext.NewCall(Musketeer_Covering_Fire_Use_Skill, "Musketeer_Use_Covering_Fire", "(CHARACTERGUID)_Character, (STRING)_Channel, (INTEGER)_Bool");
]]
--[[

TODO: For Release of Musketeer: Reloaded

- Fix Buckshot SkillProperty Description                                    DONE
- Fix tag names (Concentrated Terror stealth tag, specific rifle tags)      DONE
- Cleanup code, remove console print messages                               DONE
- Add patching by checking mod version differences                          (DONE)
- Add ammocost to Concentrated Terror                                       DONE
- Fix Blazing Flare Mastery                                                 DONE
- Replace "Target_Haste" with own implementation (Blunderbuss Reload Mastery) DONE
- Check if skills learned from Masteries work correctly                     (DONE)
- Check if mod works correctly when LeaderLib and WeaponEx are not loaded   X
- Playtest a bit                                                            X



]]

--[[
    local function GetOverShootPositionFromProjectile(ProjectileSourcePosition, projectileHitPosition, overshootDistance)
    --DebugPrint("Piercing Ammo stuffs")
    local attackerX, attackerY, attackerZ = ProjectileSourcePosition[1], ProjectileSourcePosition[2], ProjectileSourcePosition[3]
    local targetX, targetY, targetZ = projectileHitPosition[1], projectileHitPosition[2], projectileHitPosition[3]

    local dist = ((targetZ - attackerZ)^2 + (targetX - attackerX)^2)^(1/2)

    local newZ = attackerZ + ((targetZ - attackerZ)/(dist)) * (dist+overshootDistance)
    local newX = attackerX + ((targetX - attackerX)/(dist)) * (dist+overshootDistance)
    local newY = targetY + 0.2
    return newX, newY, newZ
end

local function Musketeer_Get_Closest_Object_Around_Position(x, y, z)
    local minDist = nil
    local minDistGuid = nil
    local charsAndItems = { Ext.GetCharactersAroundPosition(x, y, z, 15), Ext.GetCharactersAroundPosition(x, y, z, 15)}
    for i=1, #charsAndItems, 1 do
        for j=1,#charsAndItems[i], 1 do
            print(charsAndItems[i][j])
            local dist = GetDistanceToPosition(charsAndItems[i][j], x, y, z)
            print(dist)
            if minDist == nil then
                minDist = dist
            end
            if minDist > dist then
                minDist = dist
                minDistGuid = charsAndItems[i][j]
            end
        end
    end
    Ext.Print(minDistGuid)
    return minDistGuid
end

Ext.RegisterListener("ProjectileHit", function (projectile, hitObject, position)
    local piercingAmmoSkill = "Projectile_Musk_Piercing_Ammo_"
    if projectile == nil or string.sub(projectile.SkillId, 1, #piercingAmmoSkill) == piercingAmmoSkill then return end
    local attacker = Ext.GetGameObject(projectile.CasterHandle)
    local ammoType = GetCharacterAmmoType(attacker.MyGuid)
    if ammoType == Musketeer_Ammo_Statuses[6] and attacker:HasTag("Rifle_Armed") and IsRifleBasedSkill(projectile.SkillId) then
        Ext.Print("Piercing Ammo procced")
        local piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Effect"
        if projectile.SkillId == "Projectile_Rend_The_Marked" then
            piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Rend"
        elseif projectile.SkillId == "Projectile_Tracking_Shot" then
            piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_Tracking"
        elseif projectile.SkillId == "Projectile_Rapidfire" then
            piercingAmmoSkillName = "Projectile_Musk_Piercing_Ammo_RapidFire"
        end
        Ext.Print("hitObject")
        Ext.Print(hitObject)
        Ext.Print(projectile.TargetObjectHandle)
        Ext.Print(projectile.HitObjectHandle)
        local target = nil
        if hitObject ~= nil then
            target = Ext.GetGameObject(hitObject.Handle)
        else
            target = Ext.GetGameObject(projectile.TargetObjectHandle)
        end

        local newX, newY, newZ = GetOverShootPositionFromProjectile(attacker.WorldPos, projectile.Position, 5)
        Ext.Print(newX, newY, newZ)
        Ext.Print(projectile.Position[1])
        Ext.Print(projectile.Position[2])
        Ext.Print(projectile.Position[3])
        Ext.Print(projectile.TargetPosition[1], projectile.TargetPosition[2], projectile.TargetPosition[3])
        --[[
        SetVarFloat3(attacker.MyGuid, "Piercing_TargetLocation2", newX, newY, newZ)
        SetVarFloat3(attacker.MyGuid, "Piercing_OriginLocation2", projectile.Position[1], projectile.Position[2], projectile.Position[3])
        --SetVarObject(attacker.MyGuid, "Piercing_OriginLocation", target.MyGuid)
        SetVarFixedString(attacker.MyGuid, "Piercing_Projectile_Skill2", piercingAmmoSkillName)
        SetStoryEvent(attacker.MyGuid, "Musketeer_Pierce_Ammo_Event2")
        --]
        local origin = {projectile.Position[1], projectile.Position[2], projectile.Position[3]}
        NRD_ProjectilePrepareLaunch()
        NRD_ProjectileSetString("SkillId", "Projectile_Musk_Piercing_Ammo_Effect")
        NRD_ProjectileSetInt("CasterLevel", attacker.Stats.Level)
        --NRD_ProjectileSetGuidString("SourcePosition", projectile.Position)
        --NRD_ProjectileSetVector3("SourcePosition", projectile.Position[1], projectile.Position[2], projectile.Position[3])
        NRD_ProjectileSetVector3("TargetPosition", newX, newY, newZ)
        --NRD_ProjectileSetGuidString("TargetPosition", Sandbox_Market_Ernest_Herringway_da8d55ba-0855-4147-b706-46bbc67ec8b6);
        
        local sourceGuid = Musketeer_Get_Closest_Object_Around_Position(projectile.Position[1], projectile.Position[2], projectile.Position[3])
        if sourceGuid ~= nil then
            --NRD_ProjectileSetGuidString("Source", closeChar)
            NRD_ProjectileSetGuidString("SourcePosition", sourceGuid)
            Ext.Print("sourceObj")
            Ext.Print(sourceGuid)
        else
            NRD_ProjectileSetVector3("SourcePosition", projectile.Position[1], projectile.Position[2], projectile.Position[3])
            Ext.Print("sourceVec3")
        end
        NRD_ProjectileLaunch()
    end
end)
]]