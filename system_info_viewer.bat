@echo off
setlocal enabledelayedexpansion

echo Welcome to the System Information Viewer
echo This script will display some basic information about your system.
echo.
echo Press any key to continue or close the window to exit.
pause >nul

:: Get system information
for /f "tokens=2 delims==" %%a in ('wmic os get Caption /value') do set "OS_NAME=%%a"
for /f "tokens=2 delims==" %%a in ('wmic os get Version /value') do set "OS_VERSION=%%a"
for /f "tokens=2 delims==" %%a in ('wmic computersystem get Name /value') do set "COMPUTER_NAME=%%a"
for /f "tokens=2 delims==" %%a in ('wmic computersystem get Manufacturer /value') do set "MANUFACTURER=%%a"
for /f "tokens=2 delims==" %%a in ('wmic computersystem get Model /value') do set "MODEL=%%a"

:: Display information
echo System Information:
echo -------------------
echo Operating System: %OS_NAME% %OS_VERSION%
echo Computer Name: %COMPUTER_NAME%
echo Manufacturer: %MANUFACTURER%
echo Model: %MODEL%
echo.

:: Ask user if they want to save the information
set /p SAVE_INFO=Do you want to save this information to a file? (Y/N): 

if /i "%SAVE_INFO%"=="Y" (
    echo Saving information to system_info.txt on your desktop...
    (
        echo System Information:
        echo -------------------
        echo Operating System: %OS_NAME% %OS_VERSION%
        echo Computer Name: %COMPUTER_NAME%
        echo Manufacturer: %MANUFACTURER%
        echo Model: %MODEL%
        echo.
        echo Generated on: %DATE% at %TIME%
    ) > "%USERPROFILE%\Desktop\system_info.txt"
    echo Information saved to %USERPROFILE%\Desktop\system_info.txt
) else (
    echo Information not saved.
)

:: Clean up environment variables
endlocal

echo.
echo Thank you for using the System Information Viewer!
pause