Musketeer for Divinity: Original Sin 2 - Definitive Edition
=======

# Features:
- New Weapon Types: Blunderbuss, Matchlock and Musket!
- New Class: Musketeer (12+ new unique Skills)
- Custom UI Display: Ammunition Bar helps you keep track of your Weapon's Ammunition
- Custom weapon model
- Custom icons for all skills and items
- Custom sounds
- Dynamic skill ranges, Rifle-Skills range is determined by your equipped firearm.
- Updated talents to interact with firearms

## Current Skill-List Overview:
![alt text](https://github.com/wuergrob/DOS2_Mod_Musketeer/blob/master/Misc/Musketeer_Skills_Overview_Page.png "Skill-List")

# Releases
* [Steam Workshop]() 
* [Nexus]()

# Attribution
- [Divinity: Original Sin 2](http://store.steampowered.com/app/435150/Divinity_Original_Sin_2/), a game by [Larian Studios](http://larian.com/)

# Working on right now (Will constitute Beta-Version for public testing):
- Finalize AmmoType effects
- Make AmmoType's apply Boosts for BeamFX on basic attacks and bonus damage

# Current WIP Features
- [x] Reload Animation and SFX/FX (Still kinda meh)
- [x] Better distribution of Rifles throughout the game
- [x] Finalize Alternative Reload variations
- [x] AmmoBar custom GUI element for Ammunition Management (Currently testing for bugs)
- [x] Rework "Rend the Marked" again, because it's super lame
- [x] Make AmmoBar draggable
- [x] Rewrite "Covering Fire" logic in Lua


# Known Bugs/Issues
- [x] "Covering Fire" does not work correctly on some occasions (PRESUMABLY FIXED)
- [ ] Dynamic range not applying on some unknown occasions (perhaps level-up? After loading screen too)
- [x] "Blazing Flare" missing prepare effect
- [x] Rifles have a chance to spawn with the SkyShot (Maybe other skills too) Skill
- [x] Skillproperty "Force" combined with "Knock Down" causes enemy target's turn to time out. (Replaced "Knock Down" with "Stunned")
- [x] Buckshot Skill Description param [2] is missing
- [x] Skill Requirements are not being refreshed directly after using a skill
- [x] AmmoBar in Character Respec screen not behaving correctly (Not tested, but reported by LL)



# Planned Features
- [x] Add AmmoType effects on basic attacks when attacking ground.
Currently not (easily) possible, waiting for additional ASAttack access options in the Extender
- [x] Improved Visualization of Remaining Ammo
UI Overlay Effect from a Status effect perhaps?
- [ ] Skill "Enforced Vaccination"
Ranged single-target rifle skill, damage enemies, heal allies. Set decaying on market enemies.
- [ ] Additional Talent interactions with rifles
- [ ] Talent: The Pawn: Gain a burst of movement speed after emptying your rifle.
