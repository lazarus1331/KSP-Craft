# KSP-Craft

Craft files from Kerbal Space Program

## Required Mods

* MechJeb (http://www.curse.com/ksp-mods/kerbal/220221-mechjeb/2222555#)
* KW Rocketry (http://www.curse.com/ksp-mods/kerbal/220894-kw-rocketry-v2-6d/2216607#)

## Ship descriptions

* Mercury - early tech tree craft capable of getting a kerbin to a decent orbit and then de-orbit to a specific survey spot on Kerbin
* CheapOrbit - a very cheap way to get into orbit, it can be even done with less but then you don’t have a lot of fuel for picking your de-orbit spot
* ResQ - cheapest single column ship I could make to rescue a stranded kerbal in orbit
* Duna Voyager - All stock ship for traveling to Duna. Has shroud which covers lander. Requires removing the lander and attaching to front of command pod in orbit around Kerbin.
* NKRV 1+L2 - Near Kerbin Rescue Vehicle Mk.1 with Launcher Mk.2: designed to rescue kerbins floating around kerbin
* MunExplorerHabitat1+L1 - An early tech Mun base with launcher. Minimal dV for maneuvering.

* Sputnik --my largest dV to date with over 26k in dV, not really the most efficient design ever, but the first couple of stages are glorious with tons of fire and smoke to satisfy any pyro

As a helper to copy back and forth the ships to my current save I added a Makefile, you can simply type `make` in the current directory to see it’s help, when setting the path make it absolute
and escape your spaces, e.g.:
```
/mnt/xyliss/SteamLibrary/SteamApps/common/Kerbal\ Space\ Program/saves/Nasa
```
once you enter it, it is saved by the Makefile for future runs as savepath in the current directory, to change it, simply remove the file
