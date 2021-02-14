Ext.Require("BootstrapShared.lua")

SplitScreenMode = false



Ext.RegisterUITypeCall (59, "setAnchor", function (ui, anchor, pos, screen, pos2)
	--Ext.Print(ui, anchor, pos, screen, pos2)
	--ExternalInterface.call("setAnchor","bottom","splitscreen","bottom");
	if screen == "splitscreen" and not SplitScreenMode then
		Ext.Print("Splitscreen mode detected.")
		SplitScreenMode = true
	end
end, "Before")




function Musketeer_AmmoBar_InitPosition(ui, controllerMode)
	if ui == nil then
		Ext.PrintWarning("Error during AmmoBar initial positioning, ui parameter is nil.")
		return
	end
	if controllerMode and not SplitScreenMode then
		ui:GetRoot().ammocounter_inst.x = 70
		ui:GetRoot().ammocounter_inst.y = 883
	elseif controllerMode and SplitScreenMode then
		ui:ExternalInterfaceCall("setAnchor","bottom","splitscreen","bottom")
		ui:GetRoot().ammocounter_inst.x = 1160
		ui:GetRoot().ammocounter_inst.y = 735
		ui:GetRoot().ammocounter_inst.scaleX = 0.7
		ui:GetRoot().ammocounter_inst.scaleY = 0.7
	end
end


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
	WeaponExMasteries = {},
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


