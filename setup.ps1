Write-Host "Installing VS Code..."
winget install -e --id Microsoft.VisualStudioCode --source winget

Write-Host "Installing Git..."
winget install -e --id Git.Git --source winget

Write-Host "Installing Shadowsocks..."
winget install -e --id shadowsocks.shadowsocks-windows --source winget

Write-Host "Setting execution policy..."
Set-ExecutionPolicy Bypass -Scope CurrentUser -Force
