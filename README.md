# KSP-Craft

Craft files from Kerbal Space Program

## Version
KSP 1.0.2

## Required Mods

## Optional Mods (some craft like Chute! depend on them)

## Ship descriptions

### Tech level 1-4
- ML1+L1 : Mun Lander v1 with Launch vehicle 1. Designed to take one kerbal to the mun and back, with some science instruments aboard.
- O-X1 : Early LKO capable craft. Seats one kerbal.
- RX-1 : Very similar to O-X1, it is capable of LKO with a bit more fuel for maneuvering. It seats two kerbals.
- Tour-O2 : For cashing in on all those tour contracts for big $$$! Seats three kerbals for a ride into LKO.
- Tour-X2 : Early tour ship, which is capable of escaping the atmosphere with three kerbals aboard.

### Tech level 1-10


## Makefile

`make syncto` -- will sync to a save folder

`make syncfrom` -- will sync from a save folder

As a helper to copy back and forth the ships to my current save I added a Makefile, you can simply type `make` in the current directory to see it’s help, when setting the path make it absolute
and escape your spaces, e.g.:
```
/mnt/xyliss/SteamLibrary/SteamApps/common/Kerbal\ Space\ Program/saves/Nasa
```
once you enter it, it is saved by the Makefile for future runs as savepath in the current directory, to change it, simply remove the file
