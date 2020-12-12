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

- Added experimental custom `DeltaMods` for Rifles generated from treasures and vendors receive custom boosts instead of Crossbow specific ones.

### Bugfixes

- Fixed a issue that caused the projectile from the `Tripwire Flare` Skill to explode too soon
- `Tracking Shot` Skill can no longer apply `Marked` on items
- `Steady Shot` Skill now correctly deals bonus damage on `Marked` characters
- Fixed a bug that caused bonus damage from `Marked` interactions to not trigger execute effects
- `Tracking Shot` Skill now no longer has 2 different `BeamFX` when cast and will only use the default one
- `Special Arrow` Consumables are no longer usable with a rifle equipped

### Balance & Design
- Changed visuals of all `Ammunition Type` projectiles to better reflect their damage type
- `Piercing Ammunition` Damage increased from 35% weapon damage to 70% weapon damage, removed `Bleeding` effect
- `Piercing Ammunition` can now apply bonus effects, based on the original Skill that was used:
    - The piercing `Tracking Shot` Projectile applies `Marked` for 2 turns when hitting a character
    - The piercing `Rapidfire` Projectile heals the attacker for 5% of its maximum vitality, if the target is `Marked`
    - The piercing `Rend The Marked` Projectile grants the attacker a `Rend` stack when killing a character
- Skill `Final Act` AP cost increased from 1 to 2

## 0.9.2.0 Initial Open Beta Build

### Bugfixes

- `Knockdown` Status caused by hitting `Marked` targets with the `Buckshot` Skill is now correctly resisted by `Physical Armor`
- `Seeker Strikedown` Skill's ingame name has been corrected
- `Steadfast`Skill Description has been updated to match it's actual effect
- `Seeker Strikedown` Skill Description updated
- High Rarity `Rifles` sold by vendors can no longer be `unidentified`
- Adjusted Icons of some `Matchlock Rifles` to correctly use the `Matchlock` Weapon Icon
- Added experimental Tooltip-Support for `Rifles`, Tooltip no longer shows `Rifles` as `Crossbows`


### Balance & Design
- `Steadfast` Skill now grants 2m range, 20% accuracy, bonus `Physical Armor` and bonus `Magic Armor`
- `Seeker Strikedown` Skill `Damage Type` changed from `Fire` to `Physical` and now requires the caster to have a `Rifle` equipped
- Changed base `Movement` and `Initiative` of `Musket Rifles` from -2m to -1m and -2 to -1 respectively
- Removed base `Movement` of `Matchlock Rifles` and changed base `Initiative` from -2 to -1
- Increased `Level` Requirement of all  `Enhanced Reload` Variations from 3 to 5
- Slightly increased Droprate of `Rifles` and `Crossbows` to compensate for diluted Weapon-Pool
- Increased `Crossbow` Weapon Droprate
- Added additional `Matchlock Rifles` of various rarities to the Weapon-Pool

## 0.9.2.1 - Scattershot

### New Features
- Introduced a new Source Skill: `Scattershot`! `Scattershot` fires 5 projectiles in a arc, dealing heavy damage. This Skill greatly benefits from special `Ammunition` types. Deals bonus damage and inflicts `Bleeding` on marked targets.

### Bugfixes
- Tooltips of `Rifles` were further improved and fixed when used in item comparisons

### Balance & Design
- `Reloading` now reduces a characters `Dodge Chance` by 15% for it's duration, along the other Debuffs
- Skill-Descriptions structure equalized for all Rifle-Skills
- `Seeker Strikedown` Skill now occupies 3 `Memory Slots`

## 0.9.2.2 - Mini Patch

### Bugfixes
- `Scattershot` Skill Skillbooks are now correctly included in the corresponding `Treasure Tables`

### Balance & Design
- `Rifles` no longer grant a passive skill that was inherently unusable
- Added `Out of Ammunition` Info-Text on `Rifle` Tooltips

## 1.0.0.0 - Initial Release Build

The Musketeer Mod has finally reached V1.0 and is now released!

- Introduced a new Skill: `Blitzkrieg`! Dash a short distance and reload 1 `Ammunition`. Additionally grants `Bonus Damage`, a small amount of `Physical Armor` and `Hasted` for 1 turn.

### Bugfixes
- `Steadfast` Skill stats updated

### Balance & Design
- `Musketeer` and `Headhunter` Class Presets improved
- Increased `Bleeding` Status duration from `Scattershot` Skill from 1 to 2 turns

## 1.1.0.0 - Experimental Anti Freeze

As multiple Players have reported freezes when rifle wielding characters get hit control removing statuses such as `Mad`, I've attempted to implement a possible fix for this. Along with this, a similiar freeze that was reported to happen after
using a `Reload` should hopefully be fixed with this patch.

### Bugfixes
- [Experimental] Game-Freeze caused by reapplying Statuses fixed
- Traders now correctly remove stale generated `Rifles` from their inventory
- Improved consistency of AmmoBar visibility between characters
- All `Enhanced Reload` cost 1 `Memory Slot` and should no longer be removed after respeccing
- GM compatibility improved
- AmmoBar UI is no longer visible when a summoned character or a party follower is selected

### Balance & Design
- All `Blunderbuss` variations base damage reduced, from 170 to 155 and from 180 to 165.
- All `Blunderbuss` variations critical damage reduced from 185 to 175

## 1.1.2.0 - GM Support, Skill-Range Fix

