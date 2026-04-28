@echo off
setlocal EnableExtensions EnableDelayedExpansion

echo Installing Shadowsocks...
winget install -e --id shadowsocks.shadowsocks-windows --source winget

echo Downloading Steam installer...
winget download -e --id Valve.Steam -d "./temp" --source winget

echo Running Steam installer...
powershell -NoProfile -Command "$installer = Get-ChildItem '.\temp\Steam_*' -Recurse -Filter *.exe | Select-Object -First 1 -ExpandProperty FullName; $env:__COMPAT_LAYER='RunAsInvoker'; Start-Process $installer"

echo Enabling Scripts...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope CurrentUser -Force"

echo.
pause