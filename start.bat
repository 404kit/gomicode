@echo off
rename system.404 system.zip
powershell expand-archive -Path system.zip
rename system.zip system.404
cd system/
cd system/
start 404kit.bat