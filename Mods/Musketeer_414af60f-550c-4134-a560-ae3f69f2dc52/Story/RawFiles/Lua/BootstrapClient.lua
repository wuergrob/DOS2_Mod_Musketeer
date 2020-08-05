--Ext.Require("ExtIdeHelpers.lua")
-- TODO

--[[
Refactoring
-----
Code is a absolut mess. Notably:
* Use a shared table for storing reload variant info
* Clean up calls. Too many unnecessary Lua calls from Osiris code.
* Tag names for different rifle variations no longer reflect their actual values. Rename to more
applicable, generic names.
-----
AmmoBar Positioning / Consistency
-----
Look into container .swf code to check how draggable UI is done.
NOTE: test UI behaviour in more situations (notably dialog and stuff where the hotbar hides.)
-----

--]]




if Musketeer_Ammo_Skills == nil then
	Musketeer_Ammo_Skills = { test = 0 }
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
}

function InitPlayerState()
	-- Persistent variables are only available after SessionLoaded is triggered!
	PersistentVars["HandshakeCompleted"] = false
	PersistentVars["SkillListLoaded"] = false
	PersistentVars["HotbarUIInputFocusActive"] = false
	PersistentVars["PlayerCharacterGUID"] = ""
	PersistentVars["PlayerActiveSkillPreview"] = false
	PersistentVars["CurrentHotbar"] = 1
    --Ext.Print("InitPlayerState. Handshake is: " .. PersistentVars["HandshakeCompleted"])
end
Ext.RegisterListener("SessionLoaded", InitPlayerState)


function PrintPlayerState()
	Ext.Print("PlayerState Info:")
	Ext.Print(PersistentVars["HandshakeCompleted"])
	Ext.Print(PersistentVars["SkillListLoaded"])
	Ext.Print(PersistentVars["HotbarUIInputFocusActive"])
	Ext.Print(PersistentVars["PlayerCharacterGUID"])
	Ext.Print(PersistentVars["PlayerActiveSkillPreview"])
	Ext.Print(PersistentVars["CurrentHotbar"])
	Ext.Print(PersistentVars["HotbarVisible"])
	Ext.Print(PersistentVars["AmmoBarEnabled"])
end

function PrintSkillList()
	Ext.Print("SkillList Info:")
	Ext.Print(Musketeer_Ammo_Skills)
	Ext.Print(Musketeer_Ammo_Skills["test"])
	Ext.Print(Musketeer_Ammo_Skills["Shout_Reload"])
	Ext.Print(Musketeer_Ammo_Skills["Target_Unload_Test"])
end



-- Try out positioning by setting x and y directly, as in:
-- x = 200, y = 110 in MainTimeLine.
-- For some reason, doing that by means of ui:SetValue("x", 200) makes the UI position
-- always be the same relative to the other Ui elements.
local function Musketeer_AmmoBar_Init()
    print("Musketeer_Open_TestWindow called.")
	local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf",3)
		ui:Hide()
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		print("[Musketeer:BootstrapClient.lua] Hiding ammo window.")
		-- Re-register ui id to make it draggable.
		-- ui:ExternalInterfaceCall("registerAnchorId", "AmmoBar")
		ui:Hide()
		ui:Invoke("setAmmoCount", 11)
		--ui:SetPosition(200,70)
	end
	print("AmmoBar Initialized.")
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
    print("Musketeer_AmmoBar_ElementChange called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setAmmoElement", value)
	end
	print("AmmoBar Element changed.")
end