Ext.RegisterUINameInvokeListener ("setPlayerHandle", function (ui, handle)
	--Ext.Print("SetPlayerHandle")
	if Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf") ~= nil then
		PersistentVars["PlayerCharacterGUID"] = Ext.GetCharacter(Ext.DoubleToHandle(Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf"):GetRoot().hotbar_mc.characterHandle))
	elseif Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf") ~= nil then
		PersistentVars["PlayerCharacterGUID"] = Ext.GetCharacter(Ext.DoubleToHandle(Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf"):GetRoot().characterHandle))
	end
end, "Before")




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

-- msgBox_c = UITypeId 75
local function Musketeer_Create_AmmoBar()
	local ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf",3)
	if (Ext.GetBuiltinUI("Public/Game/GUI/msgBox_c.swf") or Ext.GetUIByType(75)) ~= nil then
		Ext.Print("[Musketeer] Controller mode detected.")
		--ui:SetValue("y", -300.0)
		--ui:SetPosition(-280, 60)
		--ui:GetRoot().ammocounter_inst.x = 70
		--ui:GetRoot().ammocounter_inst.y = 883
		Musketeer_AmmoBar_InitPosition(ui, true)
	end
	return ui
end

-- Try out positioning by setting x and y directly, as in:
-- x = 200, y = 110 in MainTimeLine.
-- For some reason, doing that by means of ui:SetValue("x", 200) makes the UI position
-- always be the same relative to the other Ui elements.
local function Musketeer_AmmoBar_Init()
    DebugPrint("Musketeer_Open_TestWindow called.")
	local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Musketeer_Create_AmmoBar()
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
		ui = Musketeer_Create_AmmoBar()
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setAmmoElement", value)
	end
	DebugPrint("AmmoBar Element changed.")
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
		ui = Musketeer_Create_AmmoBar()
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		if value == "0" then
			ui:Hide()
		elseif value == "1" then
			ui:Show()
			if (Ext.GetBuiltinUI("Public/Game/GUI/msgBox_c.swf") or Ext.GetUIByType(75)) ~= nil then
				--ui:SetPosition(-280, 60)
				--ui:GetRoot().ammocounter_inst.x = 70
				--ui:GetRoot().ammocounter_inst.y = 883
				Musketeer_AmmoBar_InitPosition(ui, true)
			end
			--ui:SetValue("y", -300.0)
			--ui:SetPosition(-280, 60)
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
	local hotbarRoot = nil
	if Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf") ~= nil then
		hotbarRoot = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf"):GetRoot()
	elseif Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf") ~= nil then
		hotbarRoot = Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf"):GetRoot()
	end
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
		ui = Musketeer_Create_AmmoBar()
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
		ui = Musketeer_Create_AmmoBar()
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
		ui = Musketeer_Create_AmmoBar()
		DebugPrint("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setMaxAmmoCount", value)
	end
	DebugPrint("Set Max Ammo Count.")
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
			ui = Musketeer_Create_AmmoBar()
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
		ui = Musketeer_Create_AmmoBar()
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

local function BuiltInHotbarUIShowSkillTooltip_Special(ui, call, handler, skillname)

	Musketeer_Check_SkillList_Loaded()
	DebugPrint("Hotbar Show Skill Tooltip event fired.")
	--print(arg1)
	--print(arg2)
	DebugPrint(skillname)
	local message = {PersistentVars["PlayerCharacterGUID"], skillname}
	Ext.PostMessageToServer("Musketeer_Request_AmmoCost_Single_Skill", Ext.JsonStringify(message))
end

local function BuiltInHotbarUIShowSkillTooltip_Special_ReceiveCost(call, amount)
	--amount = string.format("%s", amount)
	--Ext.Print(amount)
	--Ext.Print(type(amount))
	amount = math.tointeger(amount)
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
Ext.RegisterNetListener("Musketeer_Answer_AmmoCost_Single_Skill", BuiltInHotbarUIShowSkillTooltip_Special_ReceiveCost)

local function BuiltInHotbarUIShowSkillTooltip_Special_Fire_Up_ReceiveCost(call, amount)
	--amount = string.format("%s", amount)
	--Ext.Print(amount)
	--Ext.Print(type(amount))
	amount = math.tointeger(amount)
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
Ext.RegisterNetListener("Musketeer_Blunderbuss_Fire_Up_AmmoRefund", BuiltInHotbarUIShowSkillTooltip_Special_Fire_Up_ReceiveCost)

local function BuiltInHotbarUIShowSkillTooltip(ui, call, handler, skillname)
	

	-- Trying to add dynamic ammo costs, so adding a second handler for now.
	--if skillname == "Projectile_Tracking_Shot" then BuiltInHotbarUIShowSkillTooltip_Special(ui, call, handler, skillname) return end
	if skillname == "Shout_Musk_Blunderbuss_Mastery_Fire_Up" then BuiltInHotbarUIShowSkillTooltip_Special(ui, call, handler, skillname) return end

	Musketeer_Check_SkillList_Loaded()
	DebugPrint("Hotbar Show Skill Tooltip event fired.")
	--print(arg1)
	--print(arg2)
	DebugPrint(skillname)
	local amount = Musketeer_Ammo_Skills[skillname]
	DebugPrint(amount)
	--Ext.Print(amount)
	--Ext.Print(type(amount))

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

local function ReceiveSkillbarEntryAndUpdate(call, message)
	local messageTable = Ext.JsonParse(message)
	local entry = messageTable[1]
	local cost = messageTable[2]
	Musketeer_Ammo_Skills[entry] = cost
	DebugPrint("[Client]: Got SkillbarEntry (UPDATE) from Server, preview...")
	if PersistentVars["PlayerActiveSkillPreview"] == true then
		BuiltInHotbarUIShowSkillTooltip(nil, nil, nil, entry)
	end
end
Ext.RegisterNetListener("skillbar_entry_answer_update_cost", ReceiveSkillbarEntryAndUpdate)




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
		local maxSlots = 29
		if hotbarUI == nil then
			local hotbarUI_c = Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf")
			if hotbarUI_c ~= nil and hotbarUI_c:GetRoot().slotAmount > 0 then
				maxSlots = hotbarUI_c:GetRoot().slotAmount
			end
		end

		arg1 = arg1 + (PersistentVars["CurrentHotbar"]-1) * maxSlots
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
	--Ext.Print(char)
	--Ext.Print(charHandle)
	--Ext.Print(char.NetID)
	--Ext.Print(char.UserID)
	--Ext.Print(char.MyGuid)
	DebugPrint(charHandle)
	DebugPrint(char)
	DebugPrint(char.GetTags(char)[1])
	DebugPrint(char.GetTags(char)[2])
	DebugPrint(char.GetTags(char)[3])
	if nil == char.MyGuid then 
		--Ext.Print("Sending payload (NetID)")
		Ext.PostMessageToServer('clientContextSwitch', char.NetID)
	else
		--Ext.Print("Sending MyGuid")
		--Ext.Print("Sending payload: " .. char.MyGuid)
		Ext.PostMessageToServer('clientContextSwitch', char.MyGuid)
	end
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
	local hotbar = nil
	if Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf") ~= nil then
		hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
	elseif Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf") ~= nil then
		hotbar = Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf")
	end
	--local hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
	local tooltip = Ext.GetBuiltinUI("Public/Game/GUI/tooltip.swf")
	local GMPanelHUD = Ext.GetBuiltinUI("Public/Game/GUI/GM/GMPanelHUD.swf")
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
		Ext.RegisterUICall(hotbar, "showCharTooltip", DebugStuffs2)

		if tooltip ~= nil then
			--Ext.Print("Tooltip.swf is not nil")
			Ext.RegisterUICall(tooltip, "showCharTooltip", DebugStuffs2)
		end
		
		if GMPanelHUD ~= nil then
			--Ext.Print("GMPanelHUD.swf is not nil")
			--Ext.RegisterUICall(tooltip, "showCharTooltip", DebugStuffs2)
			--Ext.RegisterUICall(GMPanelHUD, "hideTooltip", function () Musketeer_AmmoBar_Visibility("GM Disable AmmoBar", 0) end)
			--Ext.RegisterUICall(GMPanelHUD, "possess", function () Ext.Print("Posess") end)
			Ext.RegisterUIInvokeListener (GMPanelHUD, "showTargetBar", function (...)  Musketeer_AmmoBar_Visibility("GM Disable AmmoBar", 0) end)
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
	local hotbarUI = nil
	local msg = 29
	if Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf") ~= nil then
		hotbarUI = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
		msg = hotbarUI:GetValue("maxSlots", "number")
	elseif Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf") ~= nil then
		hotbarUI = Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf")
		msg = 29
	end
	if hotbarUI ~= nil then
		hotbarUI:ExternalInterfaceCall("updateSlots", msg)
	end
end
Ext.RegisterNetListener("Client_Refresh_Hotbar", Musketeer_Refresh_Hotbar)


-- Experimental Tooltip Handling for displaying correct Rifle-Weapon Names
local function SetTooltipHandler(arg1, ...)
	do return end

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
--Ext.RegisterUINameInvokeListener("addFormattedTooltip", SetTooltipHandler)


local function setCompareTooltipHandler(arg1, ...)
	Ext.Print("Compare Tooltip stuff")
	Ext.Print(arg1)
	local args = (...)
	for i=1, #args do
		Ext.Print(args[i])
	end

end

--Item1 = nil
-- Overwrite the original function to set own character handle logic
local function GetCompareItemOverride(ui, item, offHand)
	local owner = nil
	--Ext.Print(#ui)
	--[[
	local testithing = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
	Ext.Print("hotbar Playerhandle:")
	Ext.Print(Ext.GetCharacter(Ext.DoubleToHandle(testithing:GetRoot().hotbar_mc.characterHandle)))
	Ext.Print("hotbar GetPlayerHandle:")
	Ext.Print(testithing.GetPlayerHandle())
	Ext.Print(testithing:GetPlayerHandle())
	--]]
	--Item1 = item
	--Ext.Print(Item1)
	if item == nil or item.Stats == nil then print("item comparison: item stat is nil") return end
	if PersistentVars.PlayerCharacterGUID == nil then

		if Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf") ~= nil then
			owner = Ext.GetCharacter(Ext.DoubleToHandle(Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf"):GetRoot().hotbar_mc.characterHandle))
		elseif Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf") ~= nil then
			owner = Ext.GetCharacter(Ext.DoubleToHandle(Ext.GetBuiltinUI("Public/Game/GUI/bottomBar_c.swf"):GetRoot().characterHandle))
		end
		
		if owner == nil then
			owner = ui:GetPlayerHandle()
			if owner == nil then
				owner = item:GetOwnerCharacter()
			end
		end
	else
		owner = PersistentVars.PlayerCharacterGUID
	end

    if owner == nil then
		Ext.PrintError("No Owner for item, trying to set owner...")
		if PersistentVars.PlayerCharacterGUID ~= nil then
			owner = PersistentVars.PlayerCharacterGUID
		end
		--Ext.Print(PersistentVars.PlayerCharacterGUID)
        if owner == nil then return nil end
	end
	
    --- @type EclCharacter
	local char = Ext.GetCharacter(owner)
    if item.Stats.ItemSlot == "Weapon" then
        if offHand then
            return char:GetItemBySlot("Shield")
        else
            return char:GetItemBySlot("Weapon")
        end
    elseif item.Stats.ItemSlot == "Ring" or item.Stats.ItemSlot == "Ring2" then
        if offHand then
            return char:GetItemBySlot("Ring2")
        else
            return char:GetItemBySlot("Ring")
        end
    else
        return char:GetItemBySlot(item.Stats.ItemSlot)
    end
end



local function OnRenderTooltipOverride(ui, method, ...)
	if ui.GetValue == nil then
		--Ext.Print("Setting ui to tooltip.swf file")
		ui = Ext.GetBuiltinUI("Public/Game/GUI/tooltip.swf")
	end
    if Game.Tooltip.TooltipHooks.NextRequest == nil then
        Ext.PrintError("Got tooltip render request, but did not find original tooltip info!")
        return
    end

    local req = Game.Tooltip.TooltipHooks.NextRequest
    Game.Tooltip.TooltipHooks:OnRenderSubTooltip(ui, "tooltip_array", req, method, ...)

    if req.Type == "Item" then
		local reqItem = req.Item

        if ui:GetValue("tooltipCompare_array", nil, 0) ~= nil then
            local compareItem = Game.Tooltip.TooltipHooks.GetCompareItem(ui, reqItem, false)
            if compareItem ~= nil then
                req.Item = Ext.GetItem(compareItem)
                Game.Tooltip.TooltipHooks:OnRenderSubTooltip(ui, "tooltipCompare_array", req, method, ...)
                req.Item = reqItem
            else
                Ext.PrintError("Tooltip compare render failed: Couldn't find item to compare")
            end
        end

        if ui:GetValue("tooltipOffHand_array", nil, 0) ~= nil then
            local compareItem = Game.Tooltip.TooltipHooks.GetCompareItem(ui, reqItem, true)
            if compareItem ~= nil then
                req.Item = Ext.GetItem(compareItem)
                Game.Tooltip.TooltipHooks:OnRenderSubTooltip(ui, "tooltipOffHand_array", req, method, ...)
                req.Item = reqItem
            else
                Ext.PrintError("Tooltip compare render failed: Couldn't find off-hand item to compare")
            end
        end
	end
	Game.Tooltip.TooltipHooks.NextRequest = nil
end



--local Musketeer_WeaponType_Musket = Ext.GetTranslatedString("", "Musket")
---@param item EclItem
---@param tooltip TooltipData
local function Musketeer_OnItemTooltip(item, tooltip)
	if item:HasTag("Musk_Rifle") then
		local rifleName = ""
		if item:HasTag("Musk_Rifle_Musket") then
			rifleName = "Musket"
		elseif item:HasTag("Musk_Rifle_Blunderbuss") then
			rifleName = "Blunderbuss"
		elseif item:HasTag("Musk_Rifle_Matchlock") then
			rifleName = "Matchlock"
		end

		local ammunitionCharges = tooltip:GetElement("WandCharges")
		if ammunitionCharges ~= nil then
			if ammunitionCharges.Value <= 0 then
				ammunitionCharges.Label = "Out of Ammunition!"
			else
				ammunitionCharges.Label = "Ammunition"
			end
		end

		if tooltip:GetElement("NeedsIdentifyLevel") ~= nil then
			local unidentifiedName = tooltip:GetElement("ItemName")
			local newUnidentifiedName = string.gsub(unidentifiedName.Label, ">.*<", ">Unidentified " .. rifleName .. "<")
			unidentifiedName.Label = newUnidentifiedName
		else
			local element = tooltip:GetElement("ArmorSlotType")
			if element == nil then
				element = {
					Type = "ArmorSlotType",
					Label = ""
				}
			end		
			--Ext.Print(Ext.JsonStringify(tooltip))
			element.Label = rifleName
		end
    end
end
Ext.RegisterListener("SessionLoaded", function()
    Game.Tooltip.RegisterListener("Item", nil, Musketeer_OnItemTooltip)
end)

Ext.RegisterListener("SessionLoaded", function()
	if not Ext.IsModLoaded("7e737d2f-31d2-4751-963f-be6ccc59cd0c") then
		Ext.Print("LeaderLib not loaded yet, overriding tooltip item compare hooks.")
		Game.Tooltip.TooltipHooks.OnRenderTooltip = OnRenderTooltipOverride
		Game.Tooltip.TooltipHooks.GetCompareItem = GetCompareItemOverride
	end
end)

local function Musketeer_WeaponEx_AddToPersistentVars_Listener(channel, jsonString)
	--Ext.Print("[Musketeer Client]: Add WeaponEx stuff to PersistentVars")
	local message = Ext.JsonParse(jsonString)
	local key = message[1]
	local guid = message[2]
	local value = message[3]
	if #message == 3 and key ~= nil and value ~= nil and guid ~= nil then
		if value == "yes" then
			PersistentVars.WeaponExMasteries[guid][key] = 1
		elseif value == "no" then
			PersistentVars.WeaponExMasteries[guid][key] = 0
		end
	end
end
Ext.RegisterNetListener("Musketeer_WeaponEx_Mastery_PersistentVars", Musketeer_WeaponEx_AddToPersistentVars_Listener)

-- Mods.Musketeer.PersistentVars.WeaponExMasteries["bb932b13-8ebf-4ab4-aac0-83e6924e4295"]["Musk_Rifle_Matchlock_Mastery1"] = 1
-- Mods.Musketeer.PersistentVars.WeaponExMasteries = {}
-- Mods.Musketeer.PersistentVars.WeaponExMasteries["bb932b13-8ebf-4ab4-aac0-83e6924e4295"] = {}

Ext.RegisterListener("GetSkillAPCost", function (skill, character, grid, position, radius)
	if skill.Name ~= "Rush_Musk_Blitzkrieg" then return end
	if PersistentVars.WeaponExMasteries == nil then
		PersistentVars.WeaponExMasteries = {}
	end
	if 	PersistentVars.WeaponExMasteries[character.MyGuid] == nil then
		PersistentVars.WeaponExMasteries[character.MyGuid] = {}
	end
	if PersistentVars.WeaponExMasteries[character.MyGuid].Blunderbuss_Mastery1_Enhanced_Blitzkrieg == nil then
		PersistentVars.WeaponExMasteries[character.MyGuid].Blunderbuss_Mastery1_Enhanced_Blitzkrieg = 0
	end
	--print("Local Skill Cost Check")
	--print(character.MyGuid)
	--print(PersistentVars)
	--print(PersistentVars.WeaponExMasteries)
	local calculatedCost, affinity = Game.Math.GetSkillAPCost(skill, character, grid, position, radius)
    if PersistentVars.WeaponExMasteries[character.MyGuid].Blunderbuss_Mastery1_Enhanced_Blitzkrieg == 1 then
        --Ext.Print("[Client] Blunderbuss Mastery1 PersVar is set")
		if calculatedCost > 0 then
			return calculatedCost - 1, affinity
		end
		return 0, affinity
	end
	--return calculatedCost
    --Ext.Print("GetSkillApCost with Blitzkrieg called, but cost was not modified.")
end)

Ext.RegisterListener("SkillGetDescriptionParam", function (skill, character, isFromItem, param)
	if skill.Name == "Projectile_Bullethell" then
		if PersistentVars.WeaponExMasteries == nil then
			PersistentVars.WeaponExMasteries = {}
		end
		if 	PersistentVars.WeaponExMasteries[character.MyGuid] == nil then
			PersistentVars.WeaponExMasteries[character.MyGuid] = {}
		end
		if PersistentVars.WeaponExMasteries[character.MyGuid].Musk_Rifle_Matchlock_Mastery4 == nil then
			PersistentVars.WeaponExMasteries[character.MyGuid].Musk_Rifle_Matchlock_Mastery4 = 0
		end
		if PersistentVars.WeaponExMasteries[character.MyGuid].Musk_Rifle_Matchlock_Mastery4 == 1 and param == "Potion" then
			return "11"
		end

	end
end)

Ext.RegisterSkillProperty("MUSKETEER_BUCKSHOT_SKILLPROP", {
	GetDescription = function (property)
		if PersistentVars.WeaponExMasteries ~= nil and
		   PersistentVars.WeaponExMasteries[PersistentVars["PlayerCharacterGUID"]] ~= nil and 
		   PersistentVars.WeaponExMasteries[PersistentVars["PlayerCharacterGUID"]].Musk_Rifle_Blunderbuss_Mastery4 == 1 then
		   return "Causes a 6(+2)m long fire explosion behind the impact location"
		end

		local rand = math.random(0, 1337)
        return "Causes a 6m long fire explosion behind the impact location"
    end
})


Musketeer_Change_Rune_Projectile = function(channel, message)
	local messageTable = Ext.JsonParse(message)
	local character = messageTable[1]
	local item = messageTable[2]
	local projectile = messageTable[3]
	local slot = messageTable[4]
	--Ext.PrintWarning(character, item, projectile, slot)
	--local item = Ext.GetItem(itemGuid)
	--print(item)
	--print(item.Stats)
	--print(item.Stats.DynamicStats)
	--Lit = item.Stats.DynamicStats
	--item.Stats.DynamicStats[3].Projectile = projectile
	--item.Stats.DynamicStats[1].Projectile = projectile
	--item.Stats.DynamicStats[2].Projectile = projectile
	--item.Stats.DynamicStats[4].Projectile = projectile
	--item.Stats.DynamicStats[5].Projectile = projectile
	Ext.GetItem(item).Stats.DynamicStats[slot].Projectile = projectile
	--print(Ext.GetItem(item).Stats.DynamicStats[slot].Projectile)

	--Ext.GetItem(itemGuid).Stats.DynamicStats[3].Projectile = Musketeer_Rune_Projectile["Fire"]
	--print(Ext.GetItem(itemGuid).Stats.DynamicStats[3].Projectile)

	--Ext.GetItem("WPN_Musketeer_Rifle_Tanegashima_c3e9a9dd-26cd-4903-9494-552ec84ff700").Stats.DynamicStats[3].Projectile = Musketeer_Rune_Projectile["Earth"]

end
Ext.RegisterNetListener("Musketeer_Sync_Rune_Projectile", Musketeer_Change_Rune_Projectile)

