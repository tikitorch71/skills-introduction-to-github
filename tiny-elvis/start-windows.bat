@echo off
REM Tiny Elvis launcher for Windows 11
REM Serves this folder over local HTTP (so images/sounds load without
REM browser file:// restrictions) and opens it in your default browser.

setlocal
set PORT=8641
cd /d "%~dp0"

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Starting local server at http://localhost:%PORT%/ ...
    start "" http://localhost:%PORT%/
    python -m http.server %PORT%
    goto :eof
)

where py >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Starting local server at http://localhost:%PORT%/ ...
    start "" http://localhost:%PORT%/
    py -m http.server %PORT%
    goto :eof
)

echo Python was not found, so opening index.html directly instead.
echo (If images or sounds don't load, install Python from python.org
echo  or the Microsoft Store and run this script again.)
start "" "index.html"
