@echo off
title System Exploit - Vulnerability Check in Progress
color 0A

:: Function to generate a random string
setlocal enabledelayedexpansion
set chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()

:: Fake "checking for vulnerabilities"
echo Checking for vulnerabilities...
ping localhost -n 3 >nul
echo Vulnerability found: 1
ping localhost -n 2 >nul
echo Exploiting...
ping localhost -n 3 >nul
echo System Opened...
ping localhost -n 2 >nul

:: Fake "cracking admin passwords"
echo Cracking admin passwords...
ping localhost -n 2 >nul

for /l %%i in (1,1,15) do (
    set "password="
    for /l %%j in (1,1,12) do (
        set /a index=!random! %% 70
        for %%k in (!index!) do set "password=!password!!chars:~%%k,1!"
    )
    echo Admin %%i: Password = !password!
    ping localhost -n 2 >nul
)

:: Fake "checking company structure"
echo Checking entire company structure...
ping localhost -n 3 >nul

:: Fake "scanning managers, extranets, and connections"
echo Scanning managers' access...
ping localhost -n 2 >nul
for /l %%i in (1,1,10) do (
    echo Manager %%i: Access Level = HIGH
    ping localhost -n 1 >nul
)

echo Scanning extranets and remote connections...
ping localhost -n 2 >nul
for /l %%i in (1,1,5) do (
    echo Extranet Connection %%i: Exploited
    ping localhost -n 1 >nul
)

:: Fake device scanning with a 1 in 5 chance of finding a device
:loop
echo Checking for more vulnerabilities throughout the network...
ping localhost -n 3 >nul

set /a deviceFound=!random! %% 5
if !deviceFound! equ 0 (
    :: Fake device stats
    set "deviceName=Device_!random!!random!"
    set "osVersion=OS_Version_!random!_Patch_!random!"
    set /a exploitAvailable=!random! %% 2
    echo Device found: !deviceName!
    echo OS Version: !osVersion!
    
    if !exploitAvailable! equ 0 (
        echo Exploit available: Yes
    ) else (
        echo Exploit available: No
    )
    ping localhost -n 3 >nul
)

goto loop
