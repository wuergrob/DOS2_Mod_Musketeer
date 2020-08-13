# Musketeer Changelog

## 0.9.0.0 - Initial Closed Beta Build

### Bugfixes

- Removed unwanted bonus damage from `Buckshot` explosion effect
- Fixed current Ammo-Count display on AmmoBar when switching away from a fully loaded firearm
- Fixed `Steadfast` Movement Speed penalty. Now correctly slows by 75% instead of 35%
- Fixed persisting `Out of Ammunition` tag that caused characters to be unable to attack with their weapon
- Fixed Dynamic Rifle-Range for skills not applying correctly when the character was resurrected
- Fixed Dynamic Range Statuses not properly overwriting each themselves
- Fixed Dynamic Range Statuses not being applied for every kind of firearm
- Fixed Dynamic Range not correctly being cleared when unequipping a firearm

## 0.9.0.1

### Bugfixes

- Fix AmmoBar being shown during Character Creation
- Added missing `RangerLore 5` Memorization Requirement for `Seeker Strikedown` Spell
- Adjusted `HitStatus` retrieval to prepare for upcoming `GetStatuses` fix in v51
- Fix Dynamic Range not being changed correctly when the Talent `Lone Wolf` is active.
- Fix AmmoBar being shown when a player is respeccing

### Balance & Design

- Added `Death Sentence` Skill to available starting skills in Character Creation
- Added `Buckshot` Skill to available starting skills in Character Creation
- Adjusted `Final Act` to be available earlier than before

## 0.9.0.2

### Bugfixes

While dynamic range seems to work correctly when testing in the editor, playtesting
revealed that this mechanic behaves differently ingame.

- [EXPERIMENTAL] Fix Dynamic-Range when character has `Lone Wolf` and is not in Editor

### Balance & Design

Playtesting revealed, that Musketeer's are not fun to play without using `Lone Wolf`.
With the usual 4AP a character has per round and `Reload` consuming 2AP, the player
is severely bottlenecked and starved of AP.

- Skill `Reload` and all versions of `Enhanced Reload` AP cost reduced from 2 to 1
- Skill `Tracking Shot` AP cost reduced from 2 to 1
- Skill `Blazing Flare` AP cost reduced from 2 to 1, Cooldown increased from 3 to 5
- Skill `Seeker Strikedown` SP cost reduced from 3 to 2
- Skill `Final Act` AP cost reduced from 2 to 1
- Skill `Rend the Marked` AP cost reduced from 3 to 2
- Skill `Buckshot` AP cost reduced from 2 to 1, Cooldown increased from 2 to 3