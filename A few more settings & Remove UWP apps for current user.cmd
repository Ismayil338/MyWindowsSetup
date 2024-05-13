@echo off

:: Open Item with Single-click (point to select), and Underline Icon Titles when Pointed at
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V IconUnderline /T REG_DWORD /D 2 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V ShellState /T REG_BINARY /D 240000001ea8000000000000000000000000000001000000130000000000000062000000 /F

:: Remove Bing Chat and Web Icons in Windows Search
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /V BingSearchEnabled /T REG_DWORD /D 0 /F

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
