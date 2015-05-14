# KSP-Craft

Craft files from Kerbal Space Program

## Version
KSP 1.0.2

## Required Mods

## Optional Mods (some craft like Chute! depend on them)

## Ship descriptions

## Makefile

`make syncto` -- will sync to a save folder

`make syncfrom` -- will sync from a save folder

As a helper to copy back and forth the ships to my current save I added a Makefile, you can simply type `make` in the current directory to see it’s help, when setting the path make it absolute
and escape your spaces, e.g.:
```
/mnt/xyliss/SteamLibrary/SteamApps/common/Kerbal\ Space\ Program/saves/Nasa
```
once you enter it, it is saved by the Makefile for future runs as savepath in the current directory, to change it, simply remove the file
