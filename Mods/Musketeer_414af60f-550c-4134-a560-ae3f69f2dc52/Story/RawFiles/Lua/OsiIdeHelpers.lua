--- @param arg1 integer
Osi.NRD_LuaReset = function (arg1) end

--- @param arg1 integer
NRD_LuaReset = function (arg1) end

--- @param arg1 string Trigger GUID
Osi.TriggerResetAtmosphere = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerResetAtmosphere = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsSummon = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsSummon = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.ItemHasOnUse = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
ItemHasOnUse = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
Osi.NRD_LuaReset = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
NRD_LuaReset = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterMovedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterMovedItem = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return string
Osi.NRD_ItemGetStatsId = function (arg1) end

--- @param arg1 string Item GUID
--- @return string
NRD_ItemGetStatsId = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.ExecuteDeal = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
ExecuteDeal = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.MessageBoxChoiceClosed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
MessageBoxChoiceClosed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return string
--- @return string
Osi.CharacterGetDisplayName = function (arg1) end

--- @param arg1 string Character GUID
--- @return string
--- @return string
CharacterGetDisplayName = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsControlled = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsControlled = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetGoldValue = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetGoldValue = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_CharacterSetPermanentBoostTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_CharacterSetPermanentBoostTalent = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
Osi.NRD_HitGetDamage = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
NRD_HitGetDamage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetSpectating = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetSpectating = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.AutomatedDialogRequestFailed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
AutomatedDialogRequestFailed = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetForceSynch = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetForceSynch = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
Osi.StartCameraSpline = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
StartCameraSpline = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetUseRemotely = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetUseRemotely = function (arg1) end

--- @param arg1 string
Osi.GameEndWithMovie = function (arg1) end

--- @param arg1 string
GameEndWithMovie = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.MusicPlayForPeer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
MusicPlayForPeer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.PartyRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
PartyRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_CharacterGetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_CharacterGetInt = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.VoiceBarkStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
VoiceBarkStarted = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSelectedInCharCreation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSelectedInCharCreation = function (arg1, arg2) end

--- @param arg1 integer
--- @return number
Osi.GetTextEventParamReal = function (arg1) end

--- @param arg1 integer
--- @return number
GetTextEventParamReal = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterCreateAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 integer
CharacterCreateAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
Osi.ItemStackedWith = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
ItemStackedWith = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemClearOwner = function (arg1) end

--- @param arg1 string Item GUID
ItemClearOwner = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.SetSelectorCameraMode = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
SetSelectorCameraMode = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
Osi.ItemsScatteredAt = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
ItemsScatteredAt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.MoviePlay = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
MoviePlay = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetInArena = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetInArena = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
Osi.CharacterSelectedAsBestUnavailableFallbackLead = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
CharacterSelectedAsBestUnavailableFallbackLead = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string GUID
Osi.LeaveCombat = function (arg1) end

--- @param arg1 string GUID
LeaveCombat = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string Character GUID
Osi.GenerateTreasure = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string Character GUID
GenerateTreasure = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
Osi.TimerUnpause = function (arg1) end

--- @param arg1 string
TimerUnpause = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysWasDefined = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysWasDefined = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 string Item GUID
Osi.ItemUnlocked = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 string Item GUID
ItemUnlocked = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.RemoveTemporaryCharacter = function (arg1) end

--- @param arg1 string Character GUID
RemoveTemporaryCharacter = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.SetVarObject = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string GUID
SetVarObject = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
Osi.StartDialog_Internal = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
StartDialog_Internal = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 integer
Osi.CombatEnded = function (arg1) end

--- @param arg1 integer
CombatEnded = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.ItemCreateAtTrigger = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
ItemCreateAtTrigger = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @param arg6 string GUID
Osi.TransformSurface = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @param arg6 string GUID
TransformSurface = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterGetAttitudeTowardsPlayer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterGetAttitudeTowardsPlayer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
Osi.NRD_CharacterGetReal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
NRD_CharacterGetReal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterLearnedSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterLearnedSkill = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
Osi.UnlockSecretRegion = function (arg1) end

--- @param arg1 string Trigger GUID
UnlockSecretRegion = function (arg1) end

--- @param arg1 string Item GUID
Osi.ItemClose = function (arg1) end

--- @param arg1 string Item GUID
ItemClose = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string
Osi.NRD_ItemGetPermanentBoostString = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string
NRD_ItemGetPermanentBoostString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.CharacterStopCrime = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
CharacterStopCrime = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.TimerPause = function (arg1) end

--- @param arg1 string
TimerPause = function (arg1) end

--- @param arg1 integer
--- @param arg2 string Character GUID
Osi.CrimeConfrontationDone = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string Character GUID
CrimeConfrontationDone = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.CharacterBlockedBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
CharacterBlockedBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 integer
Osi.NRD_Send_Rifle_Skill = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 integer
NRD_Send_Rifle_Skill = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @return integer
Osi.GetSurfaceTypeIndex = function (arg1) end

--- @param arg1 string
--- @return integer
GetSurfaceTypeIndex = function (arg1) end

--- @param arg1 string Item GUID
Osi.ItemGhostRevealed = function (arg1) end

--- @param arg1 string Item GUID
ItemGhostRevealed = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
Osi.CameraActivate = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
CameraActivate = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_AmmoBar_SetCC_Visibility = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_AmmoBar_SetCC_Visibility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.PartyAddGold = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
PartyAddGold = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.NRD_CreateStorm = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
NRD_CreateStorm = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @return integer
Osi.ObjectExists = function (arg1) end

--- @param arg1 string GUID
--- @return integer
ObjectExists = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
Osi.CharacterUsedSkillAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
CharacterUsedSkillAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
Osi.InventoryLaunchIterator = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
InventoryLaunchIterator = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemEquipped = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemEquipped = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterEnableCrime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterEnableCrime = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.NRD_ItemIterateDeltaModifiers = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
NRD_ItemIterateDeltaModifiers = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.NRD_CharacterGetComputedStat = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
NRD_CharacterGetComputedStat = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ObjectWasTagged = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ObjectWasTagged = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @return integer
Osi.AttributeGetDifficultyLevelMappedValue = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @return integer
AttributeGetDifficultyLevelMappedValue = function (arg1, arg2) end

--- @param arg1 integer
Osi.CharacterAssign = function (arg1) end

--- @param arg1 integer
CharacterAssign = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterLoadedInPreset = function (arg1) end

--- @param arg1 string Character GUID
CharacterLoadedInPreset = function (arg1) end

--- @param arg1 string
Osi.GlobalFlagSet = function (arg1) end

--- @param arg1 string
GlobalFlagSet = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.GameBookInterfaceClosed = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
GameBookInterfaceClosed = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
Osi.TeleportTo = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
TeleportTo = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return string
--- @return integer
Osi.StartDefaultDialog = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return string
--- @return integer
StartDefaultDialog = function (arg1, arg2) end

--- @param arg1 integer
--- @return string Character GUID
--- @return string Character GUID
--- @return string Character GUID
--- @return string Character GUID
Osi.CrimeGetCriminals = function (arg1) end

--- @param arg1 integer
--- @return string Character GUID
--- @return string Character GUID
--- @return string Character GUID
--- @return string Character GUID
CrimeGetCriminals = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterIsNeutral = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterIsNeutral = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.DestroyGhost = function (arg1) end

--- @param arg1 string Character GUID
DestroyGhost = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.UserAddGold = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
UserAddGold = function (arg1, arg2) end

--- @param arg1 number
--- @return number
Osi.NRD_Tan = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Tan = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @return string
--- @return string
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
--- @return string
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @return string
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
Osi.HasRecipeUnlockedWithIngredient = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
HasRecipeUnlockedWithIngredient = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
--- @return string Character GUID
Osi.CharacterCreateAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
--- @return string Character GUID
CharacterCreateAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return boolean Did the query succeed?
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery0 = function (arg1) end

--- @param arg1 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery0 = function (arg1) end

--- @param arg1 integer
--- @return integer
Osi.DialogIsCrimeDialog = function (arg1) end

--- @param arg1 integer
--- @return integer
DialogIsCrimeDialog = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return boolean Did the query succeed?
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.DialogSetVariableStringForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
DialogSetVariableStringForInstance = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.GameEventCleared = function (arg1) end

--- @param arg1 string
GameEventCleared = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery1 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.PartySetIdentifyPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
PartySetIdentifyPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return boolean Did the query succeed?
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 string
--- @param arg8 integer
Osi.ItemMoveToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 string
--- @param arg8 integer
ItemMoveToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery2 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return integer
Osi.PlayLoopEffectAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return integer
PlayLoopEffectAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
--- @param arg10 integer
Osi.ShowTutorial = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
--- @param arg10 integer
ShowTutorial = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 string
--- @param arg6 number
--- @param arg7 number
--- @param arg8 string GUID
Osi.TransformSurfaceAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 string
--- @param arg6 number
--- @param arg7 number
--- @param arg8 string GUID
TransformSurfaceAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return boolean Did the query succeed?
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterUnconsume = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterUnconsume = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.LockWaypoint = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
LockWaypoint = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return boolean Did the query succeed?
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery4 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CloseUI = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CloseUI = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return boolean Did the query succeed?
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.NRD_IsDivisible = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
NRD_IsDivisible = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return boolean Did the query succeed?
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterTeleportToPyramid = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterTeleportToPyramid = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @return string
Osi.CharacterGetCrimeRegion = function (arg1) end

--- @param arg1 string Character GUID
--- @return string
CharacterGetCrimeRegion = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return boolean Did the query succeed?
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @return string
Osi.GetStatusType = function (arg1) end

--- @param arg1 string
--- @return string
GetStatusType = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
Osi.CharacterLeftParty = function (arg1) end

--- @param arg1 string Character GUID
CharacterLeftParty = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CreateExplosion = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
CreateExplosion = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.GlobalShareFlag = function (arg1) end

--- @param arg1 string
GlobalShareFlag = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @return string Item GUID
Osi.NRD_ItemClone = function () end

--- @return string Item GUID
NRD_ItemClone = function () end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @return integer
--- @return integer
--- @return integer
--- @return integer
Osi.SysStoryVersion = function () end

--- @return integer
--- @return integer
--- @return integer
--- @return integer
SysStoryVersion = function () end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.QuestIsSubquestEntry = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
QuestIsSubquestEntry = function (arg1, arg2) end

--- @param arg1 integer
--- @return string
Osi.IntegertoString = function (arg1) end

--- @param arg1 integer
--- @return string
IntegertoString = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetCharges = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetCharges = function (arg1) end

--- @param arg1 string
--- @return number
Osi.NRD_StatGetExtraData = function (arg1) end

--- @param arg1 string
--- @return number
NRD_StatGetExtraData = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
Osi.Transform = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
Transform = function (arg1, arg2, arg3, arg4, arg5) end

--- @return string Character GUID
Osi.CharacterGetHostCharacter = function () end

--- @return string Character GUID
CharacterGetHostCharacter = function () end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.OnCrimeSawCriminalInCombat = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
OnCrimeSawCriminalInCombat = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
Osi.CharacterDisappearOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
CharacterDisappearOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealDivide = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealDivide = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
Osi.MoveAllItemsTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
MoveAllItemsTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.MakePeace = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
MakePeace = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.TimerFinished = function (arg1) end

--- @param arg1 string
TimerFinished = function (arg1) end

--- @param arg1 string Trigger GUID
Osi.TriggerRegisterForPlayers = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerRegisterForPlayers = function (arg1) end

--- @param arg1 integer
Osi.ShowArenaResult = function (arg1) end

--- @param arg1 integer
ShowArenaResult = function (arg1) end

--- @param arg1 string
--- @return string
Osi.NRD_StringFormat = function (arg1) end

--- @param arg1 string
--- @return string
NRD_StringFormat = function (arg1) end

--- @param arg1 string
--- @param arg3 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3) end

--- @param arg1 string
--- @param arg3 string
--- @return string
NRD_StringFormat = function (arg1, arg3) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterApplyHenchmanPreset = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterApplyHenchmanPreset = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.ObjectEnteredCombat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
ObjectEnteredCombat = function (arg1, arg2) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.PuzzleUIClosed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
PuzzleUIClosed = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterStoppedLockpickingItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterStoppedLockpickingItem = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.ItemTemplateDropFromCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
ItemTemplateDropFromCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.TriggerClearItemTemplateOwners = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
TriggerClearItemTemplateOwners = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.ItemSendToHomesteadEvent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
ItemSendToHomesteadEvent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 string Character GUID
--- @param arg5 integer
Osi.CharacterRegisterCrime = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 string Character GUID
--- @param arg5 integer
CharacterRegisterCrime = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.TransferItemsToCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
TransferItemsToCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterOverrideMaxSourcePoints = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterOverrideMaxSourcePoints = function (arg1, arg2) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.OpenMessageBoxChoice = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
OpenMessageBoxChoice = function (arg1, arg2, arg3, arg4) end

Osi.NRD_GameStarted = function () end

NRD_GameStarted = function () end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
Osi.PartyPresetLoaded = function (arg1) end

--- @param arg1 string
PartyPresetLoaded = function (arg1) end

--- @param arg1 string
Osi.GlobalSetFlag = function (arg1) end

