@echo off
REM ==========================
REM Log Monitoring Script
REM ==========================

REM This script simulates monitoring system logs for errors
set ERROR_FILE=error_logs.txt

echo Simulating log monitoring...
echo Error found at %date% %time% >> %ERROR_FILE%
echo Check error_logs.txt for errors.

pause
