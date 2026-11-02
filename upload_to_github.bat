@echo off
setlocal enabledelayedexpansion
set "PATH=C:\Program Files\Git\cmd;C:\Program Files\Git\ucrt64\bin;C:\Program Files\Git\bin;%PATH%"
title Hale Noor Quran Academy - GitHub Uploader
cls
echo ======================================================================
echo          HALE NOOR ONLINE QURAN ACADEMY - GITHUB UPLOAD
echo ======================================================================
echo  Repository: https://github.com/halenoor139-dot/halenoorquranacademy
echo  Branch    : main
echo ======================================================================
echo.
echo [1/3] Checking Git status...
git status
echo.
echo [2/3] Uploading website files to GitHub...
echo (Agar browser window khulay toh 'Sign in with browser' pr click karein)
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ======================================================================
    echo  [MUBARAK / SUCCESS!] Website kamiyabi sy GitHub pr upload ho chuki hy!
    echo  Check karein: https://github.com/halenoor139-dot/halenoorquranacademy
    echo ======================================================================
    goto end
)

echo.
echo ----------------------------------------------------------------------
echo  [NOTE] Browser login nahi hua ya Authentication Error aya?
echo  Agar aapky pas GitHub Personal Access Token (PAT) hy, toh yahan paste karein.
echo  (Agar token nahi hy, toh sirf ENTER dabayein browser login dubara try krny k lye)
echo ----------------------------------------------------------------------
set /p "GH_TOKEN=GitHub Token (Enter if available, or leave blank): "

if not "%GH_TOKEN%"=="" (
    echo.
    echo Uploading with Personal Access Token...
    git remote set-url origin https://%GH_TOKEN%@github.com/halenoor139-dot/halenoorquranacademy.git
    git push -u origin main
    if !ERRORLEVEL! EQU 0 (
        echo.
        echo ======================================================================
        echo  [MUBARAK / SUCCESS!] Website kamiyabi sy upload ho chuki hy!
        echo ======================================================================
        rem Clean up token from remote url for security
        git remote set-url origin https://github.com/halenoor139-dot/halenoorquranacademy.git
        goto end
    ) else (
        echo [ERROR] Token k sath b push fail hua. Please token permissions check karein (repo scope required).
        git remote set-url origin https://github.com/halenoor139-dot/halenoorquranacademy.git
    )
)

:end
echo.
echo Press any key to exit this window...
pause >nul
