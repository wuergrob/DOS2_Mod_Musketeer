-- TODO

--[[
Refactoring
-----
Code is a absolut mess. Notably:
* Use a shared table for storing reload variant info
* Clean up calls. Too many unnecessary Lua calls from Osiris code.
-----

--]]


DebugMode = false
function DebugPrint(...)
    if DebugMode then
        DebugPrint(...)
    end
end

if Musketeer_Ammo_Skills == nil then
	Musketeer_Ammo_Skills = { test = false }
end

PersistentVars  = {
	HandshakeCompleted = false,
	SkillListLoaded = false,
	HotbarUIInputFocusActive = false,
	PlayerCharacterGUID = "",
	PlayerActiveSkillPreview = false,
	CurrentHotbar = 1,
	HotbarVisible = true,
	AmmoBarEnabled = false,
	PlayerIsInCC = false,
}

function InitPlayerState()
	-- Persistent variables are only available after SessionLoaded is triggered!
	PersistentVars["HandshakeCompleted"] = false
	PersistentVars["SkillListLoaded"] = false
	PersistentVars["HotbarUIInputFocusActive"] = false
	PersistentVars["PlayerCharacterGUID"] = ""
	PersistentVars["PlayerActiveSkillPreview"] = false
	PersistentVars["CurrentHotbar"] = 1
    --DebugPrint("InitPlayerState. Handshake is: " .. PersistentVars["HandshakeCompleted"])
end
Ext.RegisterListener("SessionLoaded", InitPlayerState)


function PrintPlayerState()
	DebugPrint("PlayerState Info:")
	DebugPrint(PersistentVars["HandshakeCompleted"])
	DebugPrint(PersistentVars["SkillListLoaded"])
	DebugPrint(PersistentVars["HotbarUIInputFocusActive"])
	DebugPrint(PersistentVars["PlayerCharacterGUID"])
	DebugPrint(PersistentVars["PlayerActiveSkillPreview"])
	DebugPrint(PersistentVars["CurrentHotbar"])
	DebugPrint(PersistentVars["HotbarVisible"])
	DebugPrint(PersistentVars["AmmoBarEnabled"])
end

function PrintSkillList()
	DebugPrint("SkillList Info:")
	DebugPrint(Musketeer_Ammo_Skills)
	DebugPrint(Musketeer_Ammo_Skills["test"])
	DebugPrint(Musketeer_Ammo_Skills["Shout_Reload"])
	DebugPrint(Musketeer_Ammo_Skills["Target_Unload_Test"])
end

-- Signal that client is ready for rifle skill broadcast
local function Musketeer_Client_Signal_Ready()
	DebugPrint("Client is ready, sending ready signal to server.")
	Ext.PostMessageToServer('clientReady', 1)
end

local function Musketeer_Check_SkillList_Loaded()
	if Musketeer_Ammo_Skills == nil or not Musketeer_Ammo_Skills["test"] == true then
		DebugPrint("[CLIENT] local SkillList is not loaded or does not exist.")
		Musketeer_Client_Signal_Ready()
	end
end

-- Try out positioning by setting x and y directly, as in:
-- x = 200, y = 110 in MainTimeLine.
-- For some reason, doing that by means of ui:SetValue("x", 200) makes the UI position
-- always be the same relative to the other Ui elements.
local function Musketeer_AmmoBar_Init()
    DebugPrint("Musketeer_Open_TestWindow called.")
	local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf",3)
		ui:Hide()
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		DebugPrint("[Musketeer:BootstrapClient.lua] Hiding ammo window.")
		-- Re-register ui id to make it draggable.
		-- ui:ExternalInterfaceCall("registerAnchorId", "AmmoBar")
		ui:Hide()
		ui:Invoke("setAmmoCount", 11)
		--ui:SetPosition(200,70)
	end
	DebugPrint("AmmoBar Initialized.")
end


-- Currently 5 AmmoTypes are implemented:
-- 0: default
-- 1: fire
-- 2: ice
-- 3: shock
-- 4: doom
-- 5: explode
-- 6: piercing
local function Musketeer_AmmoBar_ElementChange(call, value)
	--if value < 0 or value > 5 then
	--	value = 0
	--end
    DebugPrint("Musketeer_AmmoBar_ElementChange called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setAmmoElement", value)
	end
	DebugPrint("AmmoBar Element changed.")
