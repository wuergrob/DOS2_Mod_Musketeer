
if PlayerTable == nil then
    PlayerTable = {}
end

Musketeer_Ammo_Statuses = {
    "RELOAD_INCENDIARY",
    "RELOAD_FREEZING",
    "RELOAD_SILVER",
    "RELOAD_HOLY",
    "RELOAD_EXPLOSIVE",
    "RELOAD_INCENDIARY",
}

Musketeer_Reload_Skill_Variants = {
    "Shout_Reload_Incendiary",
    "Shout_Reload_Explosive",
    "Shout_Reload_Freezing",
    "Shout_Reload_Silver",
    "Shout_Reload_Holy",
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
    print("Sending skill: " .. name .. " with cost: " .. cost)
    print('Json: '.. concatJson)
    --cost = tonumber(cost)
    Ext.BroadcastMessage("Musketeer_Rifle_Skill", concatJson)
end
--Ext.NewCall(Musketeer_Broadcast_Rifle_Skill, "NRD_Broadcast_Rifle_Skill", "(STRING)_Channel, (STRING)_Skillname, (INTEGER)_Ammocost");

local function consoleCmd(cmd, a1, a2)
	if cmd == "setPos" and a1 ~= nil and a1 ~= nil then
		local ui = Ext.GetUI("AmmoBarGUIv1.swf")
		if (ui == nil) then print("Ammobar was nil, reposition failed.") end
		ui:SetPosition(a1,a2)
		print("Ammobar x: " .. a1 ..", y: " .. a2)
    end
    print("Console executed stuff.")
end


--Ext.RegisterListener("ConsoleCommand", consoleCmd)

-- Using Broadcast instead of sending to a specific player, simply because
-- there are no negative effects of doing so.
local function Musketeer_Send_Rifle_Skill_2(call, payload, player)
    print("[SERVER] Broadcasting Skill-List")
    local rows = Osi.DB_Musketeer_Skillist:Get(nil, nil)
    --print(rows)
    for k,v in pairs(rows) do
        local concat = {}
         print(k,v)
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
            print("[SERVER] DEBUG RELOAD: Server retrieved Reload from the DB and is sending it...")
         end
         local concatJson = Ext.JsonStringify(concat)
         --print(concatJson)
         Ext.BroadcastMessage("Musketeer_Rifle_Skill", concatJson)
    end
    -- Special handling of Reload variants. Should be refactored once PoC is done.
    for i,skill in pairs(Musketeer_Reload_Skill_Variants) do
        local concat = {}
        concat["skillname"] = skill
        concat["ammocost"] = 11
        print("[SERVER] Sending Special Reload: " .. skill)
        Ext.BroadcastMessage("Musketeer_Rifle_Skill", Ext.JsonStringify(concat))
    end
end
Ext.RegisterNetListener('clientReady', Musketeer_Send_Rifle_Skill_2)

local function MusketeerSendHello(channel, player)
    Ext.PostMessageToClient(player, "Musketeer_SendHello", player)
    print("Trying to reach " .. player)
end
Ext.NewCall(MusketeerSendHello, "NRD_InitPlayer", "(STRING)_Channel, (CHARACTERGUID)_Character");

local function Musketeer_Ack_Player_Ready(call, player)
    Osi.Musketeer_Client_Is_Initialized(player)
    print(player .. " is initialized.")
    --print("Testithing:")
    --print(randarg)
    Musketeer_Send_Rifle_Skill_2(call, nil, player)
end
Ext.RegisterNetListener('clientAck', Musketeer_Ack_Player_Ready)


-- Used to preview active skill ammo requirements.
-- BUG: Only fetches skills from the first skillbar.
local function Musketeer_Retrieve_Skillbar_Entry(channel, payload)
    local decoded = Ext.JsonParse(payload)
    local player = decoded["player"]
    local slotIndex = decoded["slotnumber"]
    --print("[SERVER] Debug Skillbar Request")
    --print("player: " .. player)
    --print("index: ")
    --print(slotIndex)

    print(player)
    if slotIndex ~= nil and type(slotIndex) == string then
		slotIndex = tonumber(slotIndex)
	end
    --print(slotIndex)

    local entry = NRD_SkillBarGetSkill(player, slotIndex)
    --print("[Server]: Retrieved " .. entry .. " from Skillbar.")
    if (entry == nil) then
        print("[SERVER] Musketeer_Retrieve_Skillbar_Entry, entry was nil")
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
        print("Welcome " .. player)
    end
    Osi.Musketeer_Force_Init();
    print("Forcing Initialization from LUA")
end
]]
local function InitPlayerTable()
    for i,player in  ipairs(Osi.DB_IsPlayer:Get(nil)) do
        PlayerTable[player[1]] = false
        print("Added " .. player[1] .. "to PlayerTable.")
        Ext.PostMessageToClient(player[1], "requestClient", player[1])
    end
    print("[SERVER] PlayerTable is initialized.")
