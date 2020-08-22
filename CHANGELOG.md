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

## 0.9.1.1 - Extender v51 Release Patch

### New Features

- Performing `Attack Ground` with a firearm now applies additional effects from `Enhanced Reload`

### Bugfixes

- Replaced `Stunned` effect from `Buckshot` Skill with `Knockdown` effect
- `Enhanced Reload` Skillbooks now correctly use the source-version of the Skillbook icons
- `Buckshot` now correctly ignites surfaces
- `Buckshot` now correctly causes a cone of fire behind it's impact target/location
- Fixed a bug where tag-requirements were not always being refreshed on the skillbar
- Fixed a bug where `Buckshot` played the wrong impact-SFX
- Updated `GetStatus` calls with fixed `GetStatusObjects` calls (v51 fix)
- Fixed a bug that caused piercing ammo to shoot off recursively from it's own instances

### Balance & Design

Buckshot might be too strong again and will be monitored closely.

- `Musketeer Skill Overview` Page updated
- Leaving combat will automatically fully restore a player's currently equipped firearm's `Ammunition`

## 0.9.1.2

### New Features

- Added experimental compatibility with Odinblade's Hunstman overhaul (Load Musketeer *AFTER* Odinblade's mod)

### Bugfixes

- Fixed a bug where ending the turn immediatly after casting `Reload` would cause the `Reload`-State to persist for an additional turn
- Fixed a bug that caused `Dynamic-Range` to not reapply after being removed from external sources

### Balance & Design

- `Elemental Arrowheads` is no longer compatible with rifles

## 0.9.1.3 - Deltamods

### New Features

- Added experimental custom `DeltaMods` for Rifles
Rifle's generated from treasures or vendors receive custom boosts instead of Crossbow specific ones.

### Bugfixes

- Fixed a issue that caused the projectile from the `Tripwire Flare` Skill to explode too soon