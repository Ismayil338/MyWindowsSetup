## Prereq: Disable UAC for administrators (cmd admin)
```
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
```

## Prereq: Install Windows Management Framework 5.1
* [Download for Windows 8.1 x64](https://download.microsoft.com/download/6/f/5/6f5ff66c-6775-42b0-86c4-47d41f2da187/Win8.1AndW2K12R2-KB3191564-x64.msu)
* [Download for Windows 7 x64](https://download.microsoft.com/download/6/f/5/6f5ff66c-6775-42b0-86c4-47d41f2da187/Win7AndW2K8R2-KB3191566-x64.zip)

## Install chocolatey (pwsh admin)
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Install Apps (pwsh admin)
```
choco install -y 7zip Localsend.install Notepadplusplus Sumatrapdf Telegram Transmission-qt
```

## Download Supermium
```
https://win32subsystem.live/supermium/
```