end
--Ext.RegisterListener('SessionLoaded', InitPlayerTable)
--Ext.RegisterNetListener('StatsLoaded', InitPlayerTable)



local function ReceivePlayerState(channel, player)
    if PlayerTable[player] == false then
        PlayerTable[player] = true
        print("[SERVER] Added Player to PlayerTable (set to true).")
    else
        print("[SERVER] Player was not registered in Playertable.")
    end
end
Ext.RegisterNetListener('clientReady', ReceivePlayerState)

local function GameStartedEvent()
    InitPlayerTable()
    print("[SERVER] GameStartedEvent")
end
Ext.NewCall(GameStartedEvent, "NRD_GameStarted", "");


-- Get the full player character string from the provided GUID.
local function GetFullPlayerCharacterHandle(characterGUID)
    for i,player in  ipairs(Osi.DB_IsPlayer:Get(nil)) do
        local char = Ext.GetCharacter(player[1])
        print("GUID from DB: " .. player[1])
        print("ExtCharacter: " .. tostring(char))
        if char.MyGuid == characterGUID then
            return player[1]
        end
    end
    print("Character not found.")
    return nil
end

-- return index value of current ammo type, return 0 if default ammo type is being used.
local function GetCharacterCurrentAmmoType(charHandle)
    for i,status in pairs(Musketeer_Ammo_Statuses) do
        --print(i)
        --print(status)
        if HasActiveStatus(charHandle, status) == 1 then
            return i
        end
    end
    return 0
end

-- Just for testing, sending seperate messages for each variable, but should probably be refactored into sending a single json string.
local function ReceiveClientContextSwitch(call, charHandle)
    print("[SERVER] ReceiveClientContextSwitch, receives ClientContextSwitch Signal")
    local getChar = GetFullPlayerCharacterHandle(charHandle)
    print("Comparing input and return value: ")
    print(charHandle)
    print(getChar)
    local charWPN = CharacterGetEquippedWeapon(getChar)
    print(charWPN)
    Ext.PostMessageToClient(charHandle, "Musketeer_SetClientContext", getChar)
    -- If a character is unarmed, charWPN is nil.
    if charWPN == nil then
        Ext.PostMessageToClient(charHandle, "Musketeer_Set_AmmoBar_UI", "0")
        return
    end
    local maxAmmo = ItemGetMaxCharges(charWPN)
    print(maxAmmo)
    local currentAmmo = ItemGetCharges(charWPN)
    print(currentAmmo)
    local ammoTypeIndex = GetCharacterCurrentAmmoType(charHandle)
    Ext.PostMessageToClient(charHandle, "Musketeer_Element_AmmoBar_UI", ammoTypeIndex)
    Ext.PostMessageToClient(charHandle, "Musketeer_Set_AmmoBar_UI", "0")
    if maxAmmo == -1 and currentAmmo == -1 then
        Ext.PostMessageToClient(charHandle, "Musketeer_Set_AmmoBar_UI", "0")
    else
        Ext.PostMessageToClient(charHandle, "Musketeer_Set_AmmoBar_UI", "1")
    end
    Ext.PostMessageToClient(charHandle, "Musketeer_SetMaxAmmo_AmmoBar_UI", maxAmmo)
    Ext.PostMessageToClient(charHandle, "Musketeer_SetAmmo_AmmoBar_UI", currentAmmo)
    
