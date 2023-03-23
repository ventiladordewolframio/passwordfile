@ECHO OFF
title Folder User
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST User goto MDLOCKER
:CONFIRM
echo .
set/p "cho=>"
if %cho%==s goto LOCK
if %cho%==S goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid 
goto CONFIRM
:LOCK
ren User "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo .
set/p "pass=>"
if NOT %pass%== 666 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" User
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md User
echo User created successfully
goto End
:End
