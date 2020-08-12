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