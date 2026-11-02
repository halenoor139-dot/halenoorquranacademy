@echo off
title Hale Noor Quran Academy - GitHub Upload
echo ========================================================
echo   Uploading Hale Noor Online Quran Academy to GitHub
echo   Repo: https://github.com/halenoor139-dot/halenoorquranacademy
echo ========================================================
echo.
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] Website successfully uploaded to GitHub!
) else (
    echo [NOTE] If prompted, click "Sign in with your browser" or paste your GitHub Token.
)
echo.
pause