-- Preview Ammo Restoration/Ammo Consumption
-- negative value -> consume preview
-- positive value -> restore preview
local function Musketeer_AmmoBar_Difference_Preview(call, value)
	print("Musketeer_AmmoBar_Difference_Preview entry")
	print("value: " .. value)
	if value ~= nil and type(value) == string then
		print("Musketeer_AmmoBar_Difference_Preview converted string to number")
		value = tonumber(value)
	end
    print("Musketeer_AmmoBar_Difference_Preview called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil and value ~= 0 then
		print("Should be previewing now...")
		ui:Invoke("forceAmmoBarReset")
		if value < 0 then
			ui:Invoke("previewAmmoConsumption", (0 - value))
		else
			ui:Invoke("previewAmmoGain", value)
		end
	end
	print("Preview Ammo Difference.")
end


local function Musketeer_AmmoBar_SetAmmo(call, value)
    print("Musketeer_AmmoBar_SetAmmo called.")
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
	print("Set Ammo Count.")
end

local function Musketeer_AmmoBar_SetMaxAmmo(call, value)
    print("Musketeer_AmmoBar_SetMaxAmmo called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		ui:Invoke("setMaxAmmoCount", value)
	end
	print("Set Max Ammo Count.")
end

-- Currently extremely messy because of inconsistent parameter calls. (Some use "0" and "1", and now i also use true and false bools...)
local function Musketeer_AmmoBar_Visibility(call, value)
	if value == "0" or value == false then
		PersistentVars["AmmoBarEnabled"] = false
	elseif value == "1" or value == true then
		PersistentVars["AmmoBarEnabled"] = true
	else
		print("Invalid value passed to Musketeer_AmmoBar_Visibility.")
		print(value)
	end
	print(call)
	print(value)
	print(type(value))
	--if value ~= nil and type(value) == string then
	--	value = tonumber(value)
	--end
    print("Musketeer_AmmoBar_Visibility called.")
    local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		--Ext.RegisterUICall(ui, "onEvent", LeaderLib_Debug_OnDebugUIEvent)
		ui:Invoke("forceAmmoBarReset")
		if value == "0" then
			ui:Hide()
		elseif value == "1" then
			ui:Show()
		else
			print("Invalid Value, value should be a Boolean (0 or 1)")
		end
	end
	-- Refactor this, only done this way for testing.
	if (PersistentVars["HotbarVisible"] == false) then
		print("Not showing AmmoBar, because Hotbar is disabled.")
		ui:Hide()
		return
	end
	print("AmmoBar visibility set")
end



--- @param force boolean Optional parameter to force a reset, even when the active skill preview is on.
local function Musketeer_Reset_Previews_AmmoBar(force)
	force = force or false
	if PersistentVars["PlayerActiveSkillPreview"] == false and force == false then
		print("Musketeer_Reset_AmmoBar called.")
		local ui = Ext.GetUI("AmmoBarGUIv1.swf")
		if ui == nil then
			ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
			print("ui was nil, thus looking with relative path.")
		end
		if ui ~= nil then
			ui:Invoke("forceAmmoBarReset")
		end
		print("AmmoBar reset.")
	end
end

local function Musketeer_AmmoBar_BreathingMode(call, value)
    print("Musketeer_AmmoBar_BreathingMode called.")
	local ui = Ext.GetUI("AmmoBarGUIv1.swf")
	if ui == nil then
		ui = Ext.CreateUI("AmmoBarGUIv1.swf", "Public/Musketeer_414af60f-550c-4134-a560-ae3f69f2dc52/GUI/AmmoBarGUIv1.swf", 2)
		print("ui was nil, thus looking with relative path.")
	end
	if ui ~= nil then
		ui:Invoke("setAmmoPrevBreathingMode", value)
	end
	print("AmmoBar BreathindMode set.")
end




local function Musketeer_Ammo_Skills_Add(name, val)
	Musketeer_Ammo_Skills[name] = val
	print(Musketeer_Ammo_Skills)
	print("Musketeer_Ammo_Skills added entry: ".. name .. " val: ".. val)
	PersistentVars["SkillListLoaded"] = true
end


local function Musketeer_Receive_Rifle_Skill(call, payload)
	--print("[Client] Musketeer_Receive_Rifle_Skill called")
	local decoded = Ext.JsonParse(payload)
	if decoded["skillname"] == "Shout_Reload" then
		--print("[CLIENT] Client received Shout_Reload and should add it to the Skilllist.")
		decoded["ammocost"] = 11;
	end
	if decoded["skillname"] == "Target_Unload_Test" then
		decoded["ammocost"] = -11;
	end
	Musketeer_Ammo_Skills_Add(decoded["skillname"], decoded["ammocost"])
	--print(Musketeer_Ammo_Skills)
end




-- Currently, this doesnt check "Shout_Reload" for some reason.
local function skillCheckForAmmoBarPreview(skill, character, isFromItem, param)
	print(skill["Name"])
	local skillName = skill["Name"]

	local amount = Musketeer_Ammo_Skills[skillName]
	print(amount)

	if amount ~= nil and type(amount) == string then
		amount = tonumber(amount)
		print("converted number from string to number")
	end
	if amount ~= nil and amount ~= 0 then
		print("skillCheckForAmmoBarPreview was called. Deprecated, thus no action.")
		--print("skillCheckForAmmoBarPreview check here, skill is present and doesn't cost 0");
		--Musketeer_AmmoBar_Difference_Preview(nil, amount)
	end
	print("End of skillCheckForAmmoBarPreview")
end
Ext.RegisterListener("SkillGetDescriptionParam", skillCheckForAmmoBarPreview)


local function BuiltInHotbarUIHideToolbar()
	print("Hotbar Hide Tooltip event fired.")
	if PersistentVars["HotbarUIInputFocusActive"] == false then
		Musketeer_Reset_Previews_AmmoBar()
	end
end

local function BuiltInHotbarUIShowTooltip(ui, call, arg1, arg2)
	print("Hotbar Show Tooltip event fired.")
	if arg1 ~= nil then
		print(arg1)
	else
		print("[BuiltInHotbarUIShowTooltip]: arg1 was nil.")
	end
	if arg2 ~= nil then
		print(arg2)
	else
		print("[BuiltInHotbarUIShowTooltip]: arg2 was nil.")
	end
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIStartDragging(ui, call, arg1)
	print("Hotbar Start Dragging event fired.")
	print(arg1)
	--Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIShowSkillTooltip(ui, call, handler, skillname)
	print("Hotbar Show Skill Tooltip event fired.")
	--print(arg1)
	--print(arg2)
	print(skillname)
	local skillName = skillname

	local amount = Musketeer_Ammo_Skills[skillName]
	print(amount)

	if amount ~= nil and type(amount) == string then
		amount = tonumber(amount)
		print("converted number from string to number")
	end
    if amount ~= nil and amount ~= 0 then
		print("skillCheckForAmmoBarPreview check here, skill is present and doesn't cost 0");
		Musketeer_AmmoBar_Difference_Preview(nil, amount)
	else
		Musketeer_Reset_Previews_AmmoBar()
	end
	print("End of BuiltInHotbarUIShowSkillTooltip")
end

local function BuiltInHotbarUIShowItemTooltip(ui, call, handler, skillname)
	print("Hotbar Show Item Tooltip event fired.")
	print(handler)
	print(skillname)
	PersistentVars["HotbarUIInputFocusActive"] = false
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIInputFocus(ui, call, arg1)
	print("Hotbar Focus Input event fired.")
	print(arg1)
	PersistentVars["HotbarUIInputFocusActive"] = true
	--Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUIInputFocusLost(ui, call, arg1)
	print("Hotbar Focus Input Lost event fired.")
	print(arg1)
	PersistentVars["HotbarUIInputFocusActive"] = false
	Musketeer_Reset_Previews_AmmoBar()
end

local function BuiltInHotbarUISelectSlot(ui, call, arg1)
	print("Hotbar Slot Selected event fired.")
	print(arg1)
end

local function BuiltInHotbarUIUseAction(ui, call, arg1)
	print("Hotbar Use Action Event fired.")
	print(arg1)
end

local function BuiltInHotbarUISlotUpEnd(ui, call, arg1)
	print("----------------------------------")
	print("Hotbar UI Slot Up End Event fired.")
	print(arg1)
end

local function BuiltInHotbarUIButtonPressed(ui, call, arg1)
	print("----------------------------------")
	print("Hotbar UI Button Pressed Event fired.")
	print(arg1)
end

local function BuiltInHotbarUISlotPressed(ui, call, arg1, arg2)
	print("----------------------------------")
	print("Hotbar UI Slot Pressed Event fired.")
	print(arg1)
	print(arg2)
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
	print("[Client]: Got SkillbarEntry from Server, preview...")
	if PersistentVars["PlayerActiveSkillPreview"] == true then
		BuiltInHotbarUIShowSkillTooltip(nil, nil, nil, entry)
	end
end
Ext.RegisterNetListener("skillbar_entry_answer", ReceiveSkillbarEntry)

local function BuiltInHotbarActiveSkill(ui, call, arg1, index)
	print("----------------------------------")
	print("Hotbar UI Active Skill Preview.")
	-- NOTE: if index >= 1.0, then activeskil preview is on, else its off.
	print(arg1)
	print(index)
	print("===================================")
	if arg1 >= 0 then
		local hotbarUI = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
		print(hotbarUI)

		arg1 = arg1 + (PersistentVars["CurrentHotbar"]-1) * 29
		print("Multiplied Skillbar Slot index with current Skillbar index.")
		print(arg1)

		PersistentVars["PlayerActiveSkillPreview"] = true
		RequestServerSkillbarEntry(arg1)
	elseif arg1 < 0 then
		PersistentVars["PlayerActiveSkillPreview"] = false
		Musketeer_Reset_Previews_AmmoBar()
	end
end


local function DebugStuffs(ui, event, handle, arg4, arg5)
	print("///////////////////////////////////////////")
	local charHandle = Ext.DoubleToHandle(handle)
	local char = Ext.GetCharacter(charHandle)
	print(ui)
	print(event)
	print(handle)
	print(charHandle)
	print(char.NetID)
	print(char.MyGuid)
	print(char.Archetype)
	print(char.CurrentLevel)
	print(char.OwnerHandle)
	print(char)
	print(arg4)
	print(arg5)
end

local function DebugStuffs2(ui, event, handle, arg4, arg5)
	print("Client Context Switch")
	--print(Ext.HandleToDouble(param1))
	local charHandle = Ext.DoubleToHandle(handle)
	local char = Ext.GetCharacter(charHandle)
	print(charHandle)
	print(char)
	print(char.GetTags(char)[1])
	print(char.GetTags(char)[2])
	print(char.GetTags(char)[3])
	print("Sending payload: " .. char.MyGuid)
	Ext.PostMessageToServer('clientContextSwitch', char.MyGuid)
end

local function SetCurrentHotbar(ui, event, index)
	print("Current Hotbar switched")
	print(index)
	PersistentVars["CurrentHotbar"] = index
end

-- Signal that client is ready for rifle skill broadcast
local function Musketeer_Client_Signal_Ready()
	print("Client is ready.")
	Ext.PostMessageToServer('clientReady', 1)
end

local function Musketeer_AmmoBar_Visibility_Hotbar(ui, event, handle)
	print(event)
	print(handle)
	if (type(handle) == "boolean") then
		PersistentVars["HotbarVisible"] = handle
	end
	Musketeer_AmmoBar_Visibility(nil, PersistentVars["AmmoBarEnabled"])
end

local function RegisterBuiltInUIListeners() 
	-- Listen to the hotbar for when the sheet opens
	local hotbar = Ext.GetBuiltinUI("Public/Game/GUI/hotBar.swf")
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
		
		
		Ext.RegisterUIInvokeListener(hotbar, "setCurrentHotbar", SetCurrentHotbar)
		Ext.RegisterUIInvokeListener(hotbar, "setPlayerHandle", DebugStuffs2)
		Ext.RegisterUIInvokeListener(hotbar, "showSkillBar", Musketeer_AmmoBar_Visibility_Hotbar)
		

		
		Ext.RegisterUIInvokeListener(hotbar, "showActiveSkill", BuiltInHotbarActiveSkill)
		--Ext.RegisterUICall(hotbar, "PlaySound", BuiltInHotbarUIPlaySound)
		print("[Musketeer:RegisterBuiltInUIListeners] Found (hotBar.swf). Registered listeners.")
	else
		print("[Musketeer:RegisterBuiltInUIListeners] Failed to find Public/Game/GUI/hotBar.swf")
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
	print("[Client] Player: " .. player .. " got Server message.")
	--print("[Client] Debugstuff:")
	--print(call)
	--print(handler)
	--print(player)
end
Ext.RegisterNetListener("Musketeer_SendHello", ReceiveServerOffer)

local function SetClientContext(call, player)
	print("[Client] Updated Client CharacterGUID")
	print(player)
	PersistentVars["PlayerCharacterGUID"] = player
end
Ext.RegisterNetListener("Musketeer_SetClientContext", SetClientContext)

local function ReceiveServerRequest(channel, player)
	print("[CLIENT] Received ServerRequest and I am: " .. player)
	PersistentVars["PlayerCharacterGUID"] = player
	PersistentVars["HandshakeCompleted"] = true
	Ext.PostMessageToServer('clientReady', player)
	Musketeer_AmmoBar_Init();
end
Ext.RegisterNetListener("requestClient", ReceiveServerRequest)



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

