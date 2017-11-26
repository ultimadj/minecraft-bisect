set SCRIPT_DIR=%~dp0
@ECHO OFF
call  %SCRIPT_DIR%/../tmp/secrets.bat
IF "%SECRET_BISECT_USER%"=="" (
    echo Missing secrets file... see readme.md
    GOTO END
)
@ECHO ON
rem For debugging... 
rem set s

:: time and date stamp YYYYMMDD, HHMMSS and YYYY-MM-DD_HH-MM-SS
@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%

set stamp=%YYYY%%MM%%DD%_%HH%%Min%

cd %SCRIPT_DIR%\..\tmp\
mkdir %stamp%

:END
cd %SCRIPT_DIR%