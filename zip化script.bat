@echo off
powershell Compress-Archive -Path system -DestinationPath system.zip
ren system.zip system.404