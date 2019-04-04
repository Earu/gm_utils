@echo off
title Update Workshop Addon
set /p location="Addon Path: "
set /p id="Workshop ID: "
set /p changes="Changes: "
if exist "%location%" (
	gmad.exe create -folder "%location%" -out "%location%.gma"
	if exist "%location%.gma" (
		gmpublish.exe update -addon "%location%.gma" -id "%id%" -changes "%changes%"
	) else (
		echo Could not create gma archive, aborting
	)
) else (
	echo Could not find the specified path
)
pause