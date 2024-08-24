@echo off

:: Open Item with Single-click (point to select), and Underline Icon Titles when Pointed at
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v IconUnderline /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShellState /t REG_BINARY /d 240000001ea8000000000000000000000000000001000000130000000000000062000000 /f

:: Turn On Use Check Boxes to Select Items
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AutoCheckSelect /t REG_DWORD /d 1 /f

:: Open Control Panel with Large icons by default
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v AllItemsIconView /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v StartupPage /t REG_DWORD /d 1 /f

:: Add Control Panel Desktop Icon
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v {5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0} /t REG_DWORD /d 0 /f

:: Disable Only Upper-right Corner for Charms Hint
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\EdgeUI" /v DisableTRCorner /t REG_DWORD /d 1 /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell\EdgeUI" /v DisableCharmsHint /f

taskkill /f /im explorer.exe
start explorer.exe
