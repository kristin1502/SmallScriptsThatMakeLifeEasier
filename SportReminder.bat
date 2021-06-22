@echo off
setlocal enableDelayedExpansion
:: ================================================================
:: Das Script erinnert dich daran Sport zu machen. 
:: Passe die Übungen und Wiederholungen für dich persönlich an.
:: ================================================================

:: Squat Varianten
set squatVariants[0]=Basic Squats
set squatVariants[1]=Side Kick Squats
set squatVariants[2]=Plie Squats
set squatVariants[3]=Prisoner Squats
set squatVariants[4]=Einbeinige Squats, 5 pro Seite

:: Push-Up Varianten
set pushUpVariants[0]=Basic Push-Ups
set pushUpVariants[1]=Diamant Push-Ups
set pushUpVariants[2]=Wide Hand Push-Ups
set pushUpVariants[3]=Gestaffelte Push-Ups
set pushUpVariants[4]=Kniende Push-Up

:: Sit-Up Varianten
set sitUpVariants[0]=Basic Sit-Ups
set sitUpVariants[1]=Crunches
set sitUpVariants[2]=Russian Twists
set sitUpVariants[3]=Bicycle Crunches
set sitUpVariants[4]=Toe Touches

:: Random Varianten auswählen, 2x generieren, da oft die gleichen Werte bei erneutem Ausführen auftreten idk
set min=0
CALL :getArrayLength squatVariants, maxSquats
CALL :getArrayLength pushUpVariants, maxPushUps
CALL :getArrayLength sitUpVariants, maxSitUps

set /a randomSquat=min+(maxSquats-min+1)*%random%/32768
set /a randomSquat=min+(maxSquats-min+1)*%random%/32768

set /a randomPushUp=min+(maxPushUps-min+1)*%random%/32768
set /a randomPushUp=min+(maxPushUps-min+1)*%random%/32768

set /a randomSitUp=min+(maxSitUps-min+1)*%random%/32768
set /a randomSitUp=min+(maxSitUps-min+1)*%random%/32768

ECHO SPORT - DU SCHAFFST DAS!
ECHO.
ECHO 10 !squatVariants[%randomSquat%]!
pause
ECHO.
ECHO 10 !pushUpVariants[%randomPushUp%]!
pause
ECHO.
ECHO 10 !sitUpVariants[%randomSitUp%]!
pause
ECHO.
ECHO 30 Hampelmaenner
pause 
ECHO.
ECHO GUT GEMACHT!
ECHO.
pause

endlocal
exit /B %ERRORLEVEL%

:getArrayLength
set /a "x=0"
:loop
if defined %~1[%x%] ( 
    set /a "x+=1"
    GOTO :loop 
)
set /a "x-=1"
set %~2=%x%
exit /B 0