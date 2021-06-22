@echo off
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
set pushUpVariants[2]=Wide Hands Push-Ups
set pushUpVariants[3]=Gestaffelter Push-Ups
set pushUpVariants[4]=Kniender Push-Up

:: Sit-Up Varianten
set sitUpVariants[0]=Basic Sit-Ups
set sitUpVariants[1]=Crunches
set sitUpVariants[2]=Russian Twists
set sitUpVariants[3]=Bicycle Crunches
set sitUpVariants[4]=Toe Touches

:: Random Varianten auswählen, 2x generieren, da oft die gleichen Werte bei erneutem Ausführen auftreten idk
set min=0
set max=4
set /a randomSquat=min+(max-min+1)*%random%/32768
set /a randomSquat=min+(max-min+1)*%random%/32768
set /a randomPushUp=min+(max-min+1)*%random%/32768
set /a randomPushUp=min+(max-min+1)*%random%/32768
set /a randomSitUp=min+(max-min+1)*%random%/32768
set /a randomSitUp=min+(max-min+1)*%random%/32768

setlocal enableDelayedExpansion
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
exit