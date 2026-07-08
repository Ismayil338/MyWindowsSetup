## Changed Settings (cmd admin)
```
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v IconUnderline /t REG_DWORD /d 2 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShellState /t REG_BINARY /d 240000001ea8000000000000000000000000000001000000130000000000000062000000 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AutoCheckSelect /t REG_DWORD /d 1 /f & reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DontUsePowerShellOnWinX /t REG_DWORD /d 0 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v AllItemsIconView /t REG_DWORD /d 0 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v StartupPage /t REG_DWORD /d 1 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d 0 /f & reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\EdgeUI" /v DisableTRCorner /t REG_DWORD /d 1 /f & reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\EdgeUI" /v DisableCharmsHint /f & taskkill /f /im explorer.exe & start explorer.exe
```

## Prereq: Install Windows Management Framework 5.1
```
https://download.microsoft.com/download/6/f/5/6f5ff66c-6775-42b0-86c4-47d41f2da187/Win8.1AndW2K12R2-KB3191564-x64.msu
```

## Install chocolatey (pwsh admin)
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Install Apps (pwsh admin)
```
choco install -y 7zip localsend.install notepadplusplus sumatrapdf telegram transmission git --package-parameters="'/NoShellIntegration'"
```

## Download Supermium
```
https://win32subsystem.live/supermium/
```
