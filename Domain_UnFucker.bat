@echo off
chcp 65001

:start
TITLE Domain UnFucker v1.3
mode con: cols=80 lines=15
cls
echo 1. Enable Mobile Hotspot
echo 2. Disable defender 
echo 3. Enable defender
echo 4. Change DNS IP
echo 5. Reset DNS IP        
echo 6. Reboot
echo 7. Do all of the above
echo 8. Info

echo Run this program as an administrator 
echo.
echo Check for updates on: https://github.com/Kaupas24/Domain_Un_Fucker/releases
echo.

set input=
set /p input=Select a number

if /i '%input%'=='1' goto Hotspot
if /i '%input%'=='2' goto Defender
if /i '%input%'=='3' goto DefenderEnable
if /i '%input%'=='4' goto DnsChange
if /i '%input%'=='5' goto DnsReset
if /i '%input%'=='6' goto Reboot
if /i '%input%'=='7' goto DoAll
if /i '%input%'=='8' goto Info



:Hotspot
cls
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /f
timeout /t 2 /nobreak > nul
cls
goto start

:Defender
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1
timeout /t 2 /nobreak >nul
cls
goto start

:DefenderEnable
cls
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /f
timeout /t 2 /nobreak >nul
cls
goto start

:DnsChange
cls
netsh interface ip set dns "Wi-Fi" static 8.8.8.8
timeout /t 2 /nobreak >nul
cls
goto start

:DnsReset
cls
netsh interface ip set dns "Wi-Fi" dhcp
timeout /t 2 /nobreak >nul
cls
goto start

:reboot
shutdown /r /t 4 /c "Restarted by domain Un-fucker"
cls
goto start

:DoAll
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1
netsh interface ip set dns "Wi-Fi" static 8.8.8.8
echo rebooting in 5s
timeout /t 5 /nobreak >nul
shutdown /r /t 2 /c "Restarted by domain Un-fucker"


:Info
cls
mode con: cols=88 lines=33
TITLE Info
                                
echo                   ╭━━━╮╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮╱╭╮╱╱╱╱╱╭━━━╮╱╱╱╱╱╭╮
echo                   ╰╮╭╮┃╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃╱┃┃╱╱╱╱╱┃╭━━╯╱╱╱╱╱┃┃
echo                   ╱┃┃┃┣━━┳╮╭┳━━┳┳━╮╱┃┃╱┃┣━╮╱╱╱┃╰━━┳╮╭┳━━┫┃╭┳━━┳━╮
echo                   ╱┃┃┃┃╭╮┃╰╯┃╭╮┣┫╭╮╮┃┃╱┃┃╭╮┳━━┫╭━━┫┃┃┃╭━┫╰╯┫┃━┫╭╯
echo                   ╭╯╰╯┃╰╯┃┃┃┃╭╮┃┃┃┃┃┃╰━╯┃┃┃┣━━┫┃╱╱┃╰╯┃╰━┫╭╮┫┃━┫┃
echo                   ╰━━━┻━━┻┻┻┻╯╰┻┻╯╰╯╰━━━┻╯╰╯╱╱╰╯╱╱╰━━┻━━┻╯╰┻━━┻╯
echo                   This program was made with agony by Kristupas
echo -----------------------------------------------------------------------------------
echo ENABLE MOBILE HOTSPOT
echo The mobile hotspot function is probably disabled by the domain,
echo which is why you're using this program.
echo This program deletes a reg key called
echo HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections\NC_ShowSharedAccessUI
echo which re-enables the hotspot feature.
echo -----------------------------------------------------------------------------------
echo -----------------------------------------------------------------------------------
echo DISABLE DEFENDER
echo For some reason, domains use super strict windows defender policies,
echo which means that certain programs are completely blocked from being
echo on your pc.
echo This program disables it with a reg key called
echo HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware
echo ----------------------------------------------------------------------------------
echo ----------------------------------------------------------------------------------
echo CHANGE DNS IP
echo This option changes the DNS ip to 8.8.8.8, which can sometimes bypass the domain
echo from resetting some settings.
echo ----------------------------------------------------------------------------------
echo.
echo Check for updates on: https://github.com/Kaupas24/Domain_Un_Fucker/releases
echo.
set input=
set /p input= Press enter to go back to the main menu
if /i '%input%'=='' goto start
