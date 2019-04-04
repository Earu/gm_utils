@echo off
title Update Workshop Addon Icon
set /p location="Icon Path: "
set /p id="Workshop ID: "
if exist "%location%" (
    gmpublish.exe update -icon "%location%" -id "%id%"
) else (
    echo Could not find any icon at specified path
)
pause