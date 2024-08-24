@echo off
setlocal

:: Display warning message
echo WARNING: Make sure you have KB3191564 update installed.
echo If not, install it from the following URL:
echo https://www.microsoft.com/en-us/download/details.aspx?id=54616

:: Prompt user for confirmation
set /p response=Have you installed the update? (Y/N): 

:: Check user response
if /I "%response%"=="Y" (
    echo Proceeding with the script...
    powershell -command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
) else (
    echo Please install the update and run the script again.
    exit /b
)

endlocal
