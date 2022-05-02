@echo off
setlocal EnableDelayedExpansion
echo.
echo.Java demos: starting...
echo.

if exist build ( rd /s/q build || exit /b 1 )
if exist test ( rd /s/q test || exit /b 1 )
md test || exit /b 1
call gradlew.bat jar test || exit /b 1

REM ----------------------------------------------------------------------------------

call :TestDemo moonphase 2019-06-15T09:15:32.987Z || exit /b 1
call :TestDemo positions +45.6 -90.7 2018-11-30T17:55:07.234Z || exit /b 1
call :TestDemo seasons 2019 || exit /b 1

echo.
echo.Java demos: PASS
echo.
exit /b 0

REM ----------------------------------------------------------------------------------

:TestDemo
java -jar build/libs/astronomy-demo-1.0.0.jar %* > test\%1.txt
if errorlevel 1 (
    echo Error running Kotlin demo: %1
    exit /b 1
)
fc correct\%1.txt test\%1.txt
if errorlevel 1 (
    echo Incorrect output for Kotlin demo: %1
    exit /b 1
)
exit /b 0
