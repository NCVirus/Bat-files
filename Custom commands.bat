@echo off
echo Microsoft Windows [Version 10.0.22631.5472]
echo (c) Microsoft Corporation. Alle rechten voorbehouden.
echo.
set /p cmd="C:\Users\Robin>"
title Opdrachtprompt
:loop
chcp 65001 >nul
set /p cmd="C:\Users\Robin>"

if /i "%cmd%"=="help" goto help
if /i "%cmd%"=="version" goto ver
if /i "%cmd%"=="IPN" goto loadipn
if /i "%cmd%"=="IPN -Connect User-ips" goto loadipn2
if /i "%cmd%"=="File -open -counter" goto filecount
if /i "%cmd%"=="exit"  goto end

echo '%cmd%' is not recognized as an internal or external command,
echo operable program or batch file.
echo.
goto loop

:help
echo.
echo HELP                                     show commands
echo IPN                                      show Data USER
echo IPN -Connect User-ips                    show Connect ips
echo VERSION                                  show current/installed version
echo.
goto loop

:ver
echo.
echo Version 1
echo.
goto loop

:loadipn
echo.
echo.
echo.
powershell -Command "Write-Host '   ██╗██████╗ ███╗   ██╗' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██╔══██╗████╗  ██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██████╔╝██╔██╗ ██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██╔═══╝ ██║╚██╗██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██║     ██║ ╚████║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ╚═╝╚═╝     ╚═╝  ╚═══╝ Version 1.0C' -ForegroundColor Blue"
echo.
powershell -Command "Write-Host 'DATA USER @2947203' -ForegroundColor Blue"
echo.
powershell -Command "Write-Host 'No Request Found Error:101' -ForegroundColor Red"
echo.
echo.
echo.
goto loop

:loadipn2
echo.
echo.
echo.
powershell -Command "Write-Host '   ██╗██████╗ ███╗   ██╗' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██╔══██╗████╗  ██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██████╔╝██╔██╗ ██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██╔═══╝ ██║╚██╗██║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ██║██║     ██║ ╚████║' -ForegroundColor Blue"
powershell -Command "Write-Host '   ╚═╝╚═╝     ╚═╝  ╚═══╝ Version 1.0C' -ForegroundColor Blue"  
echo.
powershell -Command "Write-Host 'DATA USER @2947203' -ForegroundColor Blue"
echo.
powershell -Command "Write-Host '|DEVICES CONNECTED: 1' -ForegroundColor Blue"
echo.
powershell -Command "Write-Host '|PC: (C\Users\Robin)' -ForegroundColor Yellow"
echo.
echo.
echo.
goto loop

:time
echo.
echo De huidige tijd is: %time%
goto loop

:open
start https://www.google.com
goto loop

:end
exit

:filecount
echo.
echo starting counter
start counter.bat
goto loop