### Bugfixes
- Fixed a bug that caused `Rifle`-based Skill Ranges to be set to 4m
- `AmmoBar` is no longer visible when returning to GM-Mode after possessing a character

## 1.1.3.0 - GM Support, Skill-Range Fix

### Bugfixes
-  Fixed a bug that could possibly cause `Rifle`-based Skill Ranges not to update due to stale Database entries.

## 1.1.4.0 

### Bugfixes
- Updated required minimum Extender Version to correct value
- Experimental Fixed a bug that caused Rifle rarities to change to `Unique` after loading a Savegame

NOTE: Rifle's that were set to `Unique` will not be restored, but it should hopefully fix it for any rifle that was generated after this patch was applied. Was sadly not able to fully test this because of time constraints.

## 1.1.5.0 - Experimental Deadlock/Freeze in Combat Fix

### Bugfixes
-  [Experimental] Fixed a bug that caused Deadlocks/Freezes during combat when control altering `Statuses` are active

## 1.2.0.0 - Partial WeaponEx Compatibility

### Bugfixes 

This patch aims to fix some compatibility issues with `WeaponEx`, most notably how Musketeer Weapons do count towards crossbow masteries instead of firearms.

NOTE: There will be additional patches to further increase compatibility and fix additional bugs. Some bugs will be patched together with the v53 release of the Extender,
this includes projectile trajectories from inserted runes and some other stuff.

### Bugfixes

- Musketeer Rifle `WeaponType` is now actually `Rifle`
- Complete `Item Tooltip` logic rework

## 1.2.1.0 - Vending Machine Inventory Deletion

Concerns WeaponEx Vending machine stock/inventory

### Bugfixes 

- Vending machine items should no longer get deleted

## 1.2.2.0 - Legacy Crossbow Tag

Concerns WeaponEx Weapon Mastery

### Bugfixes 

- "Old" (Rifles that were generated before the release of v.1.2.0.0) no longer count towards the `Crossbow` Weapon-Mastery in WeaponEx
- Fixed an error message that showed up when a session was loading

------------------------------------------------------------------------------------------

## 1.3.0.0 - Musketer Reloaded: WeaponExpansion Masteries

Musketeer Masteries! Patch 1.3 adds advanced interactions with Laughing Leader's Weapon Mastery system, introducing a unique Mastery tree for each
Musketeer Firearms. Each Mastery has been designed to highlight their weapon's characteristics and offer you more profound ways to unleash destruction upon your foes.

Also, a big thank you to all players that have been so kind to take their time and write very detailed feedback and bugreports! You've been a huge help.

### Weapon Expansion Masteries
- Requires Laughing Leader's Weapon Expansion Mod to be loaded *before* the Musketeer Mod!
- Muskets, Blunderbusses and Matchlocks count towards the `Firearm` Mastery
- New Mastery category for each Musketeer weapon type!

### Musket Mastery
Control the battle and inspire your allies! Musket Mastery-Ranks grant your whole team an edge in combat by bolstering defensive and offensive options alike!

### Blunderbuss Mastery
Up close and personal. Blunderbuss Mastery-Ranks enable a aggressive playstyle from close range by increasing your lethality and giving you more tools for positioning and closing the gap!

### Matchlock Mastery
The hunter's choice. Obliterate your prey and shatter your enemies defenses with precise strikes and fire superiority.

## Bugfixes

- Rewrote `Covering Fire` logic, no longer does nothing when using it would leave you at 0 AP.
`Ammunition` used by `Covering Fire` is no longer subtracted all at once, but instead whenever a shot is fired.
- Fixed inconsistent naming for `Doom Ammunition`
- Fixed `Reload` debuffs being removed at the end of the current turn, instead of at the beginning of the next turn.
- Runes inserted into `Rifles` no longer change the trajectory to an arc
- Fixed a bug that caused issues when identifying if a character is wielding a `Rifle` or not
- [Experimental] Fixed a bug that caused softlocks when a character wielding a `Rifle` was charmed, taunted, mad or under similiar status influences

### Balance & Design
NOTE: `Damage` and `Critical Damage` value changes can defer slightly from the listed changes, as multiple variations with different stat baselines exist.

From general observation, `Muskets`, `Blunderbusses` and `Matchlocks` appear to be overperforming quite a bit.
The balance changes in this patch aim to reduce the overall damage output of Musketeer Firearm's and skills, whilst increasing
bonus damage values from `Marked` interactions.

The intention of this rebalancement is to bring the Musketeer Mod in line with the game's original classes in terms of strength and increase
the importance of `Marked` interactions to encourage strategic decision making.


- `Musket` Damage decreased from 120 to 110 and `Critical Damage` decreased from 160 to 155
- `Blunderbuss` Damage decreased from 155 to 135 and `Critical Damage` decreased from 175 to 170
- `Matchlock` Damage decreased from 145 to 120 and `Critical Damage` decreased from 165 to 160
- Adjusted `Blunderbuss` and `Matchlock` price values to fit `Musket` price value stat
- `Tracking Shot` Damage decreased from 110 to 80
- `Buckshot` Damage decreased from 120 to 100
- `Steady Shot` Damage decreased from 110 to 105, Damage on `Marked` targets increased from 50% to 65%
- `Final Act` Damage decreased from 180 to 160, Damage on `Marked` targets increased from 60% to 75%
- All `Reload` Variations do no longer break stealth when cast. 
(Additionally, all `Reload` bonus effects gained from masteries can be cast from stealth)


