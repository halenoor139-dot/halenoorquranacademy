@echo off
set "PATH=C:\Program Files\Git\cmd;C:\Program Files\Git\ucrt64\bin;C:\Program Files\Git\bin;%PATH%"
title Hale Noor Quran Academy - GitHub Upload
echo ========================================================
echo   Uploading Hale Noor Online Quran Academy to GitHub
echo   Repo: https://github.com/halenoor139-dot/halenoorquranacademy
echo ========================================================
echo.
echo Running: git push -u origin main ...
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] Website successfully uploaded to GitHub!
) else (
    echo.
    echo [INFO] Authentication required.
    echo If a browser window opened, click "Authorize git-credential-manager".
    echo Alternatively, you can use a GitHub Personal Access Token (PAT).
)
echo.
pause
