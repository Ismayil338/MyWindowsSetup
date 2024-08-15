@echo off

:: Open Item with Single-click (point to select), and Underline Icon Titles when Pointed at
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v IconUnderline /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v ShellState /t REG_BINARY /d 240000001ea8000000000000000000000000000001000000130000000000000062000000 /f

:: Turn On Use Check Boxes to Select Items
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AutoCheckSelect /t REG_DWORD /d 1 /f

:: Remove Bing Chat and Web Icons in Windows Search
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f

taskkill /f /im explorer.exe
start explorer.exe

powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Clipchamp.Clipchamp" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.549981C3F5F10" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.BingNews" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.BingWeather" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.GamingApp" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.GetHelp" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.Getstarted" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.MicrosoftOfficeHub" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.MicrosoftSolitaireCollection" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.MicrosoftStickyNotes" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.People" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.Todos" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "microsoft.windowscommunicationsapps" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.WindowsFeedbackHub" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.WindowsMaps" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.WindowsNotepad" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.Xbox.TCUI" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.XboxGameOverlay" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.XboxGamingOverlay" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.XboxIdentityProvider" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.YourPhone" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "Microsoft.ZuneVideo" | Remove-AppxPackage"
powershell -command "Get-AppxPackage -PackageTypeFilter Bundle -Name "MicrosoftCorporationII.QuickAssist" | Remove-AppxPackage"
