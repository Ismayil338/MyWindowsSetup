@echo off
:menu
cls
echo =====================================
echo  Enable / Disable Hyper-V
echo =====================================
echo  [E] - Enable Hyper-V
echo  [D] - Disable Hyper-V
echo  [Q] - Quit without changes
echo =====================================
set /p choice=Choose an option (E/D/Q): 

if /I "%choice%"=="E" (
    echo Enabling Hyper-V...
    bcdedit /set hypervisorlaunchtype auto
    echo Restarting...
    shutdown /r /t 5
    exit
)

if /I "%choice%"=="D" (
    echo Disabling Hyper-V...
    bcdedit /set hypervisorlaunchtype off
    echo Restarting...
    shutdown /r /t 5
    exit
)

if /I "%choice%"=="Q" (
    echo Exiting...
    exit
)

echo Invalid input. Please try again.
pause
goto menu
