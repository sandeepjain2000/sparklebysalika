@echo off
cd /d "%~dp0"

for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format 'yyyy-MM-dd_HH-mm-ss'"') do set "DT=%%i"

git add .
git commit -m "Update website %DT%"
git push

pause
