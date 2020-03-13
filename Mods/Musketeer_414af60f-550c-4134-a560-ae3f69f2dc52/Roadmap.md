## Musketeer Mod - Roadmap

### WIP Features

- Unload skill (Currently, first iteration has no Animation)

- Mark Target spells (Actually already mostly works!)
    - 2 different Statuses are employed:
        - Mark Target, simply a debuff that stays on the target for its duration
        - Mark Target Damage, (Uses different name) Status that is applied to cause damage. You check if "Mark Target" is true, and then apply "Mark Target Damage" to get deal damage once
        - Damage is based on the Mark Damage Weapon Stat.

- Spell: "Buckshot" (Already works, but the fire cone is only created when you actually hit a character)
    - Fire a shell on your target, exploding on impact and dealing damage to all targets behind it in a cone
        - Also creates a fire surface in said cone area. (Dragon Breath Cone style)
        
### New Features

- Reload drawback Implementation. Reloading should be a impactful decision you face in your turn. Reloading should basically cost you a turn.
    - Add "Reloading" as a debuff status that has a duration of 1 turn and is triggered upon casing "Reload".
        - You cannot cast spells while reloading.
        - You cannot attack while reloading.
        - This debuff can only be cleansed by death.
        - Your movement speed is reduced by 75% while reloading.

- New Visual Assets
    - Rifle
        - New Rifle Model (use kar98k)
        - New Rifle-Projectile (bullet)
        - New Rifle Sound-Effects
        - New Rifle Icon
        - New Rifle-Ability Icon's
    - Hat
        - Inspired by AoE3 Musketeers
        - New Riflemen-Hat Icon



### Things to consider Adding/Changing

- Spell: "Mass Mark Target"
    - Mark 1-3 targets in one go (Same as original Mark Target spell, but for multiple targets)

- Spell: "Divine Flagellation"
    - Select a marked target and make it rain 7-10 small bullets on him.

- Spell: "Mass Divine Flagellation"
    - Casts "Divine Flagellation" on all marked enemies in a zone

- Spell: "Silver Bullet"
    Select 3 locations, a silver bullet will fly from one to the other, damaging all in it's path
    (Maybe consider just making a piercing shot with bigger "Search-Angle"?)

- Spell: "Flare Shot"
    - Reveal any cloaked characters in target area
    - Maybe mark targets in target area too?

- Spell: "Bola Shot"
    - Select 2 characters, fire a bola that hits them both, pulling them to each other and entangle(Stun?) them.

- Spell "Lock and Load"
    Fire a lesser shot, instantly reloading 2 bullets. (Costs 1 bullet to use)

- Spell "Rifle Grenade"
    Fire a projectile, knockdown enemies in area.

- Spell "Coup de Grâce"
    - Close range execute on knockdown character.

- Spell: "Bundled Shot"
    Medium range, knock you and target down.

- Spell: "Warning Shot"
    25% Chance of Fearing Enemies around you. 