--- @param arg1 string
GlobalSetFlag = function (arg1) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
Osi.NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
NRD_StringFormat = function (arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
--- @return string Character GUID
Osi.TemporaryCharacterCreateOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
--- @return string Character GUID
TemporaryCharacterCreateOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
Osi.CharacterTransform = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
CharacterTransform = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetKnown = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetKnown = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.DualDialogStart = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
DualDialogStart = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @return integer
--- @return integer
--- @return integer
Osi.CrimeFindEvidence = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @return integer
--- @return integer
--- @return integer
CrimeFindEvidence = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddActionPoints = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddActionPoints = function (arg1, arg2) end

--- @param arg1 integer
--- @return string
Osi.CrimeGetType = function (arg1) end

--- @param arg1 integer
--- @return string
CrimeGetType = function (arg1) end

--- @param arg1 number
--- @return integer
Osi.Integer = function (arg1) end

--- @param arg1 number
--- @return integer
Integer = function (arg1) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
Osi.ItemTemplateLeftTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
ItemTemplateLeftTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
Osi.CharacterDie = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
CharacterDie = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterLockAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterLockAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.ItemIsPoisoned = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
ItemIsPoisoned = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.CharacterTransformAppearanceTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
CharacterTransformAppearanceTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetBaseAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetBaseAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
Osi.CharacterMoveToAndTalkRequestDialogFailedEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
CharacterMoveToAndTalkRequestDialogFailedEvent = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string GUID
Osi.NRD_CreateCustomStat = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string GUID
NRD_CreateCustomStat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
Osi.SetVarFloat = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
SetVarFloat = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 string
Osi.QuestReceiveSharedUpdate = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 string
QuestReceiveSharedUpdate = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
Osi.NRD_ActionStateGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
NRD_ActionStateGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.SonyRealtimeMultiplayerEvent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
SonyRealtimeMultiplayerEvent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.NRD_CharacterGetHitChance = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
NRD_CharacterGetHitChance = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
Osi.NRD_RegexReplace = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
NRD_RegexReplace = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @return number
Osi.NRD_Abs = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Abs = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterPolymorphedInto = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterPolymorphedInto = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
Osi.CharacterAppearAtCustom = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
CharacterAppearAtCustom = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.CharacterStartAttackObject = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
CharacterStartAttackObject = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.NRD_CharacterSetGlobal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
NRD_CharacterSetGlobal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterAttitudeTowardsPlayerChanged = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterAttitudeTowardsPlayerChanged = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @return integer
Osi.CanUserRest = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @return integer
CanUserRest = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.HappyWithDeal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
HappyWithDeal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterScriptFrameFinished = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterScriptFrameFinished = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterEnableCrimeWarnings = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterEnableCrimeWarnings = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterIsEnemy = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterIsEnemy = function (arg1, arg2) end

--- @param arg1 integer
Osi.LeaveParty = function (arg1) end

--- @param arg1 integer
LeaveParty = function (arg1) end

--- @param arg1 string
Osi.RegionStarted = function (arg1) end

--- @param arg1 string
RegionStarted = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetTalentPoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetTalentPoints = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.OpenMessageBoxYesNo = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
OpenMessageBoxYesNo = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterWentOnStage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterWentOnStage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @param arg9 string
Osi.CharacterTeleported = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @param arg9 string
CharacterTeleported = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return boolean Did the query succeed?
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string
Osi.NRD_StatusSetString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string
NRD_StatusSetString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return boolean Did the query succeed?
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ContainerGetGoldValue = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ContainerGetGoldValue = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery0 = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return boolean Did the query succeed?
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterSetTemporaryRelationsFailed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterSetTemporaryRelationsFailed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery1 = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterEnteredSubRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterEnteredSubRegion = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @return string GUID
Osi.NRD_ItemGetParent = function (arg1) end

--- @param arg1 string Item GUID
--- @return string GUID
NRD_ItemGetParent = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return boolean Did the query succeed?
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.ObjectLeftCombat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
ObjectLeftCombat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
Osi.CharacterMoveToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
CharacterMoveToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery2 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return boolean Did the query succeed?
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @return integer
Osi.GetGlobalPriceModifier = function () end

--- @return integer
GetGlobalPriceModifier = function () end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string GUID
Osi.NRD_ItemGetGuidString = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string GUID
NRD_ItemGetGuidString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 integer
Osi.SetGlobalPriceModifier = function (arg1) end

--- @param arg1 integer
SetGlobalPriceModifier = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return boolean Did the query succeed?
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery4 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.HasActiveStatus = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
HasActiveStatus = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return boolean Did the query succeed?
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery5 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
--- @return string Item GUID
Osi.ItemRemoveRune = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
--- @return string Item GUID
ItemRemoveRune = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return boolean Did the query succeed?
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharactersAreGrouped = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharactersAreGrouped = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string
Osi.CharacterAppearAtPositionCustom = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string
CharacterAppearAtPositionCustom = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery6 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Item GUID
--- @param arg4 integer
Osi.CharacterPickpocketSuccess = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Item GUID
--- @param arg4 integer
CharacterPickpocketSuccess = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
Osi.NRD_CharacterEquipItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
NRD_CharacterEquipItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return boolean Did the query succeed?
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Character GUID
Osi.CharacterPurgeQueue = function (arg1) end

--- @param arg1 string Character GUID
CharacterPurgeQueue = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 integer
--- @param arg4 string
Osi.FadeToWhite = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 integer
--- @param arg4 string
FadeToWhite = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery7 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.PartyClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
PartyClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
Osi.CharacterGetRace = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
CharacterGetRace = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery8 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string GUID
Osi.ActivatePersistentLevelTemplate = function (arg1) end

--- @param arg1 string GUID
ActivatePersistentLevelTemplate = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_ItemCloneAddBoost = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_ItemCloneAddBoost = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery9 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
Osi.ItemTemplateTagIsInCharacterInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
ItemTemplateTagIsInCharacterInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string Trigger GUID
Osi.CharacterUsedSkillInTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string Trigger GUID
CharacterUsedSkillInTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_ModCall = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_ModCall = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
Osi.NRD_ModCall = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
NRD_ModCall = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.CharacterKilledBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
CharacterKilledBy = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
NRD_ModCall = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
Osi.CharacterGetOrigin = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
CharacterGetOrigin = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerMin = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerMin = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
Osi.PlayEffect = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
PlayEffect = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.InventoryLaunchTagIterator = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
InventoryLaunchTagIterator = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerMax = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerMax = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterLootedCharacterCorpse = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterLootedCharacterCorpse = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsIncapacitated = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsIncapacitated = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetDurability = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetDurability = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 integer
--- @return string
Osi.NRD_IntegerToString = function (arg1) end

--- @param arg1 integer
--- @return string
NRD_IntegerToString = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
Osi.DLCUpdated = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
DLCUpdated = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 integer
Osi.CombatStarted = function (arg1) end

--- @param arg1 integer
CombatStarted = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetAttribute = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetAttribute = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.EnqueueGameEndMovie = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
EnqueueGameEndMovie = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
Osi.NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
NRD_ModCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return integer
Osi.NRD_HitStatusGetDamage = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return integer
NRD_HitStatusGetDamage = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.GMCampaignModeStarted = function (arg1) end

--- @param arg1 string
GMCampaignModeStarted = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @return integer
Osi.SysCount = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @return integer
SysCount = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetVisible = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetVisible = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterAddAttitudeTowardsPlayer = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterAddAttitudeTowardsPlayer = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @return integer
Osi.NRD_CreateTornado = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @return integer
NRD_CreateTornado = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetOnlyOwnerCanUse = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetOnlyOwnerCanUse = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
Osi.DialogAddActor = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
DialogAddActor = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CrimeIsTensionOverWarningTreshold = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CrimeIsTensionOverWarningTreshold = function (arg1) end

--- @param arg1 integer
--- @return integer
Osi.Random = function (arg1) end

--- @param arg1 integer
--- @return integer
Random = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemSetOriginalOwner = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemSetOriginalOwner = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_Set_Element = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_Set_Element = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
Osi.ItemTemplateRemovedFromContainer = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
ItemTemplateRemovedFromContainer = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterMakeCompanion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterMakeCompanion = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterMadePlayer = function (arg1) end

--- @param arg1 string Character GUID
CharacterMadePlayer = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.CharacterTeleportPartiesToTriggerWithMovieRequestCallback = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
CharacterTeleportPartiesToTriggerWithMovieRequestCallback = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
Osi.PlayScaledEffectAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
PlayScaledEffectAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.QuestUpdateExists = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
QuestUpdateExists = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 number
Osi.DialogSetVariableFloatForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 number
DialogSetVariableFloatForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_HitAddDamage = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
NRD_HitAddDamage = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_CharacterSetPermanentBoostInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_CharacterSetPermanentBoostInt = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_HitSetInt = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
NRD_HitSetInt = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.PlayBeamEffect = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
PlayBeamEffect = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
Osi.NRD_LuaCall = function (arg1) end

--- @param arg1 string
NRD_LuaCall = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterSawSneakingCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterSawSneakingCharacter = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_LuaCall = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_LuaCall = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_CharacterGetPermanentBoostInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_CharacterGetPermanentBoostInt = function (arg1, arg2) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysIsSleeping = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysIsSleeping = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
Osi.ItemLeftTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
ItemLeftTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
NRD_LuaCall = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.NRD_ItemConstructBegin = function (arg1) end

--- @param arg1 string
NRD_ItemConstructBegin = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
Osi.NRD_Experiment = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
NRD_Experiment = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
Osi.DialogRequestStopForDialog = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
DialogRequestStopForDialog = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
Osi.NRD_ItemDeltaModIteratorEvent = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
NRD_ItemDeltaModIteratorEvent = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @return number
Osi.NRD_Round = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Round = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
Osi.NRD_SkillIteratorEvent = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
NRD_SkillIteratorEvent = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
Osi.NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
NRD_LuaCall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.OpenCraftUI = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
OpenCraftUI = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.MessageBoxClosed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
MessageBoxClosed = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetIsBoss = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetIsBoss = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
Osi.MusicPlayForPeerWithInstrument = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
MusicPlayForPeerWithInstrument = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetAttributePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetAttributePoints = function (arg1) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @return integer
Osi.NRD_Min = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @return integer
NRD_Min = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
--- @return integer
Osi.NRD_Min = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
--- @return integer
NRD_Min = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @return integer
Osi.NRD_Max = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @return integer
NRD_Max = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.NRD_StatusPreventApply = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
NRD_StatusPreventApply = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
--- @return integer
Osi.NRD_Max = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
--- @return integer
NRD_Max = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 string GUID
Osi.ApplyStatus = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 string GUID
ApplyStatus = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterHasRecipeUnlocked = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterHasRecipeUnlocked = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterDestroyedItemTemplate = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterDestroyedItemTemplate = function (arg1, arg2) end

--- @param arg1 string
--- @return integer
Osi.ItemTemplateCanSitOn = function (arg1) end

--- @param arg1 string
--- @return integer
ItemTemplateCanSitOn = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ItemGetPermanentBoostAbility = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
NRD_ItemGetPermanentBoostAbility = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.CharacterTemplateKilledByCharacter = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
CharacterTemplateKilledByCharacter = function (arg1, arg2) end

--- @param arg1 number
--- @return number
Osi.NRD_Ceil = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Ceil = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_PlayerSetBaseAttribute = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_PlayerSetBaseAttribute = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 integer
--- @param arg7 integer
Osi.TeleportToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 integer
--- @param arg7 integer
TeleportToPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.ObjectSwitchedCombat = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
ObjectSwitchedCombat = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
Osi.ItemDragToTrigger = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
ItemDragToTrigger = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterSetRelationFactionToIndivFaction = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterSetRelationFactionToIndivFaction = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.NRD_CreateDome = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
NRD_CreateDome = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
Osi.CharacterBaseAbilityChanged = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
CharacterBaseAbilityChanged = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
Osi.ItemClosed = function (arg1) end

--- @param arg1 string Item GUID
ItemClosed = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
Osi.NRD_SkillGetCooldown = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
NRD_SkillGetCooldown = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
Osi.DialogStartRequested = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
DialogStartRequested = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CrimeEnabled = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CrimeEnabled = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return integer
Osi.ObjectIsItem = function (arg1) end

--- @param arg1 string GUID
--- @return integer
ObjectIsItem = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.OnStageChanged = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
OnStageChanged = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.QuestClose = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
QuestClose = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return string Item GUID
Osi.UserFindTaggedItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return string Item GUID
UserFindTaggedItem = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
Osi.OnCrimeConfrontationDone = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
OnCrimeConfrontationDone = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsOpened = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsOpened = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.CharacterStatusRemoved = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
CharacterStatusRemoved = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.NRD_InitPlayer = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
NRD_InitPlayer = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.TriggerLaunchIterator = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
TriggerLaunchIterator = function (arg1, arg2) end

--- @param arg1 string
--- @return integer
Osi.GlobalGetFlag = function (arg1) end

--- @param arg1 string
--- @return integer
GlobalGetFlag = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterUsedSourcePoint = function (arg1) end

--- @param arg1 string Character GUID
CharacterUsedSourcePoint = function (arg1) end

--- @param arg1 number
--- @return string
Osi.NRD_RealToString = function (arg1) end

--- @param arg1 number
--- @return string
NRD_RealToString = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 number
--- @param arg6 number
Osi.CreateSurfaceAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 number
--- @param arg6 number
CreateSurfaceAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.NRD_OnActionStateEnter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
NRD_OnActionStateEnter = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.DisplayText = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
DisplayText = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
Osi.DialogGetInvolvedPlayer = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
DialogGetInvolvedPlayer = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return number
--- @return number
--- @return number
Osi.GetRotation = function (arg1) end

--- @param arg1 string GUID
--- @return number
--- @return number
--- @return number
GetRotation = function (arg1) end

--- @return number
Osi.GetMaxCameraDistance = function () end

--- @return number
GetMaxCameraDistance = function () end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterRemoveAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterRemoveAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterMakePlayer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterMakePlayer = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterCreationFinished = function (arg1) end

--- @param arg1 string Character GUID
CharacterCreationFinished = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return integer
Osi.HasLineOfSight = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return integer
HasLineOfSight = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterChangedAlginmentToCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterChangedAlginmentToCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.CharacterGiveQuestReward = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
CharacterGiveQuestReward = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
Osi.ItemDestroying = function (arg1) end

--- @param arg1 string Item GUID
ItemDestroying = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
Osi.NRD_HitSetVector3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
NRD_HitSetVector3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemCanSitOn = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemCanSitOn = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_ProjectileSetInt = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_ProjectileSetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterPickpocketFailed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterPickpocketFailed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterGetRelationToCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterGetRelationToCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterVitalityChanged = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterVitalityChanged = function (arg1, arg2) end

--- @param arg1 string GUID
Osi.EndTurn = function (arg1) end

--- @param arg1 string GUID
EndTurn = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetHasDialog = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetHasDialog = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ClearVarObject = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ClearVarObject = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterSetTemporaryHostileRelation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterSetTemporaryHostileRelation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.ShowNotification = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
ShowNotification = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterDisableAllCrimes = function (arg1) end

--- @param arg1 string Character GUID
CharacterDisableAllCrimes = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
--- @return string Character GUID
Osi.NRD_Summon = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
--- @return string Character GUID
NRD_Summon = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string GUID
--- @return string
Osi.GetFaction = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetFaction = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CompleteTutorial = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CompleteTutorial = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_CharacterGetStatInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_CharacterGetStatInt = function (arg1, arg2) end

--- @param arg1 string
Osi.VoiceBarkFailed = function (arg1) end

--- @param arg1 string
VoiceBarkFailed = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_Set_Max_Ammo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_Set_Max_Ammo = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.DrawSurfaceOnPath = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @return integer
DrawSurfaceOnPath = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
Osi.CharacterDetachedFromGroup = function (arg1) end

--- @param arg1 string Character GUID
CharacterDetachedFromGroup = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return boolean Did the query succeed?
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return boolean Did the query succeed?
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetInvulnerable_UseProcSetInvulnerable = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetInvulnerable_UseProcSetInvulnerable = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
Osi.CharacterAppearOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
CharacterAppearOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.PartyAddActualExperience = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
PartyAddActualExperience = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerDivide = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerDivide = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemLevelUp = function (arg1) end

--- @param arg1 string Item GUID
ItemLevelUp = function (arg1) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerProduct = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerProduct = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @param arg12 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_ModQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterGhostDestroyed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterGhostDestroyed = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemAddedToCharacter = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemAddedToCharacter = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.ItemLeftRegion = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
ItemLeftRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.PartyAddExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
PartyAddExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.SetVarInteger = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
SetVarInteger = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterApplyPreset = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterApplyPreset = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.PlaySound = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
PlaySound = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.SkillCast = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
SkillCast = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @return integer
Osi.GetTextEventParamInteger = function (arg1) end

--- @param arg1 integer
--- @return integer
GetTextEventParamInteger = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterUnlockedRecipe = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterUnlockedRecipe = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
Osi.TriggerClearItemOwner = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerClearItemOwner = function (arg1) end

--- @return integer
Osi.NRD_GetVersion = function () end

--- @return integer
NRD_GetVersion = function () end

--- @param arg1 string
Osi.CharacterLaunchOsirisOnlyIterator = function (arg1) end

--- @param arg1 string
CharacterLaunchOsirisOnlyIterator = function (arg1) end

--- @param arg1 string Character GUID
--- @return string
Osi.NRD_CharacterGetCurrentAction = function (arg1) end

--- @param arg1 string Character GUID
--- @return string
NRD_CharacterGetCurrentAction = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetCanPickUp = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetCanPickUp = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CreateProjectileStrikeAt = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
CreateProjectileStrikeAt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetCanSpotSneakers = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetCanSpotSneakers = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return string
Osi.NRD_HitGetString = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return string
NRD_HitGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterUnlockRecipe = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterUnlockRecipe = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.HasDefaultDialog = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
HasDefaultDialog = function (arg1) end

--- @param arg1 integer
--- @return number
Osi.CrimeGetDetectionRange = function (arg1) end

--- @param arg1 integer
--- @return number
CrimeGetDetectionRange = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterSetAnimationOverride = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterSetAnimationOverride = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerSum = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerSum = function (arg1, arg2) end

--- @param arg1 string
Osi.QuestCloseAll = function (arg1) end

--- @param arg1 string
QuestCloseAll = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string GUID
Osi.GetVarObject = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string GUID
GetVarObject = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.NRD_RandomReal = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
NRD_RandomReal = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 string
Osi.ItemRotateToAngleY_Animate = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 string
ItemRotateToAngleY_Animate = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsContainer = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsContainer = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @return string
Osi.StringSub = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @return string
StringSub = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return string
Osi.CharacterGetInstrument = function (arg1) end

--- @param arg1 string Character GUID
--- @return string
CharacterGetInstrument = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.UserConnected = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
UserConnected = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return integer
Osi.PlayLoopBeamEffect = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @return integer
PlayLoopBeamEffect = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
Osi.MovieFinished = function (arg1) end

--- @param arg1 string
MovieFinished = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.NRD_OnHit = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
NRD_OnHit = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
Osi.NRD_HitExecute = function (arg1) end

--- @param arg1 integer
NRD_HitExecute = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_Preview_Difference = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_Preview_Difference = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterRemoveTension = function (arg1) end

--- @param arg1 string Character GUID
CharacterRemoveTension = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
Osi.ChildDialogRequested = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
ChildDialogRequested = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @return number
Osi.NRD_Cos = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Cos = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.RemoveStatus = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
RemoveStatus = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGameMaster = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGameMaster = function (arg1) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @param arg3 integer
Osi.DialogAddActorAt = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @param arg3 integer
DialogAddActorAt = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @return string Character GUID
Osi.CrimeGetVictim = function (arg1) end

--- @param arg1 integer
--- @return string Character GUID
CrimeGetVictim = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterTurnedToGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterTurnedToGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
--- @param arg3 integer
Osi.CharacterLookFromTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
--- @param arg3 integer
CharacterLookFromTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.CharacterSetFightMode = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
CharacterSetFightMode = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return integer
Osi.SysStatus = function (arg1) end

--- @param arg1 string
--- @return integer
SysStatus = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterMoveItemToTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 integer
--- @param arg5 string
CharacterMoveItemToTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.NRD_RootTemplateGetInt = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
NRD_RootTemplateGetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
Osi.CharacterAppearAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
CharacterAppearAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
Osi.CharacterResurrected = function (arg1) end

--- @param arg1 string Character GUID
CharacterResurrected = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterHasSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterHasSkill = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetMaxCharges = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetMaxCharges = function (arg1) end

--- @param arg1 string GUID
--- @return string GUID
--- @return string GUID
Osi.GetSurfaceCloudOwnerAt = function (arg1) end

--- @param arg1 string GUID
--- @return string GUID
--- @return string GUID
GetSurfaceCloudOwnerAt = function (arg1) end

--- @param arg1 string GUID
--- @return string
--- @return string
Osi.ItemTemplateGetDisplayString = function (arg1) end

--- @param arg1 string GUID
--- @return string
--- @return string
ItemTemplateGetDisplayString = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.CharacterUsedSkillOnZoneWithTarget = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
CharacterUsedSkillOnZoneWithTarget = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
Osi.AttackedByObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
AttackedByObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
Osi.ItemRotateY = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
ItemRotateY = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.ObjectClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
ObjectClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemRemovedFromCharacter = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemRemovedFromCharacter = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ItemGetPermanentBoostInt = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
NRD_ItemGetPermanentBoostInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
Osi.CharacterSetHitpointsPercentage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
CharacterSetHitpointsPercentage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return number
Osi.CharacterGetHitpointsPercentage = function (arg1) end

--- @param arg1 string Character GUID
--- @return number
CharacterGetHitpointsPercentage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.NRD_OnActionStateExit = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
NRD_OnActionStateExit = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetCanFight = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetCanFight = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
--- @param arg9 string Character GUID
--- @param arg10 integer
Osi.CharacterOnCrimeSensibleActionNotification = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
--- @param arg9 string Character GUID
--- @param arg10 integer
CharacterOnCrimeSensibleActionNotification = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
Osi.CharacterPickupItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
CharacterPickupItem = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
Osi.ObjectFlagShared = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
ObjectFlagShared = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetAbility = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
--- @return string Character GUID
Osi.TemporaryCharacterCreateAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 string
--- @return string Character GUID
TemporaryCharacterCreateAtPositionOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.ItemWentOnStage = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
ItemWentOnStage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
Osi.CharacterCanSeeGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
CharacterCanSeeGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return integer
Osi.CharacterAddToCharacterCreation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return integer
CharacterAddToCharacterCreation = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterEnableAllCrimes = function (arg1) end

--- @param arg1 string Character GUID
CharacterEnableAllCrimes = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetMaxSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetMaxSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterEquipItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterEquipItem = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
Osi.ApplyDamage = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
ApplyDamage = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string Trigger GUID
--- @return integer
Osi.ObjectIsInTrigger = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string Trigger GUID
--- @return integer
ObjectIsInTrigger = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
Osi.LockSecretRegion = function (arg1) end

--- @param arg1 string Trigger GUID
LockSecretRegion = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_ItemCloneSetInt = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_ItemCloneSetInt = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
Osi.NRD_ObjectGetInternalFlag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
NRD_ObjectGetInternalFlag = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
Osi.ItemToInventory = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
ItemToInventory = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 string
Osi.FadeInDone = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
FadeInDone = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
Osi.GetDistanceToPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
GetDistanceToPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @return integer
Osi.ObjectIsGlobal = function (arg1) end

--- @param arg1 string GUID
--- @return integer
ObjectIsGlobal = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
Osi.DoorIsOpening = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
DoorIsOpening = function (arg1) end

--- @param arg1 string
Osi.LoadGame = function (arg1) end

--- @param arg1 string
LoadGame = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.UserDisconnected = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
UserDisconnected = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysIsActive = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysIsActive = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterMovedItemTemplate = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterMovedItemTemplate = function (arg1, arg2) end

--- @param arg1 integer
--- @return number
Osi.NRD_GameActionGetLifeTime = function (arg1) end

--- @param arg1 integer
--- @return number
NRD_GameActionGetLifeTime = function (arg1) end

--- @param arg1 string
Osi.CharacterCreationStarted = function (arg1) end

--- @param arg1 string
CharacterCreationStarted = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemAddCharges = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemAddCharges = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.VoiceBarkEnded = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
VoiceBarkEnded = function (arg1, arg2) end

--- @param arg1 integer
--- @return integer
Osi.CrimeGetNumberOfEvidence = function (arg1) end

--- @param arg1 integer
--- @return integer
CrimeGetNumberOfEvidence = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.NRD_OnPrepareHit = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
NRD_OnPrepareHit = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 number
Osi.CharacterSetMagicArmorPercentage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
CharacterSetMagicArmorPercentage = function (arg1, arg2) end

--- @param arg1 integer
Osi.ShroudRender = function (arg1) end

--- @param arg1 integer
ShroudRender = function (arg1) end

--- @param arg1 string Item GUID
--- @return string Character GUID
Osi.ItemGetOwner = function (arg1) end

--- @param arg1 string Item GUID
--- @return string Character GUID
ItemGetOwner = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterRemoveFromParty = function (arg1) end

--- @param arg1 string Character GUID
CharacterRemoveFromParty = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return string Character GUID
--- @return number
Osi.GetClosestAliveUserPlayer = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return string Character GUID
--- @return number
GetClosestAliveUserPlayer = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.StoryEvent = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
StoryEvent = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
Osi.CrimeGetEvidence = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
CrimeGetEvidence = function (arg1, arg2) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysIsCompleted = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysIsCompleted = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetGold = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetGold = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterCanReactToCrime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterCanReactToCrime = function (arg1, arg2) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysWasActive = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysWasActive = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.QuestIsMysteryEntry = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
QuestIsMysteryEntry = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterDied = function (arg1) end

--- @param arg1 string Character GUID
CharacterDied = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterRemoveAttribute = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterRemoveAttribute = function (arg1, arg2, arg3) end

Osi.NRD_ProjectilePrepareLaunch = function () end

NRD_ProjectilePrepareLaunch = function () end

--- @param arg1 string GUID
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
Osi.ItemTemplateAddedToCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
ItemTemplateAddedToCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterRemoveMaxSourcePointsOverride = function (arg1) end

--- @param arg1 string Character GUID
CharacterRemoveMaxSourcePointsOverride = function (arg1) end

--- @param arg1 string GUID
Osi.ActivatePersistentLevelTemplateWithCombat = function (arg1) end

--- @param arg1 string GUID
ActivatePersistentLevelTemplateWithCombat = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.NRD_LuaLoad = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
NRD_LuaLoad = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.ObjectReadyInCombat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
ObjectReadyInCombat = function (arg1, arg2) end

--- @param arg1 number
--- @return number
Osi.NRD_Sqrt = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Sqrt = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string
Osi.CharacterTeleportPartiesToTriggerWithMovie = function (arg1, arg2, arg3) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string
CharacterTeleportPartiesToTriggerWithMovie = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.DialogSetVariableTranslatedString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
DialogSetVariableTranslatedString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 integer
Osi.NRD_HitStatusAddDamage = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 integer
NRD_HitStatusAddDamage = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 string
Osi.EndGameRequestMovie = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
EndGameRequestMovie = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIgnoreActiveCrimes = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIgnoreActiveCrimes = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterResurrect = function (arg1) end

--- @param arg1 string Character GUID
CharacterResurrect = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterFleeOutOfSight = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterFleeOutOfSight = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 string Character GUID
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 integer
Osi.CharacterRegisterCrimeWithPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 string Character GUID
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 integer
CharacterRegisterCrimeWithPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetForceUpdate = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetForceUpdate = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return number
Osi.CharacterGetArmorPercentage = function (arg1) end

--- @param arg1 string Character GUID
--- @return number
CharacterGetArmorPercentage = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
Osi.DialogSetVariableString = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
DialogSetVariableString = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @return integer
Osi.DialogGetNumberOfInvolvedPlayers = function (arg1) end

--- @param arg1 integer
--- @return integer
DialogGetNumberOfInvolvedPlayers = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetReservedUserID = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetReservedUserID = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.TutorialBoxClosed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
TutorialBoxClosed = function (arg1, arg2) end

--- @param arg1 integer
--- @return string
Osi.GetUserName = function (arg1) end

--- @param arg1 integer
--- @return string
GetUserName = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return integer
Osi.GetAngleTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return integer
GetAngleTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
Osi.NRD_HitStatusClearDamage = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
NRD_HitStatusClearDamage = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.SavegameLoaded = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
SavegameLoaded = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string Character GUID
Osi.CombatGetInvolvedPlayer = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string Character GUID
CombatGetInvolvedPlayer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterSetFollowCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterSetFollowCharacter = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealProduct = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealProduct = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.ItemIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @return integer
ItemIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
Osi.TriggerRegisterForItems = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerRegisterForItems = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @return integer
Osi.DialogStartChildDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @return integer
DialogStartChildDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 integer
Osi.NRD_HitClearAllDamage = function (arg1) end

--- @param arg1 integer
NRD_HitClearAllDamage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.EnqueueGameEndDialogMovie = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
EnqueueGameEndDialogMovie = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
Osi.ItemResetChargesToMax = function (arg1) end

--- @param arg1 string Item GUID
ItemResetChargesToMax = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
Osi.CharacterMoveTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
CharacterMoveTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetBaseSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetBaseSourcePoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetAbilityPoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetAbilityPoints = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_ItemSetPermanentBoostInt = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
NRD_ItemSetPermanentBoostInt = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.DebugText = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
DebugText = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetItemTemplateCount = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetItemTemplateCount = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.CrimeEnableInterrogation = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
CrimeEnableInterrogation = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.ObjectClearDialogFlag = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
ObjectClearDialogFlag = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.NRD_StatGetInt = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
NRD_StatGetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 integer
--- @param arg7 integer
Osi.CharacterUseSkillAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 integer
--- @param arg7 integer
CharacterUseSkillAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.ItemTemplateIsInContainer = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
ItemTemplateIsInContainer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
Osi.NRD_SkillSetCooldown = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
NRD_SkillSetCooldown = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.PlayScaledLoopEffectAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
PlayScaledLoopEffectAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @return string Character GUID
Osi.TemporaryCharacterCreateAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @return string Character GUID
TemporaryCharacterCreateAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 integer
Osi.TimerLaunch = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
TimerLaunch = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.StartPickpocket = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
StartPickpocket = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.UserRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
UserRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
Osi.OnCrimeMergedWith = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
OnCrimeMergedWith = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetCorpseLootable = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetCorpseLootable = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterGiveReward = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterGiveReward = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterOriginIntroStopped = function (arg1) end

--- @param arg1 string Character GUID
CharacterOriginIntroStopped = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterUnlinkGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterUnlinkGhost = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.FadeDone = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
FadeDone = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.CharacterShowStoryElementUI = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
CharacterShowStoryElementUI = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanSpotSneakers = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanSpotSneakers = function (arg1) end

--- @param arg1 string GUID
--- @return integer
Osi.IsBoss = function (arg1) end

--- @param arg1 string GUID
--- @return integer
IsBoss = function (arg1) end

--- @param arg1 string Character GUID
--- @return string GUID
Osi.CharacterGetEquippedWeapon = function (arg1) end

--- @param arg1 string Character GUID
--- @return string GUID
CharacterGetEquippedWeapon = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Item GUID
--- @param arg4 integer
Osi.OpenWaypointUI = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Item GUID
--- @param arg4 integer
OpenWaypointUI = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string Item GUID
Osi.NRD_SkillBarSetItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string Item GUID
NRD_SkillBarSetItem = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @return string
Osi.GetSurfaceNameByTypeIndex = function (arg1) end

--- @param arg1 integer
--- @return string
GetSurfaceNameByTypeIndex = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
Osi.DialogRequestFailed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
DialogRequestFailed = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
Osi.CrimeIgnoreCrime = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
CrimeIgnoreCrime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.QuestArchiveCategory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
QuestArchiveCategory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return string Character GUID
Osi.GetMultiplayerCharacter = function (arg1) end

--- @param arg1 string Character GUID
--- @return string Character GUID
GetMultiplayerCharacter = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
Osi.StartDialog_Internal_NoDeadCheck = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
StartDialog_Internal_NoDeadCheck = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 integer
--- @param arg2 integer
Osi.CombatRoundStarted = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
CombatRoundStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.NRD_RegexMatch = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
--- @return integer
NRD_RegexMatch = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @return string
Osi.DialogGetCategory = function (arg1) end

--- @param arg1 integer
--- @return string
DialogGetCategory = function (arg1) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
Osi.OnCrimeResolved = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
OnCrimeResolved = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.IsTagged = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
IsTagged = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetCanMove = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetCanMove = function (arg1, arg2) end

--- @param arg1 integer
--- @return string Character GUID
Osi.CrimeGetLeadInvestigator = function (arg1) end

--- @param arg1 integer
--- @return string Character GUID
CrimeGetLeadInvestigator = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsPartyFollower = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsPartyFollower = function (arg1) end

--- @param arg1 string GUID
Osi.RemoveHarmfulStatuses = function (arg1) end

--- @param arg1 string GUID
RemoveHarmfulStatuses = function (arg1) end

--- @param arg1 string Character GUID
Osi.TradeGenerationStarted = function (arg1) end

--- @param arg1 string Character GUID
TradeGenerationStarted = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterStartLockpickingItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterStartLockpickingItem = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
Osi.SetVarString = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
SetVarString = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @return integer
Osi.ObjectIsCharacter = function (arg1) end

--- @param arg1 string GUID
--- @return integer
ObjectIsCharacter = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
Osi.NRD_CharacterSetCustomStat = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
NRD_CharacterSetCustomStat = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysWasCompleted = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysWasCompleted = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
Osi.ItemScatterAt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
ItemScatterAt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
Osi.CharacterStartAttackPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
CharacterStartAttackPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterEnteredRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterEnteredRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.QuestAccepted = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
QuestAccepted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
Osi.DialogActorLeft = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
DialogActorLeft = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetDurability = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetDurability = function (arg1) end

--- @param arg1 string
Osi.GameEndWithMovieRequestCallback = function (arg1) end

--- @param arg1 string
GameEndWithMovieRequestCallback = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string GUID
--- @return integer
Osi.CrimeTransferLeadershipTo = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string GUID
--- @return integer
CrimeTransferLeadershipTo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
Osi.NRD_PlayerGetCustomDataString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
NRD_PlayerGetCustomDataString = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterGuarded = function (arg1) end

--- @param arg1 string Character GUID
CharacterGuarded = function (arg1) end

--- @param arg1 string
--- @param arg2 string Item GUID
Osi.ItemTemplateDestroyed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
ItemTemplateDestroyed = function (arg1, arg2) end

--- @param arg1 string
Osi.SysCompleteGoal = function (arg1) end

--- @param arg1 string
SysCompleteGoal = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
Osi.SetVarFixedString = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
SetVarFixedString = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.CharacterStartOriginIntroduction = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
CharacterStartOriginIntroduction = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterClearTradeGeneratedItems = function (arg1) end

--- @param arg1 string Character GUID
CharacterClearTradeGeneratedItems = function (arg1) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.ItemSetEquipped = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
ItemSetEquipped = function (arg1, arg2) end

--- @param arg1 integer
--- @return integer
Osi.DialogGetNumberOfInvolvedNPCs = function (arg1) end

--- @param arg1 integer
--- @return integer
DialogGetNumberOfInvolvedNPCs = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
Osi.NRD_SkillBarGetSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string
NRD_SkillBarGetSkill = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 integer
Osi.TemporaryCharacterCreateAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 integer
TemporaryCharacterCreateAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.InventoryLaunchTemplateIterator = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
InventoryLaunchTemplateIterator = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 string
Osi.CharacterLaunchIteratorAroundObject = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 string
CharacterLaunchIteratorAroundObject = function (arg1, arg2, arg3) end

--- @return integer
Osi.HasKickstarterDialogReward = function () end

--- @return integer
HasKickstarterDialogReward = function () end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.SavegameLoading = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
SavegameLoading = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @return integer
Osi.CrimeIsAnyNPCGoingToReact = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @return integer
CrimeIsAnyNPCGoingToReact = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.MakeWar = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
MakeWar = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @return integer
Osi.NRD_CreateWall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 number
--- @return integer
NRD_CreateWall = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string
Osi.RemoveEntryFromCustomBook = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
RemoveEntryFromCustomBook = function (arg1, arg2) end

--- @param arg1 integer
--- @return string
Osi.GetTextEventParamString = function (arg1) end

--- @param arg1 integer
--- @return string
GetTextEventParamString = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.ItemDisplayTextEnded = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
ItemDisplayTextEnded = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.StartVoiceBark = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
StartVoiceBark = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
Osi.NRD_HitGetInt = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
NRD_HitGetInt = function (arg1, arg2) end

--- @param arg1 string
Osi.RegionEnded = function (arg1) end

--- @param arg1 string
RegionEnded = function (arg1) end

--- @param arg1 integer
--- @param arg2 integer
Osi.AddToParty = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
AddToParty = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.NRD_ItemCloneBegin = function (arg1) end

--- @param arg1 string Item GUID
NRD_ItemCloneBegin = function (arg1) end

--- @param arg1 string GUID
--- @return string
Osi.GetTemplate = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetTemplate = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterAppearOnTrailOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
CharacterAppearOnTrailOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string GUID
Osi.NRD_ActionStateGetGuidString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string GUID
NRD_ActionStateGetGuidString = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @return string Character GUID
Osi.CharacterCreateAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
--- @return string Character GUID
CharacterCreateAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
Osi.ItemAddedToContainer = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
ItemAddedToContainer = function (arg1, arg2) end

--- @param arg1 string
--- @return integer
Osi.IsSourceSkill = function (arg1) end

--- @param arg1 string
--- @return integer
IsSourceSkill = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return number
Osi.GetDistanceTo = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return number
GetDistanceTo = function (arg1, arg2) end

--- @return integer
Osi.IsSwitch = function () end

--- @return integer
IsSwitch = function () end

Osi.NRD_ProjectileLaunch = function () end

NRD_ProjectileLaunch = function () end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
Osi.SetVarFloat3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
SetVarFloat3 = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @return string GUID
Osi.CombatGetActiveEntity = function (arg1) end

--- @param arg1 integer
--- @return string GUID
CombatGetActiveEntity = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
Osi.GetVarFixedString = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
GetVarFixedString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.TradeEnds = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
TradeEnds = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.DialogStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
DialogStarted = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.ItemHasDeltaModifier = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
ItemHasDeltaModifier = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_Loop = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_Loop = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_Loop = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
NRD_Loop = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterAddToPlayerCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterAddToPlayerCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
Osi.GetItemForItemTemplateInInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
GetItemForItemTemplateInInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterRemoveSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterRemoveSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_BreathingMode = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_BreathingMode = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterRemovePreferredAiTargetTag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterRemovePreferredAiTargetTag = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
Osi.ItemDragToPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
ItemDragToPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @return integer
Osi.NRD_HitQryExecute = function (arg1) end

--- @param arg1 integer
--- @return integer
NRD_HitQryExecute = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.QuestIsClosed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
QuestIsClosed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
Osi.CharacterAppearOnTrailOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
CharacterAppearOnTrailOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.PartySetRepairPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
PartySetRepairPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.QuestAdd = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
QuestAdd = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.ClearFadeDone = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
ClearFadeDone = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterConsume = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterConsume = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterSetRelationFactionToFaction = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
CharacterSetRelationFactionToFaction = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.ItemAddDeltaModifier = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
ItemAddDeltaModifier = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanSpotCrimes = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanSpotCrimes = function (arg1) end

--- @param arg1 string Trigger GUID
Osi.TriggerUnregisterForPlayers = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerUnregisterForPlayers = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterReservePolymorphShape = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterReservePolymorphShape = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetCanJoinCombat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetCanJoinCombat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.PartyGetGold = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
PartyGetGold = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.ItemTemplateIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
ItemTemplateIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.ObjectSetDialogFlag = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
ObjectSetDialogFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.NRD_PlayerSetCustomDataString = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
NRD_PlayerSetCustomDataString = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.DialogSetVariableFixedStringForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
DialogSetVariableFixedStringForInstance = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 number
Osi.DialogSetVariableFloat = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 number
DialogSetVariableFloat = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.SkillActivated = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
SkillActivated = function (arg1, arg2) end

Osi.GameEnd = function () end

GameEnd = function () end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
Osi.OnCrimeRemoved = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
OnCrimeRemoved = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterUnlockedTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterUnlockedTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetInventoryGoldValue = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetInventoryGoldValue = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.CharacterAddExplorationExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
CharacterAddExplorationExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @return integer
Osi.IsCombatActive = function (arg1) end

--- @param arg1 integer
--- @return integer
IsCombatActive = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.CharacterCriticalHitBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
CharacterCriticalHitBy = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.ItemStatusRemoved = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
ItemStatusRemoved = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return number
Osi.NRD_MinReal = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return number
NRD_MinReal = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.CharacterStatusAttempt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
CharacterStatusAttempt = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string Character GUID
Osi.CharacterAssignToUser = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string Character GUID
CharacterAssignToUser = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
Osi.NRD_MinReal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
NRD_MinReal = function (arg1, arg2, arg3, arg4) end

Osi.OnArenaRoundForceEnded = function () end

OnArenaRoundForceEnded = function () end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.UnlockAchievement = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
UnlockAchievement = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterFreeze = function (arg1) end

--- @param arg1 string Character GUID
CharacterFreeze = function (arg1) end

--- @param arg1 string Item GUID
Osi.ItemRemove = function (arg1) end

--- @param arg1 string Item GUID
ItemRemove = function (arg1) end

--- @param arg1 string
--- @return string
Osi.NRD_StatGetType = function (arg1) end

--- @param arg1 string
--- @return string
NRD_StatGetType = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return string
Osi.NRD_StatusGetString = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return string
NRD_StatusGetString = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetStoryItem = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetStoryItem = function (arg1, arg2) end

--- @param arg1 string
--- @return string GUID
Osi.NRD_GuidString = function (arg1) end

--- @param arg1 string
--- @return string GUID
NRD_GuidString = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.UserGetGold = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
UserGetGold = function (arg1) end

--- @param arg1 integer
--- @return integer
Osi.NRD_Factorial = function (arg1) end

--- @param arg1 integer
--- @return integer
NRD_Factorial = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.SetTag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
SetTag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
Osi.CharacterMoveToAndTalkFailed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
CharacterMoveToAndTalkFailed = function (arg1, arg2, arg3) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.TriggerSetAtmosphere = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
TriggerSetAtmosphere = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterLostSightOfCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterLostSightOfCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
Osi.CharacterEnteredTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
CharacterEnteredTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterDisplayTextEnded = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterDisplayTextEnded = function (arg1, arg2) end

--- @param arg1 integer
--- @return integer
Osi.CrimeGetTension = function (arg1) end

--- @param arg1 integer
--- @return integer
CrimeGetTension = function (arg1) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
Osi.ItemTemplateRemoveFrom = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
ItemTemplateRemoveFrom = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.RequestTrade = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
RequestTrade = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
Osi.ItemEnteredTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
ItemEnteredTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterAddToParty = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterAddToParty = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
Osi.CharacterUsedSkillOnTarget = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
CharacterUsedSkillOnTarget = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
Osi.NRD_CharacterGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
NRD_CharacterGetString = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 integer
Osi.CrimeAreaSetTensionModifier = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 integer
CrimeAreaSetTensionModifier = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterLevelUp = function (arg1) end

--- @param arg1 string Character GUID
CharacterLevelUp = function (arg1) end

--- @param arg1 string Item GUID
--- @return string GUID
Osi.GetInventoryOwner = function (arg1) end

--- @param arg1 string Item GUID
--- @return string GUID
GetInventoryOwner = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterFollowCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterFollowCharacter = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.GameStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
GameStarted = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterSetStill = function (arg1) end

--- @param arg1 string Character GUID
CharacterSetStill = function (arg1) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
Osi.PlayEffectAtPositionAndRotation = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
PlayEffectAtPositionAndRotation = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 number
Osi.NRD_GameActionSetLifeTime = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 number
NRD_GameActionSetLifeTime = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemDestroyed = function (arg1) end

--- @param arg1 string Item GUID
ItemDestroyed = function (arg1) end

--- @param arg1 string
Osi.MoviePlaylistFinished = function (arg1) end

--- @param arg1 string
MoviePlaylistFinished = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
Osi.CharacterIgnoreCharacterActiveCrimes = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
CharacterIgnoreCharacterActiveCrimes = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 integer
--- @return string
Osi.ItemGetRuneItemTemplate = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
--- @return string
ItemGetRuneItemTemplate = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return string
Osi.String = function (arg1) end

--- @param arg1 string GUID
--- @return string
String = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterStopOriginIntroduction = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterStopOriginIntroduction = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
Osi.RuneInserted = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
RuneInserted = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string GUID
Osi.ObjectTransformed = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
ObjectTransformed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
Osi.DialogSetVariableFixedString = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
DialogSetVariableFixedString = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetCanInteract = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetCanInteract = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string Item GUID
Osi.NRD_SkillBarGetItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return string Item GUID
NRD_SkillBarGetItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_PlayerSetBaseTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_PlayerSetBaseTalent = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
--- @return number
--- @return number
Osi.NRD_Musketeer_Get_Random_Pos = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
--- @return number
--- @return number
NRD_Musketeer_Get_Random_Pos = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
Osi.FadeOutWhite = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
FadeOutWhite = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
Osi.ObjectTurnEnded = function (arg1) end

--- @param arg1 string GUID
ObjectTurnEnded = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
Osi.PlayAnimation = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
PlayAnimation = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 integer
--- @param arg4 string
Osi.FadeToBlack = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 integer
--- @param arg4 string
FadeToBlack = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
Osi.ItemLaunchIterator = function (arg1) end

--- @param arg1 string
ItemLaunchIterator = function (arg1) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_SaveFile = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_SaveFile = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.ObjectSourcePointAddRequest = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
ObjectSourcePointAddRequest = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.SysWasSleeping = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
SysWasSleeping = function (arg1) end

--- @param arg1 integer
Osi.FinalizeGameEndMovieQueue = function (arg1) end

--- @param arg1 integer
FinalizeGameEndMovieQueue = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
Osi.CanMoveItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
CanMoveItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.NRD_BreakOnCharacter = function (arg1) end

--- @param arg1 string Character GUID
NRD_BreakOnCharacter = function (arg1) end

--- @param arg1 integer
--- @param arg2 string Character GUID
Osi.SetHomesteadKeyState = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string Character GUID
SetHomesteadKeyState = function (arg1, arg2) end

--- @param arg1 integer
Osi.EnableSendToHomestead = function (arg1) end

--- @param arg1 integer
EnableSendToHomestead = function (arg1) end

Osi.SaveFeedback = function () end

SaveFeedback = function () end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
Osi.DialogSetVariableInt = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 integer
DialogSetVariableInt = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return integer
Osi.IsCharacterCreationLevel = function (arg1) end

--- @param arg1 string
--- @return integer
IsCharacterCreationLevel = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
Osi.TeleportToRandomPosition = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
TeleportToRandomPosition = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
Osi.CrimeIsRegistered = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string Character GUID
CrimeIsRegistered = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.ItemTemplateAddTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
ItemTemplateAddTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
Osi.ItemMoved = function (arg1) end

--- @param arg1 string Item GUID
ItemMoved = function (arg1) end

--- @param arg1 string
Osi.OnArenaRoundStarted = function (arg1) end

--- @param arg1 string
OnArenaRoundStarted = function (arg1) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerModulo = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerModulo = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsInCombat = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsInCombat = function (arg1) end

--- @param arg1 integer
--- @return string GUID
Osi.GetTextEventParamUUID = function (arg1) end

--- @param arg1 integer
--- @return string GUID
GetTextEventParamUUID = function (arg1) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
Osi.ItemTemplateAddedToContainer = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
ItemTemplateAddedToContainer = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return string Character GUID
Osi.ItemGetOriginalOwner = function (arg1) end

--- @param arg1 string Item GUID
--- @return string Character GUID
ItemGetOriginalOwner = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterSetAnimationSetOverride = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterSetAnimationSetOverride = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.ItemTagIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
ItemTagIsInCharacterInventory = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
Osi.ObjectFlagSet = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
ObjectFlagSet = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.CharacterAppear = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
CharacterAppear = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
Osi.NRD_OnHeal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
NRD_OnHeal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterUsedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterUsedItem = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_ProjectileSetString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_ProjectileSetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterLevelUpTo = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterLevelUpTo = function (arg1, arg2) end

--- @param arg1 integer
--- @return integer
Osi.CrimeIsContinuous = function (arg1) end

--- @param arg1 integer
--- @return integer
CrimeIsContinuous = function (arg1) end

--- @param arg1 string
--- @param arg2 string Trigger GUID
--- @return integer
Osi.CharacterTemplatesInTrigger = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Trigger GUID
--- @return integer
CharacterTemplatesInTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsSpectating = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsSpectating = function (arg1) end

--- @param arg1 integer
--- @return integer
Osi.CombatGetNumberOfInvolvedPartyMembers = function (arg1) end

--- @param arg1 integer
--- @return integer
CombatGetNumberOfInvolvedPartyMembers = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
Osi.CharacterMissedBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string Character GUID
CharacterMissedBy = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Character GUID
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.NRD_ApplyDamageOnMove = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Character GUID
--- @param arg4 number
--- @param arg5 number
--- @return integer
NRD_ApplyDamageOnMove = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealMin = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealMin = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 number
Osi.NRD_ItemSetPermanentBoostReal = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 number
NRD_ItemSetPermanentBoostReal = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealMax = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealMax = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.SetGameEndMovie = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
SetGameEndMovie = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsPlayer = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsPlayer = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.CreateKickstarterMessageInABottleItemAtTrigger = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
CreateKickstarterMessageInABottleItemAtTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CloseJournalMystery = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CloseJournalMystery = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
Osi.CharacterDisappearOutOfSight = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
CharacterDisappearOutOfSight = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
Osi.ActivateTrade = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
ActivateTrade = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Trigger GUID
Osi.CrimeAreaResetTensionModifier = function (arg1) end

--- @param arg1 string Trigger GUID
CrimeAreaResetTensionModifier = function (arg1) end

Osi.NotifyCharacterCreationFinished = function () end

NotifyCharacterCreationFinished = function () end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
Osi.CharacterCharacterSetEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
CharacterCharacterSetEvent = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.NRD_StringCompare = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
NRD_StringCompare = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanIgnoreActiveCrimes = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanIgnoreActiveCrimes = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.NRD_HitStatusClearAllDamage = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
NRD_HitStatusClearAllDamage = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterRequestsHomestead = function (arg1) end

--- @param arg1 string Character GUID
CharacterRequestsHomestead = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemSetOwner = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemSetOwner = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_PlayerSetCustomDataInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_PlayerSetCustomDataInt = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @return string
Osi.GetUUID = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetUUID = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterHasDLC = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterHasDLC = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterIsCrimeEnabled = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterIsCrimeEnabled = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
Osi.CanLockpickItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
CanLockpickItem = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
Osi.NRD_ProjectileSetVector3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
NRD_ProjectileSetVector3 = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.ItemTemplateIsInUserInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
ItemTemplateIsInUserInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Item GUID
Osi.CharacterUsedItemTemplate = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string Item GUID
CharacterUsedItemTemplate = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.SysSetGoalSleeping = function (arg1) end

--- @param arg1 string
SysSetGoalSleeping = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterStopCrimeWithID = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterStopCrimeWithID = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return integer
Osi.NRD_IsModLoaded = function (arg1) end

--- @param arg1 string GUID
--- @return integer
NRD_IsModLoaded = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
Osi.CreateProjectileStrikeAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
CreateProjectileStrikeAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
Osi.KillCombatFor = function (arg1) end

--- @param arg1 string Character GUID
KillCombatFor = function (arg1) end

--- @param arg1 string
--- @param arg2 string
Osi.MapMarkerChangeLevel = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
MapMarkerChangeLevel = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
Osi.ItemRemovedFromContainer = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Item GUID
ItemRemovedFromContainer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterRemoveTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterRemoveTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.AddSecret = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
AddSecret = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
Osi.ItemTemplateOpening = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
ItemTemplateOpening = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
Osi.DialogStartCrimeDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
--- @param arg5 string GUID
--- @param arg6 string GUID
--- @param arg7 string GUID
--- @param arg8 string GUID
--- @return integer
DialogStartCrimeDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string
Osi.NRD_ItemGetString = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return string
NRD_ItemGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.OnCompanionDismissed = function (arg1) end

--- @param arg1 string Character GUID
OnCompanionDismissed = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.GetVarInteger = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
GetVarInteger = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsStoryItem = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsStoryItem = function (arg1) end

--- @param arg1 string GUID
--- @return integer
Osi.ObjectIsOnStage = function (arg1) end

--- @param arg1 string GUID
--- @return integer
ObjectIsOnStage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 string Item GUID
--- @param arg5 string Item GUID
--- @param arg6 string Item GUID
Osi.CharacterStoppedCombiningItems = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 string Item GUID
--- @param arg5 string Item GUID
--- @param arg6 string Item GUID
CharacterStoppedCombiningItems = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
--- @return string Character GUID
Osi.CharacterCreateOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
--- @return string Character GUID
CharacterCreateOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterAppearOnTrailOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string
CharacterAppearOnTrailOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.NRD_SkillBarClear = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
NRD_SkillBarClear = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 number
Osi.NRD_StatusSetReal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 number
NRD_StatusSetReal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetBaseAttribute = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetBaseAttribute = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.ItemSetUnEquipped = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
ItemSetUnEquipped = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
Osi.CanPickupItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
CanPickupItem = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.ObjectSetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
ObjectSetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @return integer
Osi.ItemIsInPartyInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @return integer
ItemIsInPartyInventory = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return boolean Did the query succeed?
Osi.NRD_StatExists = function (arg1) end

--- @param arg1 string
--- @return boolean Did the query succeed?
NRD_StatExists = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
Osi.CharacterUseSkill = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
CharacterUseSkill = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
Osi.CharacterTransformAppearanceToWithEquipmentSet = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
CharacterTransformAppearanceToWithEquipmentSet = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @return string
Osi.GetStatString = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetStatString = function (arg1) end

--- @param arg1 string
Osi.CharacterLaunchIterator = function (arg1) end

--- @param arg1 string
CharacterLaunchIterator = function (arg1) end

--- @param arg1 string
Osi.MusicPlayGeneral = function (arg1) end

--- @param arg1 string
MusicPlayGeneral = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return string Character GUID
--- @return number
Osi.GetClosestPlayerToPosition = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return string Character GUID
--- @return number
GetClosestPlayerToPosition = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
Osi.DialogActorJoined = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string GUID
DialogActorJoined = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
Osi.NRD_StatusSetGuidString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
NRD_StatusSetGuidString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
Osi.ClearScriptframe = function (arg1) end

--- @param arg1 string GUID
ClearScriptframe = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
Osi.DialogEnded = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
DialogEnded = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.UnlockJournalMystery = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
UnlockJournalMystery = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return string Item GUID
Osi.GetSurfaceGroundOwnerAt = function (arg1) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return string Item GUID
GetSurfaceGroundOwnerAt = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsPolymorphInteractionDisabled = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsPolymorphInteractionDisabled = function (arg1) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
Osi.UserMakeWar = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @param arg3 integer
UserMakeWar = function (arg1, arg2, arg3) end

Osi.ShutdownCrimeSystem = function () end

ShutdownCrimeSystem = function () end

--- @param arg1 string Character GUID
Osi.CharacterAddedToGroup = function (arg1) end

--- @param arg1 string Character GUID
CharacterAddedToGroup = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterMakeStoryNpc = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterMakeStoryNpc = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @return integer
Osi.UserTransferTaggedLocalItems = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @return integer
UserTransferTaggedLocalItems = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsFemale = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsFemale = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.QuestArchive = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
QuestArchive = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterFlushQueue = function (arg1) end

--- @param arg1 string Character GUID
CharacterFlushQueue = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterTraitChanged = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterTraitChanged = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string Character GUID
--- @return integer
Osi.NRD_CreateGameObjectMove = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string
--- @param arg6 string Character GUID
--- @return integer
NRD_CreateGameObjectMove = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @return number
Osi.CharacterGetMagicArmorPercentage = function (arg1) end

--- @param arg1 string Character GUID
--- @return number
CharacterGetMagicArmorPercentage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.PlayMovieForDialog = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
PlayMovieForDialog = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CustomBookUIClosed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CustomBookUIClosed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string Character GUID
--- @param arg7 string Item GUID
Osi.ItemTemplateCombinedWithItemTemplate = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string Character GUID
--- @param arg7 string Item GUID
ItemTemplateCombinedWithItemTemplate = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterSetCustomTradeTreasure = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterSetCustomTradeTreasure = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterDying = function (arg1) end

--- @param arg1 string Character GUID
CharacterDying = function (arg1) end

--- @param arg1 string Trigger GUID
Osi.TriggerUnregisterForItems = function (arg1) end

--- @param arg1 string Trigger GUID
TriggerUnregisterForItems = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterDisableCrime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterDisableCrime = function (arg1, arg2) end

--- @param arg1 string
Osi.NRD_DebugLog = function (arg1) end

--- @param arg1 string
NRD_DebugLog = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterDestroyedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterDestroyedItem = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsInInventory = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsInInventory = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ObjectShareFlag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ObjectShareFlag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterAppearOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 integer
--- @param arg5 string
CharacterAppearOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
Osi.CharacterItemEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
CharacterItemEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.PartyAddCharismaExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
PartyAddCharismaExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterRecruitCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterRecruitCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.AddFeedbackString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
AddFeedbackString = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string
Osi.QuestCategoryChanged = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
QuestCategoryChanged = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.GetStatusTurns = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
GetStatusTurns = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.QuestIsShared = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
QuestIsShared = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
Osi.CharacterCanSee = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
CharacterCanSee = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 integer
Osi.NRD_StatusSetInt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 integer
NRD_StatusSetInt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.SkillDeactivated = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
SkillDeactivated = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.CharacterUsedSkill = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
CharacterUsedSkill = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
Osi.CameraReachedNode = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 integer
CameraReachedNode = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterAddAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterAddAbility = function (arg1, arg2, arg3) end

--- @param arg1 integer
Osi.DifficultyChanged = function (arg1) end

--- @param arg1 integer
DifficultyChanged = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.QuestAddSubquest = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
QuestAddSubquest = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
Osi.CreateSurface = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
CreateSurface = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_ItemSetPermanentBoostTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
NRD_ItemSetPermanentBoostTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetCanTrade = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetCanTrade = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterSetRelationIndivFactionToFaction = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterSetRelationIndivFactionToFaction = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_ForLoop = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_ForLoop = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterEnableWaypointUsage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterEnableWaypointUsage = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_ForLoop = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
NRD_ForLoop = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_PlayerSetBaseAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_PlayerSetBaseAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemUnEquipFailed = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemUnEquipFailed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterResurrectCustom = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterResurrectCustom = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
Osi.CharacterAppearOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 string
CharacterAppearOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.ItemTemplateRemoveFromUser = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
ItemTemplateRemoveFromUser = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
Osi.PlayEffectAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
PlayEffectAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
Osi.NRD_StatusSetVector3 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
NRD_StatusSetVector3 = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 integer
--- @param arg9 string Character GUID
Osi.ItemToTransform = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @param arg8 integer
--- @param arg9 string Character GUID
ItemToTransform = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_CharacterDisableTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_CharacterDisableTalent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsDead = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsDead = function (arg1) end

--- @param arg1 string Character GUID
Osi.FleeCombat = function (arg1) end

--- @param arg1 string Character GUID
FleeCombat = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterIsAlly = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterIsAlly = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.RequestProcessed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
RequestProcessed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 string Item GUID
--- @param arg5 string Item GUID
--- @param arg6 string Item GUID
--- @param arg7 integer
Osi.CanCombineItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 string Item GUID
--- @param arg5 string Item GUID
--- @param arg6 string Item GUID
--- @param arg7 integer
CanCombineItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @return string
Osi.NRD_Substring = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @return string
NRD_Substring = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.ShowCredits = function (arg1) end

--- @param arg1 string Character GUID
ShowCredits = function (arg1) end

--- @param arg1 integer
--- @return string Character GUID
Osi.GetCurrentCharacter = function (arg1) end

--- @param arg1 integer
--- @return string Character GUID
GetCurrentCharacter = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
Osi.DialogSetVariableIntForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
DialogSetVariableIntForInstance = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @return integer
Osi.CombatGetNumberOfInvolvedPlayers = function (arg1) end

--- @param arg1 integer
--- @return integer
CombatGetNumberOfInvolvedPlayers = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.NRD_SkillBarSetSkill = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
NRD_SkillBarSetSkill = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsEquipable = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsEquipable = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @return number
--- @return number
--- @return number
Osi.FindValidPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @return number
--- @return number
--- @return number
FindValidPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.SetScriptframe = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
SetScriptframe = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
Osi.CharacterLookAt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
CharacterLookAt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
Osi.PuzzleUIUsed = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string
--- @param arg5 integer
PuzzleUIUsed = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
Osi.CharacterTeleportToFleeWaypoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
CharacterTeleportToFleeWaypoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsInFightMode = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsInFightMode = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealSum = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealSum = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterLeveledUp = function (arg1) end

--- @param arg1 string Character GUID
CharacterLeveledUp = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanUseWaypoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanUseWaypoints = function (arg1) end

--- @param arg1 number
--- @return number
Osi.NRD_Log = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Log = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
Osi.NRD_RootTemplateGetReal = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
NRD_RootTemplateGetReal = function (arg1, arg2) end

--- @param arg1 string
Osi.DebugBreak = function (arg1) end

--- @param arg1 string
DebugBreak = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanFight = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanFight = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
Osi.CharacterAttack = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
CharacterAttack = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @return integer
Osi.ItemIsInUserInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @return integer
ItemIsInUserInventory = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @return number
Osi.NRD_Floor = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Floor = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterUsedItemFailed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterUsedItemFailed = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.NRD_IterateStatuses = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
NRD_IterateStatuses = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.ItemEnteredRegion = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
ItemEnteredRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.NRD_CharacterIterateSkills = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
NRD_CharacterIterateSkills = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
Osi.DualDialogRequested = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
DualDialogRequested = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.SetFaction = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
SetFaction = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemOpened = function (arg1) end

--- @param arg1 string Item GUID
ItemOpened = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_CharacterSetStatInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_CharacterSetStatInt = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetAmount = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetAmount = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
Osi.FadeIn = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
FadeIn = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsDestroyed = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsDestroyed = function (arg1) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
Osi.CrimeInterrogationDone = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 integer
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
CrimeInterrogationDone = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.CharacterReservedUserIDChanged = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
CharacterReservedUserIDChanged = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
Osi.StopCameraSpline = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string Character GUID
StopCameraSpline = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
Osi.NRD_StatAttributeExists = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return boolean Did the query succeed?
NRD_StatAttributeExists = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
Osi.TriggerSetSoundRTPC = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 integer
TriggerSetSoundRTPC = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsPartyMember = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsPartyMember = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
Osi.CharacterTransformFromCharacter = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 integer
--- @param arg8 integer
--- @param arg9 integer
CharacterTransformFromCharacter = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterAddSkill = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterAddSkill = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.IsSkillActive = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
IsSkillActive = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 integer
Osi.ItemMovedFromTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 integer
ItemMovedFromTo = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string GUID
Osi.LoadPartyPreset = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
LoadPartyPreset = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.OpenMessageBox = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
OpenMessageBox = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
Osi.PlayLoopEffect = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
PlayLoopEffect = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetDoNotFaceFlag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetDoNotFaceFlag = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.FadeOutDone = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
FadeOutDone = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return number
Osi.NRD_StatusGetReal = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return number
NRD_StatusGetReal = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
Osi.NRD_SkillGetInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
NRD_SkillGetInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.SetTagPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
SetTagPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string GUID
Osi.CharacterGetEquippedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string GUID
CharacterGetEquippedItem = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.ObjectGetFlag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
ObjectGetFlag = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
Osi.NRD_StatGetString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
NRD_StatGetString = function (arg1, arg2) end

--- @param arg1 string
--- @return number
Osi.NRD_StringToReal = function (arg1) end

--- @param arg1 string
--- @return number
NRD_StringToReal = function (arg1) end

--- @param arg1 string Item GUID
Osi.ItemOpen = function (arg1) end

--- @param arg1 string Item GUID
ItemOpen = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterPrecogDying = function (arg1) end

--- @param arg1 string Character GUID
CharacterPrecogDying = function (arg1) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return number
Osi.GetClosestAlivePlayer = function (arg1) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return number
GetClosestAlivePlayer = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetForceSynch = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetForceSynch = function (arg1, arg2) end

Osi.CreditsEnded = function () end

CreditsEnded = function () end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
Osi.DialogSetVariableTranslatedStringForInstance = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
DialogSetVariableTranslatedStringForInstance = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsTorch = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsTorch = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.CharacterTeleportPartiesToTrigger = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
CharacterTeleportPartiesToTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterRemoveSummons = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterRemoveSummons = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
Osi.TriggerRegisterForCharacter = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
TriggerRegisterForCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 string
--- @param arg6 integer
--- @param arg7 number
Osi.CharacterMoveToAndTalk = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 string
--- @param arg6 integer
--- @param arg7 number
CharacterMoveToAndTalk = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
Osi.CharacterAppearOnTrailOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string GUID
--- @param arg4 string
--- @param arg5 string
CharacterAppearOnTrailOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsClosed = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsClosed = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterPickpocketEnter = function (arg1) end

--- @param arg1 string Character GUID
CharacterPickpocketEnter = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @return integer
Osi.NRD_SkillBarFindItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @return integer
NRD_SkillBarFindItem = function (arg1, arg2) end

--- @param arg1 string
--- @return string
Osi.NRD_LoadFile = function (arg1) end

--- @param arg1 string
--- @return string
NRD_LoadFile = function (arg1) end

Osi.AutoSave = function () end

AutoSave = function () end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.CharacterRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
CharacterRemoveTaggedLocalItems = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return boolean Did the query succeed?
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return boolean Did the query succeed?
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string Character GUID
--- @return number
Osi.GetClosestPlayerWithTalent = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string Character GUID
--- @return number
GetClosestPlayerWithTalent = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Item GUID
--- @return string
--- @return string
--- @return integer
Osi.NRD_ItemGetGenerationParams = function (arg1) end

--- @param arg1 string Item GUID
--- @return string
--- @return string
--- @return integer
NRD_ItemGetGenerationParams = function (arg1) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Item GUID
--- @return string
--- @return string
--- @return integer
--- @return integer
Osi.NRD_ItemGetGenerationParams = function (arg1) end

--- @param arg1 string Item GUID
--- @return string
--- @return string
--- @return integer
--- @return integer
NRD_ItemGetGenerationParams = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsLocked = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsLocked = function (arg1) end

--- @param arg1 string
--- @param arg2 string
Osi.NRD_ItemCloneSetString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
NRD_ItemCloneSetString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
Osi.UserRest = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
UserRest = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @return integer
Osi.DialogRemoveActorFromDialog = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @return integer
DialogRemoveActorFromDialog = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string
Osi.CrimeInterrogationRequest = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 string Character GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @param arg8 string
CrimeInterrogationRequest = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
Osi.CharacterFindTaggedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
CharacterFindTaggedItem = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
Osi.NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string
--- @param arg2 string
--- @param arg3 string
--- @param arg4 string
--- @param arg5 string
--- @param arg6 string
--- @param arg7 string
--- @param arg8 string
--- @param arg9 string
--- @param arg10 string
--- @param arg11 string
--- @return string
--- @return string
--- @return string
--- @return string
--- @return string
NRD_LuaQuery10 = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string
Osi.NRD_ItemSetPermanentBoostString = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string
NRD_ItemSetPermanentBoostString = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return string
Osi.QuestGetBroadcastLevel = function (arg1) end

--- @param arg1 string
--- @return string
QuestGetBroadcastLevel = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 number
Osi.CreatePuddle = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 integer
--- @param arg6 integer
--- @param arg7 number
CreatePuddle = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ActionStateGetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_ActionStateGetInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterResurrectAndResetXPReward = function (arg1) end

--- @param arg1 string Character GUID
CharacterResurrectAndResetXPReward = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 integer
Osi.RuneRemoved = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string Item GUID
--- @param arg4 integer
RuneRemoved = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 integer
Osi.NRD_ProjectileAddDamage = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
NRD_ProjectileAddDamage = function (arg1, arg2) end

--- @param arg1 integer
--- @return number
Osi.Real = function (arg1) end

--- @param arg1 integer
--- @return number
Real = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.PartySetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
PartySetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetLevel = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetLevel = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterGetHenchmanPresetPrice = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterGetHenchmanPresetPrice = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.PersuasionResult = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
PersuasionResult = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
Osi.DialogGetInvolvedNPC = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string GUID
DialogGetInvolvedNPC = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.ShowMapMarker = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
ShowMapMarker = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
Osi.GetVarString = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
GetVarString = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.ItemStatusAttempt = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
ItemStatusAttempt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return string Character GUID
Osi.CharacterGetOwner = function (arg1) end

--- @param arg1 string Character GUID
--- @return string Character GUID
CharacterGetOwner = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
Osi.NRD_CharacterGetCustomStat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @return integer
NRD_CharacterGetCustomStat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
Osi.CharacterPlayHUDSoundResource = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
CharacterPlayHUDSoundResource = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterGhostRevealed = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterGhostRevealed = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.AutomatedDialogStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
AutomatedDialogStarted = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterLeftRegion = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterLeftRegion = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.OnMutatorEnabledAtTurn = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
OnMutatorEnabledAtTurn = function (arg1, arg2) end

--- @param arg1 string
Osi.SysActivateGoal = function (arg1) end

--- @param arg1 string
SysActivateGoal = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CombatGetIDForCharacter = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CombatGetIDForCharacter = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetImmortal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetImmortal = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 integer
--- @return number
Osi.NRD_Pow = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 integer
--- @return number
NRD_Pow = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemReceivedDamage = function (arg1) end

--- @param arg1 string Item GUID
ItemReceivedDamage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterCloneSkillsTo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterCloneSkillsTo = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
Osi.GetSurfaceTurns = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
GetSurfaceTurns = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterMoveToAndTalkRequestDialog = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
--- @param arg5 string
CharacterMoveToAndTalkRequestDialog = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
Osi.CharacterClearFollow = function (arg1) end

--- @param arg1 string Character GUID
CharacterClearFollow = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.UserSetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
UserSetFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterMoveWeaponsToContainer = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterMoveWeaponsToContainer = function (arg1, arg2) end

--- @param arg1 integer
Osi.StopLoopEffect = function (arg1) end

--- @param arg1 integer
StopLoopEffect = function (arg1) end

--- @param arg1 integer
Osi.NRD_GameActionDestroy = function (arg1) end

--- @param arg1 integer
NRD_GameActionDestroy = function (arg1) end

--- @param arg1 integer
Osi.DialogResume = function (arg1) end

--- @param arg1 integer
DialogResume = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
Osi.PartyAddExplorationExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 integer
PartyAddExplorationExperience = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 number
Osi.CharacterJitterbugTeleport = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 number
--- @param arg4 number
CharacterJitterbugTeleport = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterAddPreferredAiTargetTag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterAddPreferredAiTargetTag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
Osi.PlaySoundResource = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
PlaySoundResource = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemDropped = function (arg1) end

--- @param arg1 string Item GUID
ItemDropped = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterRemoveFromPlayerCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterRemoveFromPlayerCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterPreMovedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterPreMovedItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsMoving = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsMoving = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterStopFollow = function (arg1) end

--- @param arg1 string Character GUID
CharacterStopFollow = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterDisplayTextWithParam = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterDisplayTextWithParam = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
Osi.GetSurfaceSize = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @return integer
GetSurfaceSize = function (arg1, arg2) end

--- @param arg1 string
Osi.ReadyCheckPassed = function (arg1) end

--- @param arg1 string
ReadyCheckPassed = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
Osi.TriggerUnregisterForCharacter = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
TriggerUnregisterForCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetDetached = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetDetached = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
Osi.QuestHasUpdate = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
--- @return integer
QuestHasUpdate = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
Osi.ItemRotateToAngleY = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 number
--- @param arg3 number
ItemRotateToAngleY = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
Osi.CharacterAppearAt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 string
CharacterAppearAt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterCanTrade = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterCanTrade = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
Osi.NRD_HitClearDamage = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
NRD_HitClearDamage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return string Item GUID
Osi.PartyFindTaggedItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return string Item GUID
PartyFindTaggedItem = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
Osi.ItemUnEquipped = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string Character GUID
ItemUnEquipped = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
--- @return number
--- @return number
Osi.GetVarFloat3 = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
--- @return number
--- @return number
GetVarFloat3 = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ObjectHasStatusType = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
NRD_ObjectHasStatusType = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.GameModeStarted = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
GameModeStarted = function (arg1, arg2) end

--- @param arg1 integer
--- @return string
Osi.GetUserProfileID = function (arg1) end

--- @param arg1 integer
--- @return string
GetUserProfileID = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterSetCustomName = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterSetCustomName = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterChangeToSummon = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterChangeToSummon = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ReadyCheckStart = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ReadyCheckStart = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
Osi.ItemTemplateEnteredTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Trigger GUID
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
ItemTemplateEnteredTrigger = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string GUID
--- @return integer
Osi.IsInArena = function (arg1) end

--- @param arg1 string GUID
--- @return integer
IsInArena = function (arg1) end

Osi.CrimeClearAll = function () end

CrimeClearAll = function () end

--- @param arg1 string GUID
--- @return string
Osi.GetSurfaceCloudAt = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetSurfaceCloudAt = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.ItemStatusChange = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 string GUID
ItemStatusChange = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
Osi.ItemDestroy = function (arg1) end

--- @param arg1 string Item GUID
ItemDestroy = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
Osi.TriggerSetItemOwner = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string Character GUID
TriggerSetItemOwner = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @param arg6 integer
--- @param arg7 string
Osi.CharacterAppearAtPositionOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @param arg6 integer
--- @param arg7 string
CharacterAppearAtPositionOutOfSightToObject = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Item GUID
--- @return integer
Osi.DoorIsClosing = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
DoorIsClosing = function (arg1) end

--- @param arg1 number
--- @return number
Osi.NRD_Sin = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Sin = function (arg1) end

--- @param arg1 integer
--- @param arg2 string
Osi.UserEvent = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
UserEvent = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return number
Osi.NRD_MaxReal = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @return number
NRD_MaxReal = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
Osi.ItemTemplateIsInPartyInventory = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
--- @return integer
ItemTemplateIsInPartyInventory = function (arg1, arg2, arg3) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
Osi.NRD_MaxReal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return number
NRD_MaxReal = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterStoppedUsingItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterStoppedUsingItem = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 number
Osi.RemoveSurfaceLayer = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 number
RemoveSurfaceLayer = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
Osi.NRD_RootTemplateGetString = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return string
NRD_RootTemplateGetString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddSourcePoints = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddSourcePoints = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
Osi.CharacterUnequipItem = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
CharacterUnequipItem = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemGetHealthPoints = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemGetHealthPoints = function (arg1) end

--- @param arg1 integer
--- @return string
Osi.GetDebugItem = function (arg1) end

--- @param arg1 integer
--- @return string
GetDebugItem = function (arg1) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string Trigger GUID
--- @return integer
Osi.PositionIsInTrigger = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string Trigger GUID
--- @return integer
PositionIsInTrigger = function (arg1, arg2, arg3, arg4) end

--- @param arg1 integer
Osi.EndCombat = function (arg1) end

--- @param arg1 integer
EndCombat = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_ItemSetPermanentBoostAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @param arg3 integer
NRD_ItemSetPermanentBoostAbility = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.UserClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
UserClearFlag = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.TransferItemsToParty = function (arg1) end

--- @param arg1 string Character GUID
TransferItemsToParty = function (arg1) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @return integer
Osi.CrimeAddCriminal = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @return integer
CrimeAddCriminal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
Osi.CharacterItemSetEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
CharacterItemSetEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
Osi.CharacterCharacterEvent = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 string
CharacterCharacterEvent = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @return integer
Osi.DialogStartPartyDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string
--- @param arg2 integer
--- @param arg3 integer
--- @param arg4 string Character GUID
--- @param arg5 string Character GUID
--- @param arg6 string Character GUID
--- @param arg7 string Character GUID
--- @return integer
DialogStartPartyDialog = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.ObjectGetDialogFlag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
ObjectGetDialogFlag = function (arg1, arg2) end

--- @param arg1 string GUID
Osi.DialogRequestStop = function (arg1) end

--- @param arg1 string GUID
DialogRequestStop = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
--- @param arg7 string
Osi.CharacterAppearAtPositionOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
--- @param arg7 string
CharacterAppearAtPositionOutOfSightToCustom = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddAbilityPoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddAbilityPoint = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
Osi.RealSubtract = function (arg1, arg2) end

--- @param arg1 number
--- @param arg2 number
--- @return number
RealSubtract = function (arg1, arg2) end

--- @param arg1 string
--- @return integer
Osi.IsGameLevel = function (arg1) end

--- @param arg1 string
--- @return integer
IsGameLevel = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
Osi.FadeOutBlack = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 string
FadeOutBlack = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
Osi.AutomatedDialogEnded = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
AutomatedDialogEnded = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
Osi.CharacterCloseStoryElementUI = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
CharacterCloseStoryElementUI = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return integer
Osi.NRD_StatusGetInt = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return integer
NRD_StatusGetInt = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
Osi.CharacterStatusApplied = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string GUID
CharacterStatusApplied = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddAttributePoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddAttributePoint = function (arg1, arg2) end

--- @param arg1 string
Osi.GlobalClearFlag = function (arg1) end

--- @param arg1 string
GlobalClearFlag = function (arg1) end

--- @return integer
Osi.IsHardcoreMode = function () end

--- @return integer
IsHardcoreMode = function () end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetSummonLifetime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetSummonLifetime = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
Osi.UnlockWaypoint = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Trigger GUID
--- @param arg3 string Character GUID
UnlockWaypoint = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
Osi.StringContains = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return integer
StringContains = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.MusicPlayOnCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
MusicPlayOnCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
Osi.CharacterDieImmediate = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string
--- @param arg4 string GUID
CharacterDieImmediate = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
Osi.TriggerRemoveAllItemTemplates = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
TriggerRemoveAllItemTemplates = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterHasLinkedGhost = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterHasLinkedGhost = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSendGlobalCombatCounter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSendGlobalCombatCounter = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ItemDrop = function (arg1) end

--- @param arg1 string Item GUID
ItemDrop = function (arg1) end

--- @param arg1 string
Osi.GameEventSet = function (arg1) end

--- @param arg1 string
GameEventSet = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterAttachToGroup = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterAttachToGroup = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string GUID
Osi.CharacterReceivedDamage = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @param arg3 string GUID
CharacterReceivedDamage = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterDetachFromGroup = function (arg1) end

--- @param arg1 string Character GUID
CharacterDetachFromGroup = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
Osi.NRD_OnStatusAttempt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @param arg3 integer
--- @param arg4 string GUID
NRD_OnStatusAttempt = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.HasAppliedStatus = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
HasAppliedStatus = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.TeleportRequestMovie = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
TeleportRequestMovie = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.OpenCustomBookUI = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
OpenCustomBookUI = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterStopAllEffectsWithName = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterStopAllEffectsWithName = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
Osi.NRD_ObjectSetInternalFlag = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 integer
NRD_ObjectSetInternalFlag = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
Osi.RegisterWaypoint = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
RegisterWaypoint = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
Osi.GetVarFloat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return number
GetVarFloat = function (arg1, arg2) end

Osi.NRD_ItemCloneResetProgression = function () end

NRD_ItemCloneResetProgression = function () end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ObjectLostTag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ObjectLostTag = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
Osi.NRD_StatusIteratorEvent = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 string
--- @param arg4 integer
NRD_StatusIteratorEvent = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 string Character GUID
--- @param arg7 string Item GUID
--- @param arg8 integer
Osi.CharacterStoleItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 string Character GUID
--- @param arg7 string Item GUID
--- @param arg8 integer
CharacterStoleItem = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 number
Osi.RemoveSurfaceLayerAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 integer
--- @param arg5 number
RemoveSurfaceLayerAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.ProgressAchievement = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
ProgressAchievement = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string Character GUID
Osi.CombatGetInvolvedPartyMember = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return string Character GUID
CombatGetInvolvedPartyMember = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return number
--- @return number
--- @return number
Osi.GetPosition = function (arg1) end

--- @param arg1 string GUID
--- @return number
--- @return number
--- @return number
GetPosition = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterAddTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterAddTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterUsedLadder = function (arg1) end

--- @param arg1 string Character GUID
CharacterUsedLadder = function (arg1) end

--- @param arg1 string Character GUID
Osi.CharacterUnfreeze = function (arg1) end

--- @param arg1 string Character GUID
CharacterUnfreeze = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
Osi.CharacterUseItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
CharacterUseItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.CharacterAppearCustom = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
CharacterAppearCustom = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddTalentPoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddTalentPoint = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
Osi.CharacterSetTeleportMovie = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
CharacterSetTeleportMovie = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.ItemTemplateRemoveFromParty = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
--- @param arg3 integer
ItemTemplateRemoveFromParty = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterRemoveAllPartyFollowers = function (arg1) end

--- @param arg1 string Character GUID
CharacterRemoveAllPartyFollowers = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
--- @param arg7 integer
Osi.ItemMoveToTrigger = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Item GUID
--- @param arg2 string Trigger GUID
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
--- @param arg7 integer
ItemMoveToTrigger = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_CharacterIsTalentDisabled = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_CharacterIsTalentDisabled = function (arg1, arg2) end

--- @param arg1 string Trigger GUID
--- @return number
--- @return number
--- @return number
Osi.GetRandomPositionInTrigger = function (arg1) end

--- @param arg1 string Trigger GUID
--- @return number
--- @return number
--- @return number
GetRandomPositionInTrigger = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterApplyRacePreset = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterApplyRacePreset = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.PartyGetFlag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
PartyGetFlag = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.NRD_Client_Refresh_Hotbar = function (arg1) end

--- @param arg1 string Character GUID
NRD_Client_Refresh_Hotbar = function (arg1) end

--- @param arg1 string
--- @return string GUID
Osi.NRD_GetCustomStat = function (arg1) end

--- @param arg1 string
--- @return string GUID
NRD_GetCustomStat = function (arg1) end

--- @param arg1 string GUID
Osi.JumpToTurn = function (arg1) end

--- @param arg1 string GUID
JumpToTurn = function (arg1) end

Osi.ShowGameOverMenu = function () end

ShowGameOverMenu = function () end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return integer
Osi.NRD_HitPrepare = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @return integer
NRD_HitPrepare = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return number
Osi.NRD_ItemGetPermanentBoostReal = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return number
NRD_ItemGetPermanentBoostReal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.QuestShared = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
QuestShared = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string
--- @return string
Osi.StringConcatenate = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
--- @return string
StringConcatenate = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.ShowError = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
ShowError = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetCrimeDialog = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetCrimeDialog = function (arg1) end

--- @param arg1 string
--- @param arg2 string Item GUID
Osi.ItemTemplateMoved = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
ItemTemplateMoved = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string
Osi.CharacterAppearOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 integer
--- @param arg4 integer
--- @param arg5 string
CharacterAppearOutOfSightTo = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
Osi.ReadyCheckFailed = function (arg1) end

--- @param arg1 string
ReadyCheckFailed = function (arg1) end

--- @param arg1 string
Osi.IterateUsers = function (arg1) end

--- @param arg1 string
IterateUsers = function (arg1) end

--- @param arg1 string
--- @return string
Osi.GetHealStat = function (arg1) end

--- @param arg1 string
--- @return string
GetHealStat = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @return number
--- @return number
--- @return number
--- @return number
--- @return number
--- @return number
Osi.GetWorldTransformFromLocal = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @param arg6 number
--- @param arg7 number
--- @return number
--- @return number
--- @return number
--- @return number
--- @return number
--- @return number
GetWorldTransformFromLocal = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.UserGetFlag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
UserGetFlag = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ItemGetInt = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
NRD_ItemGetInt = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
Osi.CrimeIgnoreAllCrimesForCriminal = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 string GUID
--- @param arg3 integer
CrimeIgnoreAllCrimesForCriminal = function (arg1, arg2, arg3) end

--- @param arg1 number
Osi.SetCameraDistanceOverride = function (arg1) end

--- @param arg1 number
SetCameraDistanceOverride = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterSetReactionPriority = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterSetReactionPriority = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
Osi.CharacterMoveToAndTalkRequestDialogFailed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string GUID
--- @param arg3 string
CharacterMoveToAndTalkRequestDialogFailed = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
Osi.ObjectTurnStarted = function (arg1) end

--- @param arg1 string GUID
ObjectTurnStarted = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterIsDeadOrFeign = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterIsDeadOrFeign = function (arg1) end

--- @param arg1 integer
--- @param arg2 string Character GUID
Osi.OnCriminalMergedWithCrime = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string Character GUID
OnCriminalMergedWithCrime = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.NRD_AmmoBar_Init = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
NRD_AmmoBar_Init = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
Osi.NRD_ActionStateGetReal = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return number
NRD_ActionStateGetReal = function (arg1, arg2) end

--- @param arg1 string
Osi.TextEventSet = function (arg1) end

--- @param arg1 string
TextEventSet = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_Set_GUI = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_Set_GUI = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsPublicDomain = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsPublicDomain = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
Osi.CharacterTeleportToWaypoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
CharacterTeleportToWaypoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
Osi.CanUseItem = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 integer
CanUseItem = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @return integer
Osi.NRD_StringToInt = function (arg1) end

--- @param arg1 string
--- @return integer
NRD_StringToInt = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
Osi.NRD_CharacterGetStatString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string
NRD_CharacterGetStatString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddGold = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddGold = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
Osi.ItemTemplateRemovedFromCharacter = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Item GUID
--- @param arg3 string Character GUID
ItemTemplateRemovedFromCharacter = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
Osi.DialogGetLocalFlag = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @return integer
DialogGetLocalFlag = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsDestructible = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsDestructible = function (arg1) end

--- @param arg1 string
--- @return integer
Osi.NRD_StringLength = function (arg1) end

--- @param arg1 string
--- @return integer
NRD_StringLength = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.SetStoryEvent = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
SetStoryEvent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
Osi.CharacterAppearAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 integer
--- @param arg6 string
CharacterAppearAtPosition = function (arg1, arg2, arg3, arg4, arg5, arg6) end

--- @param arg1 string
Osi.GlobalFlagCleared = function (arg1) end

--- @param arg1 string
GlobalFlagCleared = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
Osi.NRD_StatusGetHandle = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
--- @return integer
NRD_StatusGetHandle = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.GenerateItems = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
GenerateItems = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @return integer
Osi.NRD_ApplyActiveDefense = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @return integer
NRD_ApplyActiveDefense = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterIsPolymorphedInto = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterIsPolymorphedInto = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return string Item GUID
Osi.CreateItemTemplateAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @return string Item GUID
CreateItemTemplateAtPosition = function (arg1, arg2, arg3, arg4) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
Osi.CreateExplosionAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 number
--- @param arg2 number
--- @param arg3 number
--- @param arg4 string
--- @param arg5 integer
CreateExplosionAtPosition = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
Osi.NRD_HitSetString = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 string
NRD_HitSetString = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.PartySetShopPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
PartySetShopPriceModifier = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.ItemTemplateUnEquipped = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
ItemTemplateUnEquipped = function (arg1, arg2) end

--- @param arg1 string
Osi.NRD_ShowErrorMessage = function (arg1) end

--- @param arg1 string
NRD_ShowErrorMessage = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterAddCivilAbilityPoint = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterAddCivilAbilityPoint = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
Osi.EnterCombat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string GUID
EnterCombat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
Osi.CharacterLeftTrigger = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Trigger GUID
CharacterLeftTrigger = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @return integer
Osi.ItemIsLadder = function (arg1) end

--- @param arg1 string Item GUID
--- @return integer
ItemIsLadder = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.SetCombatGroupID = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
SetCombatGroupID = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterStatusText = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterStatusText = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterLinkGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterLinkGhost = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return integer
Osi.GameMasterAddToCharacterCreation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
--- @return integer
GameMasterAddToCharacterCreation = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterCreatedInArena = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterCreatedInArena = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.IntegerSubtract = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
IntegerSubtract = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterJoinedParty = function (arg1) end

--- @param arg1 string Character GUID
CharacterJoinedParty = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.NRD_AmmoBar_Set_Ammo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
NRD_AmmoBar_Set_Ammo = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
--- @param arg2 string
Osi.ItemLock = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
ItemLock = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.CharacterHasTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
CharacterHasTalent = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.NRD_BreakOnItem = function (arg1) end

--- @param arg1 string Item GUID
NRD_BreakOnItem = function (arg1) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return number
Osi.GetClosestPlayer = function (arg1) end

--- @param arg1 string GUID
--- @return string Character GUID
--- @return number
GetClosestPlayer = function (arg1) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
Osi.CrimeResetInterrogationForCriminals = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 integer
--- @param arg2 string GUID
--- @param arg3 string GUID
--- @param arg4 string GUID
--- @param arg5 string GUID
CrimeResetInterrogationForCriminals = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
Osi.CharacterPickpocketExit = function (arg1) end

--- @param arg1 string Character GUID
CharacterPickpocketExit = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.MysteryUnlocked = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
MysteryUnlocked = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.TransferItemsToUser = function (arg1) end

--- @param arg1 string Character GUID
TransferItemsToUser = function (arg1) end

--- @param arg1 string GUID
--- @param arg2 string
Osi.ClearTag = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 string
ClearTag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.IterateParty = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
IterateParty = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
Osi.NRD_ProjectileSetGuidString = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
NRD_ProjectileSetGuidString = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
Osi.GetItemForItemTemplateInPartyInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return string Item GUID
GetItemForItemTemplateInPartyInventory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
Osi.NRD_CreateRain = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 number
--- @param arg4 number
--- @param arg5 number
--- @return integer
NRD_CreateRain = function (arg1, arg2, arg3, arg4, arg5) end

--- @param arg1 string
--- @param arg2 string Character GUID
Osi.ItemTemplateEquipped = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string Character GUID
ItemTemplateEquipped = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterMakeNPC = function (arg1) end

--- @param arg1 string Character GUID
CharacterMakeNPC = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string Item GUID
Osi.ItemCreatedAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string Item GUID
ItemCreatedAtTrigger = function (arg1, arg2, arg3) end

--- @param arg1 string Item GUID
Osi.ItemUnLock = function (arg1) end

--- @param arg1 string Item GUID
ItemUnLock = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
Osi.NRD_ItemGetPermanentBoostTalent = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 string
--- @return integer
NRD_ItemGetPermanentBoostTalent = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.NRD_ItemSetIdentified = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
NRD_ItemSetIdentified = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterUnlockAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterUnlockAbility = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterIncreaseSocialStat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterIncreaseSocialStat = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return string
Osi.GetRegion = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetRegion = function (arg1) end

--- @param arg1 integer
--- @param arg2 string GUID
Osi.CrimeTransferEvidenceTo = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string GUID
CrimeTransferEvidenceTo = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
Osi.CharacterIsInPartyWith = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @return integer
CharacterIsInPartyWith = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
Osi.SendArenaNotification = function (arg1, arg2, arg3) end

--- @param arg1 integer
--- @param arg2 string
--- @param arg3 integer
SendArenaNotification = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterPlayHUDSound = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterPlayHUDSound = function (arg1, arg2) end

--- @param arg1 string GUID
--- @return string
Osi.GetSurfaceGroundAt = function (arg1) end

--- @param arg1 string GUID
--- @return string
GetSurfaceGroundAt = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.RequestPickpocket = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
RequestPickpocket = function (arg1, arg2) end

--- @param arg1 string Character GUID
Osi.CharacterResetCooldowns = function (arg1) end

--- @param arg1 string Character GUID
CharacterResetCooldowns = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_PlayerGetCustomDataInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_PlayerGetCustomDataInt = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterReceivedTag = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterReceivedTag = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
Osi.ObjectFlagCleared = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 string GUID
--- @param arg3 integer
ObjectFlagCleared = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
Osi.CharacterSawCharacter = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
CharacterSawCharacter = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return string GUID
Osi.NRD_StatusGetGuidString = function (arg1, arg2, arg3) end

--- @param arg1 string GUID
--- @param arg2 integer
--- @param arg3 string
--- @return string GUID
NRD_StatusGetGuidString = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.TradeGenerationEnded = function (arg1) end

--- @param arg1 string Character GUID
TradeGenerationEnded = function (arg1) end

--- @param arg1 string GUID
--- @return integer
Osi.IsSpeakerReserved = function (arg1) end

--- @param arg1 string GUID
--- @return integer
IsSpeakerReserved = function (arg1) end

--- @param arg1 string Character GUID
Osi.MakePlayerActive = function (arg1) end

--- @param arg1 string Character GUID
MakePlayerActive = function (arg1) end

--- @param arg1 string
--- @param arg2 string
Osi.QuestSetCategory = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
QuestSetCategory = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.CharacterAddAttribute = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
CharacterAddAttribute = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.IterateParties = function (arg1) end

--- @param arg1 string
IterateParties = function (arg1) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemLockUnEquip = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemLockUnEquip = function (arg1, arg2) end

--- @param arg1 string
Osi.UnlockJournalRecipe = function (arg1) end

--- @param arg1 string
UnlockJournalRecipe = function (arg1) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 integer
Osi.TriggerSetSoundState = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Trigger GUID
--- @param arg2 string
--- @param arg3 string
--- @param arg4 integer
TriggerSetSoundState = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.SkillAdded = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
SkillAdded = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
Osi.CharacterStoppedPolymorph = function (arg1) end

--- @param arg1 string Character GUID
CharacterStoppedPolymorph = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 integer
Osi.CharacterSetReadyCheckBlocked = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 integer
CharacterSetReadyCheckBlocked = function (arg1, arg2) end

--- @param arg1 number
--- @return number
Osi.NRD_Exp = function (arg1) end

--- @param arg1 number
--- @return number
NRD_Exp = function (arg1) end

--- @param arg1 integer
Osi.StopDrawSurfaceOnPath = function (arg1) end

--- @param arg1 integer
StopDrawSurfaceOnPath = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterSetCustomBloodSurface = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterSetCustomBloodSurface = function (arg1, arg2) end

--- @return integer
Osi.CrimeGetNewID = function () end

--- @return integer
CrimeGetNewID = function () end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CrimeDisabled = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CrimeDisabled = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
Osi.SetAchievementProgress = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
SetAchievementProgress = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
Osi.NRD_Random = function (arg1, arg2) end

--- @param arg1 integer
--- @param arg2 integer
--- @return integer
NRD_Random = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
Osi.SetOnStage = function (arg1, arg2) end

--- @param arg1 string GUID
--- @param arg2 integer
SetOnStage = function (arg1, arg2) end

--- @return integer
Osi.GetUserCount = function () end

--- @return integer
GetUserCount = function () end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
Osi.ItemInsertRune = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 string Item GUID
--- @param arg3 string
--- @param arg4 integer
ItemInsertRune = function (arg1, arg2, arg3, arg4) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @param arg6 string
--- @param arg7 string
Osi.CharacterAppearAtPositionOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Character GUID
--- @param arg2 number
--- @param arg3 number
--- @param arg4 number
--- @param arg5 string GUID
--- @param arg6 string
--- @param arg7 string
CharacterAppearAtPositionOutOfSightToObjectCustom = function (arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemSetUseRemotely = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemSetUseRemotely = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @return integer
Osi.CharacterGetCivilAbilityPoints = function (arg1) end

--- @param arg1 string Character GUID
--- @return integer
CharacterGetCivilAbilityPoints = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
Osi.NRD_SkillBarFindSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @return integer
NRD_SkillBarFindSkill = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterLockedTalent = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterLockedTalent = function (arg1, arg2) end

--- @param arg1 string Item GUID
Osi.ContainerIdentifyAll = function (arg1) end

--- @param arg1 string Item GUID
ContainerIdentifyAll = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
Osi.MessageBoxYesNoClosed = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 integer
MessageBoxYesNoClosed = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.CharacterTemplateDied = function (arg1) end

--- @param arg1 string
CharacterTemplateDied = function (arg1) end

--- @param arg1 string Item GUID
--- @return string
--- @return integer
Osi.NRD_ItemHasDeltaModifier = function (arg1) end

--- @param arg1 string Item GUID
--- @return string
--- @return integer
NRD_ItemHasDeltaModifier = function (arg1) end

--- @param arg1 string
--- @param arg2 string
Osi.AddEntryToCustomBook = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 string
AddEntryToCustomBook = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterRelationChangedTo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterRelationChangedTo = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @return string GUID
Osi.CharacterGetEquippedShield = function (arg1) end

--- @param arg1 string Character GUID
--- @return string GUID
CharacterGetEquippedShield = function (arg1) end

--- @param arg1 string Character GUID
--- @param arg2 number
Osi.CharacterSetArmorPercentage = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 number
CharacterSetArmorPercentage = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
Osi.ItemLevelUpTo = function (arg1, arg2) end

--- @param arg1 string Item GUID
--- @param arg2 integer
ItemLevelUpTo = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
Osi.QuestUpdate = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string
--- @param arg3 string
QuestUpdate = function (arg1, arg2, arg3) end

--- @param arg1 string
Osi.TimerCancel = function (arg1) end

--- @param arg1 string
TimerCancel = function (arg1) end

--- @param arg1 string Trigger GUID
--- @return integer
Osi.CrimeAreaGetTensionModifier = function (arg1) end

--- @param arg1 string Trigger GUID
--- @return integer
CrimeAreaGetTensionModifier = function (arg1) end

--- @param arg1 string
--- @param arg2 integer
Osi.SysLog = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
SysLog = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
Osi.CharacterDecreaseSocialStat = function (arg1, arg2) end

--- @param arg1 string Character GUID
--- @param arg2 string
CharacterDecreaseSocialStat = function (arg1, arg2) end

Osi.FireOsirisEvents = function () end

FireOsirisEvents = function () end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
Osi.CharacterSetRelationIndivFactionToIndivFaction = function (arg1, arg2, arg3) end

--- @param arg1 string Character GUID
--- @param arg2 string Character GUID
--- @param arg3 integer
CharacterSetRelationIndivFactionToIndivFaction = function (arg1, arg2, arg3) end

--- @param arg1 string
--- @param arg2 integer
Osi.SysClear = function (arg1, arg2) end

--- @param arg1 string
--- @param arg2 integer
SysClear = function (arg1, arg2) end