end
Ext.RegisterNetListener('clientContextSwitch', ReceiveClientContextSwitch)


local function Musketeer_GetRandomPosAround(X, Y, Z, Distance)
    local newX = X + ((math.random() - 0.5) * (Distance / 3))
    local newY = Y + ((math.random() - 0.5) * (Distance / 3))
    local newZ = Z + ((math.random() - 0.5) * (Distance / 3))
    --print("X: " .. tostring(X) .. " newX: " .. tostring(newX) .. " Delta: " .. (X - newX))
    --print("Y: " .. tostring(Y) .. " newY: " .. tostring(newY) .. " Delta: " .. (Y - newY))
    --print("Z: " .. tostring(Z) .. " newZ: " .. tostring(newZ) .. " Delta: " .. (Z - newZ))
    --print("Max. Radius around Target (m): " .. (Distance/3))
    return newX, newY, newZ
end
Ext.NewQuery(Musketeer_GetRandomPosAround, "NRD_Musketeer_Get_Random_Pos", "[in](REAL)_X, [in](REAL)_Y, [in](REAL)_Z, [in](REAL)_Distance, [out](REAL)_newX, [out](REAL)_newY, [out](REAL)_newZ");

-- Temporarily using a bool to check if the Override already occured, because multiple Listeners use this callback.
-- According to Documentation, "StatsLoaded" should be used for Stat overriding, but this event never triggeres when testing
-- in the Editor. TODO: Test ingame and remove unnecessary event callbacks.
Overridden = false
local function OverrideSkillRequirements()
    if (Overridden == true) then print("Skill Requirement Override already done.") return end
    local appendNoRifleRequirement = {Not = true, Param = "Rifle_Armed", Requirement = "Tag"}
    local projectileString = "Projectile"
    print("====================================================")
    print("[SERVER] OverrideSkillRequirements")
    for i,name in pairs(Ext.GetStatEntries("SkillData")) do
        -- Filter out any non-Projectile/non-ProjectileStrike skills. (Reactive Shot and Elemental Arrowhead are intentionally not being "patched")
        if name ~= nil and string.sub(name, 1, string.len(projectileString)) == projectileString then

            for j, entry in pairs(Musketeer_Vanilla_Huntsman_Override) do
                if name == entry then
                    print(name)
                    local skillRequirements = Ext.StatGetAttribute(name, "Requirements")

                    -- Check if the "!Rifle_Armed" tag requirement is already set.
                    local hasRequirement = false
                    for RequirementsIndex = 1,rawlen(skillRequirements),1 do
                        print(skillRequirements[RequirementsIndex])
                        if skillRequirements[RequirementsIndex].Param == "Rifle_Armed" then
                            hasRequirement = true
                            print("noRifle tag Requirement already exists.")
                        end
                    end
                    -- Append the "!Rifle_Armed" tag requirement without overriding other requirements.
                    if hasRequirement == false then
                        skillRequirements[rawlen(skillRequirements)+1] = appendNoRifleRequirement
                        Ext.StatSetAttribute(name, "Requirements", skillRequirements)
                        print("noRifle tag Requirement appended.")
                    end
                end
            end
        end
    end
    Overridden = true
    print("Donso.")
end
Ext.RegisterListener("StatsLoaded", OverrideSkillRequirements)
Ext.RegisterListener("SessionLoading", OverrideSkillRequirements)