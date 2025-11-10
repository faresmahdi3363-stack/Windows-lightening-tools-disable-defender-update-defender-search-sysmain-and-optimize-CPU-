@echo off
title Disable Defender Completely (WinDefend + RealTime + Search + SysMain)
echo Disabling Defender services...

:: Stop and disable Defender service
sc stop WinDefend
sc config WinDefend start= disabled

:: Disable Defender via Registry
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f

:: Stop and disable SysMain (Superfetch)
sc stop SysMain
sc config SysMain start= disabled

:: Stop and disable Windows Search
sc stop WSearch
sc config WSearch start= disabled

echo Done. Please restart your computer.
pause
