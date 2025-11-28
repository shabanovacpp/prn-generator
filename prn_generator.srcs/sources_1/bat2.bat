@echo off
set "PROGRAM=modelsim"
set "ARGS=-do m.do"

:: Проверяем, запущена ли уже программа Modelsim
tasklist /fi "imagename eq vish.exe" | find /i "vish.exe" >nul

if not errorlevel 1 (
    echo Modelsim are currently running. Cloing current procces...
    taskkill /im "vish.exe" /f >nul
    timeout /t 2 /nobreak >nul
    echo Starting Modelsim...
) else (
    echo Starting Modelsim...
)

:: Запускаем программу
%PROGRAM% %ARGS%