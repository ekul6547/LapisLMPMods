@ECHO OFF

echo "This will delete the \.git\ and \GameData\ folders, and the README.md file"
echo "You may want to backup the folder "data" in \GameData\LunaMultiplayer\Plugins\, as this contains data such as you playername, and server listings for LunaMultiplayer"
echo "Don't worry, you save data is in the \saves\ folder, and is unnaffected, only some minor config settings should be affected"
echo "And it wont delete the default Squad and SquadExpansion files in \GameData\"
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :Yes
if /I "%c%" EQU "y" goto :Yes

exit


:Yes
echo.
SET F=".git\"
IF EXIST %F% (
RMDIR /S /Q %F%
echo .git deleted
)
SET F=GameData
IF EXIST %F% (
for /d %%i in (GameData\*) do (
if not "%%i" == "GameData\Squad" (
if not "%%i" == "GameData\SquadExpansion" (
RMDIR /Q /S "%%i"
echo %%i deleted
)
)
)
for %%i in (GameData\*) do (
del /S /Q "%%i"
echo %%i deleted
)
)
SET F="README.md"
IF EXIST %F% (
del %F%
echo README.md deleted
)

echo.
set /P c=Do you want to redownload the mods[Y/N]?
if /I "%c%" EQU "Y" goto :ReInit
if /I "%c%" EQU "y" goto :ReInit
exit /b


:ReInit
SET F="LMPMods_Update.bat"
IF EXIST %F% (
call %F%
) ELSE (
echo LMPMods_Update.bat is missing! Cannot re-download the mods.
)
exit