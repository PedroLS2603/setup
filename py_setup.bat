@echo off

FOR /F "tokens=*" %%g IN ('cd') do (SET InstallDir=%%g)
$env:ChocolateyInstall="$InstallDir"

Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco upgrade chocolatey

choco install git -y
choco install python -y
choco install vscode -y

