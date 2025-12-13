@echo off
title Install - e-z.bio Username Checker

echo Checking Python installation...
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH!
    echo Please install Python from https://www.python.org/
    pause
    exit /b 1
)

echo Python found!
echo.
echo Fixing websocket package conflict...
pip uninstall -y websocket websocket-client
echo.
echo Installing required modules...
echo.

python -m pip install --upgrade pip
pip install -r requirements.txt

if errorlevel 1 (
    echo.
    echo ERROR: Installation failed!
    pause
    exit /b 1
)

echo.
echo Installation completed successfully!
echo.
pause

