@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
::获取管理员权限 ↑
@echo off
title Fix Windows Update Error: 0x80070003
@echo [1]Simple Fix Mode
@echo [2]Full Fix Mode (It may take a long time)
set /p modes=Please Choose A mode: 
if %modes% == 1 goto ez
if %modes% == 2 goto Full
exit
:ez
title Simple Fix Mode: Processing...
cls
@echo Stopping Windows Update Service
net stop "Windows Update"
cls
@echo Fixing...
rd /s /q "C:\Windows\SoftwareDistribution\DataStore"
rd /s /q "C:\Windows\SoftwareDistribution\Download"
cls
@echo Starting Windows Update Service
net start "Windows Update"
cls
@echo Finished, Please Check it! (Press Any Key to Exit)
pause
Exit

:Full
title Full Fix Mode: Process 1/4 ...
cd %windir%
rmdir hfold /s /q
ren $hf_mig$ hfold
cls
@echo Process 1/4 Finished!
title Full Fix Mode: Process 2/4 ...
net stop wuauserv
@echo Please check whether the "wuauserv" Service has been stopped or not!
@echo [1] The Service has been stopped successfully!
@echo [2] The Service has not been stopped!
set /p stop-or-not=Your Input:
IF %stop-or-not% == 2 GOTO wuauservExist
goto Process2

:wuauservExist
net stop wuauserv
@echo Please check whether the "wuauserv" Service has been stopped or not!
@echo [1] The Service has been stopped successfully!
@echo [2] The Service has not been stopped!
set /p stop-or-not=Your Input:
IF %stop-or-not% == 2 GOTO wuauservExist
goto Process2

:Process2
cd %windir%
rmdir SDDold /s /q
ren SoftwareDistribution SDDold
net start wuauserv
cls
@echo Process 2/4 Finished!
title Full Fix Mode: Process 3/4 ...
goto reg-backupmode-choose

:reg-backupmode-choose

goto reg-manual

:reg-manual
@echo Step 1: Open "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
@echo Step 2: Right click the "Winlogon" folder on the left and choose export
@echo Step 3: Choose the place where you want to place your regedit
@echo Step 4: When you're finished, press any key to contiune!
regedit
pause
goto Process4

:Process4
cls
title Full Fix Mode: Process 4/4 ...
@echo Please choose Yes on the pop out window!
@echo If you click the wrong button, Please input 2 to re-import!
@echo [1]Contiune the program
@echo [2]I want to re-import the regedit
set BatPath=%~dp0
cd %BatPath%
fix.reg
set /p import-or-not=Please input the number: 
if %import-or-not% == 1 goto success
if %import-or-not% == 2 goto re-import
goto reg-import-invalid

:reg-import-invalid
@echo INVALID NUMBER!
goto re-import

:re-import
@echo Please choose Yes on the pop out window!
@echo If you click the wrong button, Please input 2 to re-import!
@echo [1]Contiune the program
@echo [2]I want to re-import the regedit
cd %BatPath%
fix.reg
set /p import-or-not=Please input the number: 
if %import-or-not% == 1 goto success
if %import-or-not% == 2 goto re-import
goto reg-import-invalid

:success
title Fix Windows Update: 0x80070003 - Full Fix Finished!
@echo Fix Program has been finished, please check whether it has been fixed or not!
@echo Press any key to exit!
pause
exit