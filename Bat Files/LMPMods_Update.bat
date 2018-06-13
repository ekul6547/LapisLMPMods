@ECHO OFF

IF EXIST GameData\(
IF NOT EXIST .git\ (
call git init
call git remote add origin https://github.com/ekul6547/LapisLMPMods.git
)
call git pull origin master


echo Finished. If process aborted, please contact Me.
) ELSE (
echo Bat placed in incorrect directory.
)
pause
exit
