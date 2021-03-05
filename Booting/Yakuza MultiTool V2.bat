@echo off
cls
mode con lines=24 cols=82
title 45.798.654.48 - PuTTY
set /p user=[40;35mUsername[40;37m: 
cls
set /p pass=[40;35mPassword[40;37m: 
if %user% == root if %pass% == root goto good
goto again
:again
cls
echo [40;31mWrong Username or Password!
set /p user=[40;35mUsername[40;37m: 
cls
set /p pass=[40;35mPassword[40;37m: 
if %user% == root if %pass% == root goto good
echo [40;31mWrong Username or Password!
goto again
:good
cls
echo [40;35mPlease wait... I am verifying your credentials [40;37m[[40;35mI[40;37m]
echo [42;37m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;37m[[40;35m/[40;37m]
echo [42;37m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;37m[[40;35m-[40;37m]
echo [42;37m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;37m[[40;35m/[40;37m]
echo [42;37m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;37m[[40;35m-[40;37m]
echo [42;37m [40;30m 
ping localhost -n 2 >nul
goto main
:main
set /a bots1=(%Random%%%9)+1
set /a bots2=(%Random%%%8)+1
set /a bots3=(%Random%%%7)+1
set /a bots4=(%Random%%%6)+1
set /a bots5=(%Random%%%9)+1
call caps.vbs
cls
title Bots Connected [%bots1%%bots2%%bots3%%bots4%] [root] - Users Online [%bots5%]
echo off
:clear
cls
mode con lines=24 cols=82
color 5                                                                                  
type yakuzatx.py
:top
set /p bot=[40;35mYakuza[40;37m# 
if %bot% == HELP goto help
if %bot% == LOGOUT goto logout
if %bot% == CLEAR goto clear
if %bot% == PORT goto port
if %bot% == SHUT goto down
if %bot% == SPAM goto spambot
if %bot% == MAIL goto mail
if %bot% == PING goto ping
if %bot% == FAKE goto person
if %bot% == ALL goto pingall
if %bot% == LOOKUP goto lookip
if %bot% == PUTTY goto putty
if %bot% == LANC goto lanc
if %bot% == DDOS goto ddos
goto top
:ping
set /p bot=[40;35mEnter IP[40;37m# 
:cros
PING -n 1 %bot% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto sub
IF NOT ERRORLEVEL 1 goto rcc
:sub
echo  [40;31m[[40;32mYakuza[40;31m] [40;37m([41;37m%bot%[40;37m) IS [40;33mOFFLINE  [40;37m::  [40;31mDROWNED 
echo.
goto cros
:rcc
echo  [40;32m[Yakuza] [40;37m([40;36m%bot%[40;37m) IS [40;32mONLINE  [40;37m::  [40;34mWAITING 
echo.
goto cros
:help
echo ^>---[40;35mList Of Commands[40;37m---^<
echo !* PING TO IP/URL PING    !* LANC TO OPEN RE LANC V2
echo !* PORT TO PORT SCAN      !* FAKE TO OPEN FAKE PERSON INFO
echo !* CLEAR TO CLEAR SCREEN  !* LOOKUP TO IP ADDRESS LOOKUP
echo !* PUTTY TO OPEN PUTTY    !* ALL TO OPEN CREATORS ALL PINGERS
echo !* SPAM TO OPEN SPAMBOT   !* MAIL TO OPEN TEMP MAIL
echo !* LOGOUT TO EXIT         !* DDOS TO OPEN LANC,PUTTY AND PORT
echo ^>---[40;35mAbout Creator[40;37m---^<
echo !* Made by [40;32mRavelCros_Cro[40;37m
echo !* YouTube: RavelCros_Cro !* Instagram @ravelcros_cro
echo !* YAKUZA IS UNIQUE MULTITOOL
echo !* Version - 2
goto top
:logout
call caps.vbs
echo        [40;33m___  ___
echo      [40;37m__[40;33m![40;37m_[40;33m![40;37m__[40;33m![40;37m_[40;33m![40;37m___
echo    [40;31m_[40;37m![40;31m_____________[40;37m![40;31m__
echo   !ooooooooooooooooo/
echo [40;36m~~~~~~~~~~~~~~~~~~~~~~~~~
echo [40;34mBIG BOATS MY %USERNAME%, YEET
echo [42;37m [40;30m 
ping localhost -n 4 >nul 
exit
:clear
@echo off
cls
goto clear
:port
set /p portip=[40;37m[[40;35mYakuza[40;37m] Enter IP:
start yakport.py %portip%
goto top
:spambot
echo [40;37m[[40;35mYakuza[40;37m] SPAM BOT ACTIVE!
start spam.vbs
goto top
:mail
echo [40;37m[[40;35mYakuza[40;37m] TEMP MAIL OPENED!
start https://temp-mail.org/ 
goto top
:person
echo [40;37m[[40;35mYakuza[40;37m] FAKE PERSON INFO OPENED!
start https://www.fakepersongenerator.com/
goto top
:pingall
echo [40;37m[[40;35mYakuza[40;37m] FILE OPENED!
start pings
goto top
:lookip
echo [40;37m[[40;35mYakuza[40;37m] IP LOOKUP OPENED!
start lookip.bat
goto top
:putty
echo [40;37m[[40;35mYakuza[40;37m] PUTTY OPENED!
start PuTTY.exe
goto top
:lanc
echo [40;37m[[40;35mYakuza[40;37m] RE LANC V2 OPENED!
start relanc/LANCv2.exe
goto top
:ddos
echo [40;37m[[40;35mYakuza[40;37m] DDOS TOOLS OPENED!
start relanc/LANCv2.exe
start PuTTY.exe
goto port
