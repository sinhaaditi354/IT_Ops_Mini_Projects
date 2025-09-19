@echo off
REM ==========================
REM Backup Script (Windows)
REM ==========================

REM Set source and backup folders relative to project folder
set PROJECT_DIR=C:\Users\aksdm\OneDrive\Desktop\IT_Ops_Mini_Projects\
set SOURCE_DIR=%PROJECT_DIR%data
set BACKUP_DIR=%PROJECT_DIR%backup

REM Create backup folder if it doesn’t exist
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

REM Copy all files from source to backup
xcopy "%SOURCE_DIR%\*" "%BACKUP_DIR%\" /E /H /C /Y

REM Log backup timestamp
echo Backup completed at %date% %time% >> "%PROJECT_DIR%backup_log.txt"

echo Backup done!
pause