end

-- Preview Ammo Restoration/Ammo Consumption
-- negative value -> consume preview
-- positive value -> restore preview
local function Musketeer_AmmoBar_Difference_Preview(call, value)
	DebugPrint("Musketeer_AmmoBar_Difference_Preview entry")
	DebugPrint("value: " .. value)
	if value ~= nil and type(value) == string then
		DebugPrint("Musketeer_AmmoBar_Difference_Preview converted string to number")
		value = tonumber(value)
	end
    DebugPrint("Musketeer_AmmoBar_Difference_Preview called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil and value ~= 0 then
		DebugPrint("Should be previewing now...")
		ui:Invoke("forceAmmoBarReset")
		if value < 0 then
			ui:Invoke("previewAmmoConsumption", (0 - value))
		else
			ui:Invoke("previewAmmoGain", value)
		end
	end
	DebugPrint("Preview Ammo Difference.")
end


local function Musketeer_AmmoBar_SetAmmo(call, value)
    DebugPrint("Musketeer_AmmoBar_SetAmmo called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setAmmoCount", value)
	end
	DebugPrint("Set Ammo Count.")
end

local function Musketeer_AmmoBar_SetMaxAmmo(call, value)
    DebugPrint("Musketeer_AmmoBar_SetMaxAmmo called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setMaxAmmoCount", value)
	end
	DebugPrint("Set Max Ammo Count.")
end

-- Currently extremely messy because of inconsistent parameter calls. (Some use "0" and "1", and now i also use true and false bools...)
local function Musketeer_AmmoBar_Visibility(call, value)
	if value == "0" or value == false then
		PersistentVars["AmmoBarEnabled"] = false
	elseif value == "1" or value == true then
		PersistentVars["AmmoBarEnabled"] = true
	else
		DebugPrint("Invalid value passed to Musketeer_AmmoBar_Visibility.")
		DebugPrint(value)
	end
	DebugPrint(call)
	DebugPrint(value)
	DebugPrint(type(value))
	--if value ~= nil and type(value) == string then
	--	value = tonumber(value)
	--end
    DebugPrint("Musketeer_AmmoBar_Visibility called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		if value == "0" then
			ui:Hide()
		elseif value == "1" then
			ui:Show()
		else
			DebugPrint("Invalid Value, value should be a Boolean (0 or 1)")
		end
	end
	-- Refactor this, only done this way for testing.
	
	--local hotbarUi = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")

	local characterCreation = Ext.GetBuiltinUI("Public/Game/GUI/characterCreation.swf")
	local doneWithCharacterCreation = true
	if characterCreation ~= nil then
		DebugPrint("[CLIENT DEBUG] characterCreation exists, checking if it's visible:")
		DebugPrint(characterCreation:GetRoot().isFinished)
		doneWithCharacterCreation = characterCreation:GetRoot().isFinished
	end

	local hotbarRoot = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf"):GetRoot()
	local hotbarVisible = true
	if hotbarRoot ~= nil then
		DebugPrint("[CLIENT DEBUG] Hotbar exists, checking if it's visible:")
		DebugPrint(hotbarRoot.visible)
		--hotbarVisible = hotbarRoot.hotbar_mc.isSkillBarShown
		hotbarVisible = hotbarRoot.visible
	end
	--DebugPrint(playerGuid.CurrentLevel)
	if (PersistentVars["HotbarVisible"] == false or hotbarVisible == false or PersistentVars["PlayerIsInCC"] == true) then
		DebugPrint("Not showing AmmoBar, because Hotbar is disabled, or player is in CC.")
		ui:Hide()
		return
	end
	DebugPrint("AmmoBar visibility set")
end

local function Musketeer_Set_Player_CC_State(channel, bool)
	if bool == "1" then bool = true elseif bool == "0" then bool = false end
	if bool == nil then bool = false end
	DebugPrint("[CLIENT DEBUG] Player used Magic Mirror, updating AmmoBar visibility")
	PersistentVars["PlayerIsInCC"] = bool
	Musketeer_AmmoBar_Visibility("Magic Mirror Check", PersistentVars["AmmoBarEnabled"])
end
Ext.RegisterNetListener("playerSetInCC", Musketeer_Set_Player_CC_State)

--- @param force boolean Optional parameter to force a reset, even when the active skill preview is on.
local function Musketeer_Reset_Previews_AmmoBar(force)
	force = force or false
	if PersistentVars["PlayerActiveSkillPreview"] == false and force == false then
		DebugPrint("Musketeer_Reset_AmmoBar called.")
		local ui = Ext.GetUI("AmmoBarGUIv1.swf")
		if ui == nil then
			ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
			DebugPrint("ui was nil, thus looking with relative path.")
		end
		if ui ~= nil then
			ui:Invoke("forceAmmoBarReset")
		end
		DebugPrint("AmmoBar reset.")
	end
end

local function Musketeer_AmmoBar_BreathingMode(call, value)
    DebugPrint("Musketeer_AmmoBar_BreathingMode called.")
	local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		ui:Invoke("setAmmoPrevBreathingMode", value)
	end
	DebugPrint("AmmoBar BreathindMode set.")
end




local function Musketeer_Ammo_Skills_Add(name, val)
	Musketeer_Ammo_Skills[name] = val
	Musketeer_Ammo_Skills["test"] = true
	DebugPrint(Musketeer_Ammo_Skills)
	DebugPrint("Musketeer_Ammo_Skills added entry: ".. name .. " val: ".. val)
	PersistentVars["SkillListLoaded"] = true
end


local function Musketeer_Receive_Rifle_Skill(call, payload)
	--DebugPrint("[Client] Musketeer_Receive_Rifle_Skill called")
	local decoded = Ext.JsonParse(payload)
	if decoded["skillname"] == "Shout_Reload" then
		--DebugPrint("[CLIENT] Client received Shout_Reload and should add it to the Skilllist.")
		decoded["ammocost"] = 11;
	end
	if decoded["skillname"] == "Target_Unload_Test" then
		decoded["ammocost"] = -11;
	end
	Musketeer_Ammo_Skills_Add(decoded["skillname"], decoded["ammocost"])
	--DebugPrint(Musketeer_Ammo_Skills)
end




-- Currently, this doesnt check "Shout_Reload" for some reason.
local function skillCheckForAmmoBarPreview(skill, character, isFromItem, param)
	Musketeer_Check_SkillList_Loaded()
	DebugPrint(skill["Name"])
	local skillName = skill["Name"]

	local amount = Musketeer_Ammo_Skills[skillName]
	DebugPrint(amount)

	if amount ~= nil and type(amount) == string then
		amount = tonumber(amount)
		DebugPrint("converted number from string to number")
	end
	if amount ~= nil and amount ~= 0 then
		DebugPrint("skillCheckForAmmoBarPreview was called. Deprecated, thus no action.")
		--DebugPrint("skillCheckForAmmoBarPreview check here, skill is present and doesn't cost 0");
		--Musketeer_AmmoBar_Difference_Preview(nil, amount)
	end
	DebugPrint("End of skillCheckForAmmoBarPreview")
end
Ext.RegisterListener("SkillGetDescriptionParam", skillCheckForAmmoBarPreview)


local function BuiltInHotbarUIHideToolbar()
	DebugPrint("Hotbar Hide Tooltip event fired.")
	if PersistentVars["HotbarUIInputFocusActive"] == false then
		Musketeer_Reset_Previews_AmmoBar()
	end
end

local function BuiltInHotbarUIShowTooltip(ui, call, arg1, arg2)
	DebugPrint("Hotbar Show Tooltip event fired.")
	if arg1 ~= nil then
		DebugPrint(arg1)
	else
		DebugPrint("[BuiltInHotbarUIShowTooltip]: arg1 was nil.")
	end
	if arg2 ~= nil then
		DebugPrint(arg2)
	else
		DebugPrint("[BuiltInHotbarUIShowTooltip]: arg2 was nil.")
	end
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIStartDragging(ui, call, arg1)
	DebugPrint("Hotbar Start Dragging event fired.")
	DebugPrint(arg1)
	--Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIShowSkillTooltip(ui, call, handler, skillname)
	Musketeer_Check_SkillList_Loaded()
	DebugPrint("Hotbar Show Skill Tooltip event fired.")
	--print(arg1)
	--print(arg2)
	DebugPrint(skillname)
	local skillName = skillname

	local amount = Musketeer_Ammo_Skills[skillName]
	DebugPrint(amount)

	if amount ~= nil and type(amount) == string then
		amount = tonumber(amount)
		DebugPrint("converted number from string to number")
	end
    if amount ~= nil and amount ~= 0 then
		DebugPrint("skillCheckForAmmoBarPreview check here, skill is present and doesn't cost 0");
		Musketeer_AmmoBar_Difference_Preview(nil, amount)
	else
		Musketeer_Reset_Previews_AmmoBar()
	end
	DebugPrint("End of BuiltInHotbarUIShowSkillTooltip")
end

local function BuiltInHotbarUIShowItemTooltip(ui, call, handler, skillname)
	DebugPrint("Hotbar Show Item Tooltip event fired.")
	DebugPrint(handler)
	DebugPrint(skillname)
	PersistentVars["HotbarUIInputFocusActive"] = false
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIInputFocus(ui, call, arg1)
	DebugPrint("Hotbar Focus Input event fired.")
	DebugPrint(arg1)
	PersistentVars["HotbarUIInputFocusActive"] = true
	--Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIInputFocusLost(ui, call, arg1)
	DebugPrint("Hotbar Focus Input Lost event fired.")
	DebugPrint(arg1)
	PersistentVars["HotbarUIInputFocusActive"] = false
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUISelectSlot(ui, call, arg1)
	DebugPrint("Hotbar Slot Selected event fired.")
	DebugPrint(arg1)
end

local function BuiltInHotbarUIUseAction(ui, call, arg1)
	DebugPrint("Hotbar Use Action Event fired.")
	DebugPrint(arg1)
end

local function BuiltInHotbarUISlotUpEnd(ui, call, arg1)
	DebugPrint("----------------------------------")
	DebugPrint("Hotbar UI Slot Up End Event fired.")
	DebugPrint(arg1)
end

local function BuiltInHotbarUIButtonPressed(ui, call, arg1)
	DebugPrint("----------------------------------")
	DebugPrint("Hotbar UI Button Pressed Event fired.")
	DebugPrint(arg1)
end

local function BuiltInHotbarUISlotPressed(ui, call, arg1, arg2)
	DebugPrint("----------------------------------")
	DebugPrint("Hotbar UI Slot Pressed Event fired.")
	DebugPrint(arg1)
	DebugPrint(arg2)
end

-- We will need to send a json string over because we need to pass 2 variables;
-- player and slotNumber.
local function RequestServerSkillbarEntry(index)
	local skillbarRequest = {}
	skillbarRequest["player"] = PersistentVars["PlayerCharacterGUID"]
	skillbarRequest["slotnumber"] = index
	local jsonSkillbarRequest = Ext.JsonStringify(skillbarRequest)
	Ext.PostMessageToServer('skillbar_entry_request', jsonSkillbarRequest)
end

local function ReceiveSkillbarEntry(call, entry)
	DebugPrint("[Client]: Got SkillbarEntry from Server, preview...")
	if PersistentVars["PlayerActiveSkillPreview"] == true then
		BuiltInHotbarUIShowSkillTooltip(nil, nil, nil, entry)
	end
end
Ext.RegisterNetListener("skillbar_entry_answer", ReceiveSkillbarEntry)

local function BuiltInHotbarActiveSkill(ui, call, arg1, index)
	DebugPrint("----------------------------------")
	DebugPrint("Hotbar UI Active Skill Preview.")
	-- NOTE: if index >= 1.0, then activeskil preview is on, else its off.
	DebugPrint(arg1)
	DebugPrint(index)
	DebugPrint("===================================")
	if arg1 >= 0 then
		local hotbarUI = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
		DebugPrint(hotbarUI)

		arg1 = arg1 + (PersistentVars["CurrentHotbar"]-1) * 29
		DebugPrint("Multiplied Skillbar Slot index with current Skillbar index.")
		DebugPrint(arg1)

		PersistentVars["PlayerActiveSkillPreview"] = true
		RequestServerSkillbarEntry(arg1)
	elseif arg1 < 0 then
		PersistentVars["PlayerActiveSkillPreview"] = false
		Musketeer_Reset_Previews_AmmoBar()
	end
end


local function DebugStuffs(ui, event, handle, arg4, arg5)
	DebugPrint("///////////////////////////////////////////")
	local charHandle = Ext.DoubleToHandle(handle)
	local char = Ext.GetCharacter(charHandle)
	DebugPrint(ui)
	DebugPrint(event)
	DebugPrint(handle)
	DebugPrint(charHandle)
	DebugPrint(char.NetID)
	DebugPrint(char.MyGuid)
	DebugPrint(char.Archetype)
	DebugPrint(char.CurrentLevel)
	DebugPrint(char.OwnerHandle)
	DebugPrint(char)
	DebugPrint(arg4)
	DebugPrint(arg5)
end

local function DebugStuffs2(ui, event, handle, arg4, arg5)
	DebugPrint("Client Context Switch")
	--DebugPrint(Ext.HandleToDouble(param1))
	local charHandle = Ext.DoubleToHandle(handle)
	local char = Ext.GetCharacter(charHandle)
	DebugPrint(charHandle)
	DebugPrint(char)
	DebugPrint(char.GetTags(char)[1])
	DebugPrint(char.GetTags(char)[2])
	DebugPrint(char.GetTags(char)[3])
	DebugPrint("Sending payload: " .. char.MyGuid)
	Ext.PostMessageToServer('clientContextSwitch', char.MyGuid)
end

local function SetCurrentHotbar(ui, event, index)
	DebugPrint("Current Hotbar switched")
	DebugPrint(index)
	PersistentVars["CurrentHotbar"] = index
end

local function Musketeer_AmmoBar_Visibility_Hotbar(ui, event, handle)
	DebugPrint(event)
	DebugPrint(handle)
	if (type(handle) == "boolean") then
		PersistentVars["HotbarVisible"] = handle
	end
	Musketeer_AmmoBar_Visibility(nil, PersistentVars["AmmoBarEnabled"])
end

local function RegisterBuiltInUIListeners() 
	-- Listen to the hotbar for when the sheet opens
	local hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
	local tooltip = Ext.GetBuiltinUI("Public/Game/GUI/tooltip.swf")
	if hotbar ~= nil then
		Ext.RegisterUICall(hotbar, "hideTooltip", BuiltInHotbarUIHideToolbar)
		Ext.RegisterUICall(hotbar, "showTooltip", BuiltInHotbarUIShowTooltip)
		Ext.RegisterUICall(hotbar, "startDragging", BuiltInHotbarUIStartDragging)
		Ext.RegisterUICall(hotbar, "showSkillTooltip", BuiltInHotbarUIShowSkillTooltip)
		Ext.RegisterUICall(hotbar, "showItemTooltip", BuiltInHotbarUIShowItemTooltip)
		Ext.RegisterUICall(hotbar, "inputFocus", BuiltInHotbarUIInputFocus)
		Ext.RegisterUICall(hotbar, "inputFocusLost", BuiltInHotbarUIInputFocusLost)
		Ext.RegisterUICall(hotbar, "IE UISelectSlot", BuiltInHotbarUISelectSlot)
		Ext.RegisterUICall(hotbar, "useAction", BuiltInHotbarUIUseAction)
		Ext.RegisterUICall(hotbar, "slotUpEnd", BuiltInHotbarUISlotUpEnd)
		Ext.RegisterUICall(hotbar, "hotbarBtnPressed", BuiltInHotbarUIButtonPressed)
		Ext.RegisterUICall(hotbar, "SlotPressed", BuiltInHotbarUISlotPressed, "IsOnCooldown")
		Ext.RegisterUICall(hotbar, "showCharTooltip", DebugStuffs2)

		if tooltip ~= nil then
			Ext.Print("Tooltip.swf is not nil")
			Ext.RegisterUICall(tooltip, "showCharTooltip", DebugStuffs2)
		end
		
		Ext.RegisterUIInvokeListener(hotbar, "setCurrentHotbar", SetCurrentHotbar)
		Ext.RegisterUIInvokeListener(hotbar, "setPlayerHandle", DebugStuffs2)
		Ext.RegisterUIInvokeListener(hotbar, "showSkillBar", Musketeer_AmmoBar_Visibility_Hotbar)
		

		
		Ext.RegisterUIInvokeListener(hotbar, "showActiveSkill", BuiltInHotbarActiveSkill)
		--Ext.RegisterUICall(hotbar, "PlaySound", BuiltInHotbarUIPlaySound)
		DebugPrint("[Musketeer:RegisterBuiltInUIListeners] Found (hotBar.swf). Registered listeners.")
	else
		DebugPrint("[Musketeer:RegisterBuiltInUIListeners] Failed to find Public/Game/GUI/hotBar.swf")
	end
end
Ext.RegisterListener("SessionLoaded", RegisterBuiltInUIListeners)


--- Registers a listener that is called when a network message is received on the specified channel
--- @param channel string Network channel name
--- @param handler function Lua handler
Ext.RegisterNetListener("Musketeer_SetAmmo_AmmoBar_UI", Musketeer_AmmoBar_SetAmmo)
Ext.RegisterNetListener("Musketeer_SetMaxAmmo_AmmoBar_UI", Musketeer_AmmoBar_SetMaxAmmo)
Ext.RegisterNetListener("Musketeer_Preview_AmmoBar_UI", Musketeer_AmmoBar_Difference_Preview)
Ext.RegisterNetListener("Musketeer_Element_AmmoBar_UI", Musketeer_AmmoBar_ElementChange)
Ext.RegisterNetListener("Musketeer_Set_AmmoBar_UI", Musketeer_AmmoBar_Visibility)
Ext.RegisterNetListener("Musketeer_Init_AmmoBar_UI", Musketeer_AmmoBar_Init)
Ext.RegisterNetListener("Musketeer_Reset_AmmoBar_UI", Musketeer_Reset_Previews_AmmoBar)
Ext.RegisterNetListener("Musketeer_AmmoBar_BreathingMode", Musketeer_AmmoBar_BreathingMode)
Ext.RegisterNetListener("Musketeer_Rifle_Skill", Musketeer_Receive_Rifle_Skill)

--Ext.RegisterListener("StatsLoaded", Musketeer_Client_Signal_Ready)
--Ext.RegisterListener("ModuleResume", Musketeer_Client_Signal_Ready)



local function ReceiveServerOffer(call, player, arg1)
	Ext.PostMessageToServer('clientAck', player)
	PersistentVars["HandshakeCompleted"] = true
	-- Not a clean solution, but didn't find out how else to get char GUID from a player locally.
	-- This probably doesn't persist switching out character from your team.
	PersistentVars["PlayerCharacterGUID"] = player
	DebugPrint("[Client] Player: " .. player .. " got Server message.")
	--DebugPrint("[Client] Debugstuff:")
	--DebugPrint(call)
	--DebugPrint(handler)
	--DebugPrint(player)
end
Ext.RegisterNetListener("Musketeer_SendHello", ReceiveServerOffer)

local function SetClientContext(call, player)
	DebugPrint("[Client] Updated Client CharacterGUID")
	DebugPrint(player)
	PersistentVars["PlayerCharacterGUID"] = player
end
Ext.RegisterNetListener("Musketeer_SetClientContext", SetClientContext)

local function ReceiveServerRequest(channel, player)
	DebugPrint("[CLIENT] Received ServerRequest and I am: " .. player)
	PersistentVars["PlayerCharacterGUID"] = player
	PersistentVars["HandshakeCompleted"] = true
	Ext.PostMessageToServer('clientReady', player)
	Musketeer_AmmoBar_Init();
end
Ext.RegisterNetListener("requestClient", ReceiveServerRequest)


-- Keeping this, will perhaps do this at a later stage.
local function Reload_Override_DescriptionParams(status, statusSource, character, param)
	if status.Name ~= "RELOAD_INCENDIARY" then return end
	DebugPrint("[CLIENT] Reload Override Description Params with param: " .. param)
	if status.Name == "RELOAD_INCENDIARY" then
        if true then
            return "blabla"
        else
            return "no"
        end
    end
end
--Ext.RegisterListener("StatusGetDescriptionParam", Reload_Override_DescriptionParams)



local function Musketeer_Refresh_Hotbar()
	DebugPrint("[CLIENT] Custom Refresh Hotbar called")
	local hotbarUI = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
	if hotbarUI ~= nil then
		hotbarUI:ExternalInterfaceCall("updateSlots", hotbarUI:GetValue("maxSlots", "number"))
	end
end
Ext.RegisterNetListener("Client_Refresh_Hotbar", Musketeer_Refresh_Hotbar)


-- Experimental Tooltip Handling for displaying correct Rifle-Weapon Names
local function SetTooltipHandler(arg1, ...)
	--Ext.Print("addFormattedTooltip being called")
	local tooltip_array = arg1:GetRoot().tooltip_array
	local tooltip_compare_array = arg1:GetRoot().tooltipCompare_array
	local isRifle = false

	-- Normal Tooltip
	if tooltip_array[1] ~= nil and type(tooltip_array[1]) == "string" and #tooltip_array <= 20 then
		-- Unidentified Item
		local unidentifiedName = ""
		if type(tooltip_array[14]) == "string" and string.sub(tooltip_array[14], 0, 19) == "Featuring a smaller" then
			unidentifiedName = "Blunderbuss"
		elseif type(tooltip_array[14]) == "string" and string.sub(tooltip_array[14], 0, 21) == "Impressive yet clunky" then
			unidentifiedName = "Musket"
		elseif type(tooltip_array[14]) == "string" and (string.sub(tooltip_array[14], 0, 16) == "The exact origin" or string.sub(tooltip_array[10], 0, 16) == "I'm the only one") then
			unidentifiedName = "Matchlock"
		end
		if unidentifiedName ~= "" then
			local newName = string.gsub(tooltip_array[1], "Unidentified Crossbow", "Unidentified "..unidentifiedName)
			arg1:GetRoot().tooltip_array[1] = newName
			isRifle = true
		end

		
	else
		-- Identified Item
		local rifleName = ""
		for i=1, #tooltip_array do
			if tooltip_array[i] == "Range" and tooltip_array[i+2] == "4m" then
				rifleName = "Blunderbuss"
			elseif tooltip_array[i] == "Range" and tooltip_array[i+2] == "8m" then
				rifleName = "Matchlock"
			elseif tooltip_array[i] == "Range" and tooltip_array[i+2] == "10m" then
				rifleName = "Musket"
			end

			if tooltip_array[i] == "Crossbow" and rifleName ~= "" then
				arg1:GetRoot().tooltip_array[i] = rifleName
				isRifle = true
			end
		end
	end

	-- If no comparison is being made and compare array is empty, then do nothing
	--if tooltip_compare_array == nil then return end

	-- Compare Tooltip
	if tooltip_compare_array[1] ~= nil and type(tooltip_compare_array[1]) == "string" and #tooltip_compare_array <= 20 then
		-- Unidentified Item
		local unidentifiedName = ""
		if type(tooltip_compare_array[14]) == "string" and string.sub(tooltip_compare_array[14], 0, 19) == "Featuring a smaller" then
			unidentifiedName = "Blunderbuss"
		elseif type(tooltip_compare_array[14]) == "string" and string.sub(tooltip_compare_array[14], 0, 21) == "Impressive yet clunky" then
			unidentifiedName = "Musket"
		elseif type(tooltip_compare_array[14]) == "string" and (string.sub(tooltip_compare_array[14], 0, 16) == "The exact origin" or string.sub(tooltip_compare_array[10], 0, 16) == "I'm the only one") then
			unidentifiedName = "Matchlock"
		end
		if unidentifiedName ~= "" then
			local newName = string.gsub(tooltip_compare_array[1], "Unidentified Crossbow", "Unidentified "..unidentifiedName)
			arg1:GetRoot().tooltipCompare_array[1] = newName
		end
	else
		--Ext.Print("Identified Item")
		-- Identified Item
		local rifleName = ""
		for i=1, #tooltip_compare_array do
			if tooltip_compare_array[i] == "Range" and tooltip_compare_array[i+2] == "4m" then
				rifleName = "Blunderbuss"
			elseif tooltip_compare_array[i] == "Range" and tooltip_compare_array[i+2] == "8m" then
				rifleName = "Matchlock"
			elseif tooltip_compare_array[i] == "Range" and tooltip_compare_array[i+2] == "10m" then
				rifleName = "Musket"
			end

			if tooltip_compare_array[i] == "Crossbow" and rifleName ~= "" then
				arg1:GetRoot().tooltipCompare_array[i] = rifleName
			end
		end
	end

	-- Rename "Number of Charges" to "Ammunition"
	if isRifle then
		for i = 1, #tooltip_array do
			--Ext.Print("Index: " .. i)
			--Ext.Print(tooltip_array[i])
			if tooltip_array[i] == "Number of uses" then
				arg1:GetRoot().tooltip_array[i] = "Ammunition:"
			elseif tooltip_array[i] == "Item is out of charges<br>" then
				arg1:GetRoot().tooltip_array[i] = "Weapon is out of Ammunition and needs to be reloaded"
			end
		end

		for i = 1, #tooltip_compare_array do
			--Ext.Print(tooltip_compare_array[i])
			--Ext.Print("Index: " .. i)
			--Ext.Print(tooltip_array[i])
			if tooltip_compare_array[i] == "Number of uses" then
				arg1:GetRoot().tooltipCompare_array[i] = "Ammunition:"
			elseif tooltip_compare_array[i] == "Item is out of charges<br>" then
				arg1:GetRoot().tooltipCompare_array[i] = "Weapon is out of Ammunition and needs to be reloaded"
			end
		end
	end
end
Ext.RegisterUINameInvokeListener("addFormattedTooltip", SetTooltipHandler)


local function setCompareTooltipHandler(arg1, ...)
	Ext.Print("Compare Tooltip stuff")
	Ext.Print(arg1)
	local args = (...)
	for i=1, #args do
		Ext.Print(args[i])
	end

end
--Ext.RegisterUINameInvokeListener("addCompareTooltip", setCompareTooltipHandler)
-- NOTE ON TALENTS:
-- characterSheet.swf Maintimeline has a "addTalent" function.
-- Adding a talent with a "statid" out of bounds crashes the game. (Out of bounds means, "statid" is higher than max enum value here https://docs.larian.game/Scripting_talent_types)
-- Script extender has a Game.Tooltip library, maybe this can be used to add more talents.

-- print(Ext.GetCharacter("ad9a3327-4456-42a7-9bf4-7ad60cc9e54f").Stats.TALENT_Bully) works server side.


--[[

For talent_array formatting, consider this snippet from the extender discord:

local function SessionLoaded()
    Ext.RegisterUINameInvokeListener("updateArraySystem", function(ui, call, ...)
        --PrintArray(ui, "tags_array")
        local i = GetArrayIndexStart(ui, "talent_array", 1)
        ui:SetValue("talent_array", "Undead", i)
        ui:SetValue("talent_array", Data.TalentEnum.Zombie, i+1)
        ui:SetValue("talent_array", 0, i+2)
        ui:SetValue("talent_array", "Corpse Eater", i+3)
        ui:SetValue("talent_array", Data.TalentEnum.Elf_CorpseEating, i+4)
        ui:SetValue("talent_array", 0, i+5)
        PrintArray(ui, "talent_array")
    end)
end

Ext.RegisterListener("SessionLoaded", SessionLoaded)


Also, use the following to reset the Lua VM (In server context):
NRD_LuaReset(1,1,1)



--- Concerning updating the Hotbar for refreshing Skill Requirements:

Three functions exist, that could possibly refresh the skills:


      public function updateSlots() : *
      {
         this.hotbar_mc.slotholder_mc.updateSlots();
      }

      public function updateSlotData() : *
      {
         this.hotbar_mc.slotholder_mc.updateSlotData();
      }

      public function updateActionSkills() : *
      {
         this.actionSkillHolder_mc.update(this.actionSkillArray);
      }



	  "updateSlotData" is most probably the correct one.
]]

