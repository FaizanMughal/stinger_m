# DOOMREAL

The Unreal 1 counterpart to Doom Tournament. Adds Unreal 1 weapons and items
(including dummied out stuff and others).

This mod requires GZDoom g4.3pre-125-g021e548db or later, and runs on top of
Doom Tournament (currently the devel branch is required).

## Currently Implemented

 - Dispersion Pistol (slot 1) (replaces fist)
 - Automag (slot 2) (replaces pistol)
   - Dual Automags
 - Stinger (slot 3) (replaces shotguns)
   - Projectile bouncing from 0.866 and below
   - Tarydium charge & explosion described in Unreal Bible
 - ASMD (slot 4) (replaces shotguns)
 - Eightball (slot 5) (replaces rocket launcher)
   - Single rocket mode for Eightball
   - "Hold up to 2 seconds" feature from Unreal Bible
 - Flak Cannon (slot 6) (replaces rocket launcher)
 - Razorjack (slot 7) (replaces chaingun)
   - Hold fire to increase blade speed (from Unreal Bible)
   - Make Razorjack altfire actually seek where player is aiming (toggleable)
 - GES Bio Rifle (slot 8) (replaces plasma rifle)
   - "Hold up to 2 seconds" feature from Unreal Bible
   - Biorifle splashes like UT (toggleable)
 - Rifle (slot 9) (replaces plasma rifle)
   - Restored rapid fire
   - Restored flashlight
 - Minigun (slot 0) (replaces chaingun)
 - SMP 7243 (slot 0) (replaces bfg9000)
 - Teleport Capsules (slot 1)
 - Razorclaw (slot 1) (replaces chainsaw)
 - Protomag (slot 2) (replaces pistol)
   - Dual Protomags
 - Quadshot (slot 3) (replaces shotguns)
 - Stunner (slot 4) (replaces chainsaw)
 - Fireblaster (slot 5) (replaces rocket launcher)
 - Flamethrower (slot 6) (replaces plasma rifle)
 - Impaler (slot 7) (replaces plasma rifle)
 - Peacemaker (slot 8) (rare spawn in backpacks)
 - Demolisher (slot 9) (replaces bfg9000)
 - Autocannon (slot 0) (replaces bfg9000)
 - Backpack (replaces backpack, identical to Doom Tournament version)
 - Unreal 1 HUD
 - Translator (has to be spawned in, since it would only be useful for mappers)
   - Reimplement as menu with message history, scrolling, hint toggling, etc.
 - Armor (replaces blue armor)
 - Shield Belt (replaces megasphere)
   - Power Shield (replaces invulnerability)
 - Asbestos Suit (replaces radsuit if map has lava)
 - Kevlar Suit (replaces green armor)
 - Toxin Suit (replaces radsuit if map has slime)
 - Voice Box (rare spawn in backpacks)
 - Dampener (rare spawn in backpacks)
 - Forcefield (rare spawn in backpacks)
 - Dispersion Pistol Powerup (replaces Berserk)
 - Amplifier (replaces berserk)
 - Invisibility (replaces blursphere)
 - Health (replaces medkit)
 - Bandages (replaces stimpak)
 - Super Health (replaces soulsphere)
 - Nali Fruit Seed (replaces health bonus)
 - Flare (replaces armor bonus)
 - Flashlight (replaces light amplifier)
   - Searchlight (must be placed manually for balance reasons)
 - Jump Boots (replaces radsuit)
 - SCUBA Gear (replaces radsuit if map has swimmable water)
 - Motion Detector (replaces computer map)
 - Light & Dark Flares
 - Minigun Sentry (rare berserk replacement)
 - Light Sentry (rare spawn in backpacks)

## In progress

 - Final polishing

## Planned

 - Shifted to a 1.1 update:
   - Impaler "slice" animation for melee alt
   - Alternate flamethrower secondary that behaves more like the Unreal Bible
     describes (unlit blobs at a rate of 4 per second that catch on fire with
     explosions/lava/etc).
   - Alternate Impaler primary that follows the Bible (laser shots from the
     crystal), shifts crystal shooting to pressing both buttons at once.
   - Actual Bonesaw?
   - Implement ASMD behavior described in the Unreal novels (highly destructive
     green beam that bounces off mirrors and water).

 - RTNP add-on
 - Monster pack (someday)
 - Map pack (maybe? who knows)

## Known bugs

 - The Quadshot will visibly load 4 shells even when there's less available,
   this is a limitation of the animation and I'll have to make alternate ones
   for it eventually.
