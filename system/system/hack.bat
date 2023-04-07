@echo off
color 0a
mode con cols=120 lines=30
title 404kit
echo.
echo          Preparing the tools...
ping 127.0.0.1 -n 1 > nul
echo          Target system: localhost
ping 127.0.0.1 -n 1 > nul
echo          Scanning for vulnerabilities...
ping 127.0.0.1 -n 2 > nul
echo          Vulnerability found: [FTP server]
ping 127.0.0.1 -n 2 > nul
echo          Trying to access...
ping 127.0.0.1 -n 2 > nul
echo          Done!
ping 127.0.0.1 -n 2 > nul
echo          --------------------------------------
echo          #         ###   #      
echo          #    #   #   #  #    #  #    # # ##### 
echo          #    #  #     # #    #  #   #  #   #  
echo          #    #  #     # #    #  ####   #   # 
echo          ####### #     # ####### #  #   #   # 
echo               #   #   #       #  #   #  #   # 
echo               #    ###        #  #    # #   #  
echo          --------------------------------------
               
ping 127.0.0.1 -n 2 > nul
echo.
set /p username=.         username: 
set /p password=.        password: 
echo          Access granted.
ping 127.0.0.1 -n 1 > nul
echo          Initiating system takeover...
ping 127.0.0.1 -n 2 > nul
echo.
echo          Press any key to continue...
pause > nul
cls
echo Welcome to the Hacking System!


:loop
set /p input=Enter command: 

if "%input%"=="help" (
    echo Available commands:
    echo   help    Display this help message
    echo   sl -a
    echo      -l
    echo      -f
    echo   reboot
    echo   shutdown now
    rem 再起動
    ) else if "%input%"=="reboot" (
    shutdown /r /t 0
    rem シャットダウン
    ) else if "%input%"=="shutdown now" (
    shutdown /s /t 0
    rem SL
    ) else if "%input%"=="sl %op%" (
    sl %op%
     ) else if "%input%"=="ls" (
    dir /w
    ) else if "%input%"=="rm %fil%" (
    del  %fil%
) else (
    %input%
)

echo.
echo.
goto loop