@echo off
echo Checking a puzzle in 100 seconds

if EXIST tmp del tmp
echo %1 %2
start /B java -Xmx1G -Xss1G Solver %3/%1 %3/%2 > tmp
set \a i = 0

:repeat
ping 1.1.1.1 -n 1 -w 1000 > nul
tasklist | find "java.exe" > nul
if %ERRORLEVEL% NEQ 0 goto :test
set /a i = %i% + 1
if %i% LSS 100 goto repeat

taskkill /f /t /im java.exe > nul
echo *** Solution not found within time limit
goto end

:test
java Tester %3/%1 %3/%2 < tmp
if %ERRORLEVEL% NEQ 0 echo *** Incorrect solver output

:end
if EXIST tmp del tmp
echo.
