@echo off
setlocal EnableExtensions EnableDelayedExpansion

echo Installing VS Code...
winget install -e --id Microsoft.VisualStudioCode --source winget

echo Installing Git...
winget install -e --id Git.Git --source winget

echo Installing Shadowsocks...
winget install -e --id shadowsocks.shadowsocks-windows --source winget

echo Enabling Scripts...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope CurrentUser -Force"

echo.
pause
