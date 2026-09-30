@echo off
if /I "%~1"=="first" (
	echo first
	exit /b 0
)
if /I "%~1"=="second" (
	echo second
	exit /b 0
)
