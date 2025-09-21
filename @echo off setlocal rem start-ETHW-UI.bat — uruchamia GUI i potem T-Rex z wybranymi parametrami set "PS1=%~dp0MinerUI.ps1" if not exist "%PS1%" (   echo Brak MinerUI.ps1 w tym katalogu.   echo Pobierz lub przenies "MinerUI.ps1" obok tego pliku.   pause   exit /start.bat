@echo off
setlocal
rem start-ETHW-UI.bat — uruchamia GUI i potem T-Rex z wybranymi parametrami
set "PS1=%~dp0MinerUI.ps1"
if not exist "%PS1%" (
  echo Brak MinerUI.ps1 w tym katalogu.
  echo Pobierz lub przenies "MinerUI.ps1" obok tego pliku.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%"
