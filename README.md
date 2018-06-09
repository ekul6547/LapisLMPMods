# Lapis LMP Mods
Easy way to install mods for the server while figuring them all out...

# Instructions
> If you want easier updating, look below
1) Click the "Clone or Download" button
2) Download Zip
3) Copy contents of GameData folder to KSP GameData folder

# Updater
I have created a couple of bat files which automatically download all the mod files when run.
Place them in the main game files folder (the folder with the .exe file)
> Git is REQUIRED for them to function:
> https://git-scm.com/downloads
- The LMPMods_Update.bat will download any new mods, and update any files in the GameData.
- The LMPMods_Reset.bat will delete all files in the .git and GameData folders, except the default "Squad" and "SquadExpansion" folders.


# Using git
- Only if you want to use git for this.
- May end in a bit of failure because reasons.

Initial Setup
1) Install git on your computer
2) Reboot
3) Go to your KSP directory (Main one with .exe, not inside your GameData) (\SteamLibrary\Steam\steamapps\common\Kerbal Space Program)
4) Open command prompt / powershell in this directory
    4.5) Or open one beforehand and navigate to the .exe folder

5) Enter command: git init
6) Enter command: git remote add origin https://github.com/ekul6547/LapisLMPMods.git


Downloading / updating the mods:
1) Open command prompt / powershell in the .exe directory
2) Enter command: git pull origin master
3) If it says abort or something bad sounding, contact me.