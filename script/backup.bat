set SCRIPT_DIR=%~dp0
@ECHO OFF
call  %SCRIPT_DIR%/../tmp/secrets.bat
IF "%SECRET_BISECT_USER%"=="" (
    echo Missing secrets file... see readme.md
    GOTO END
)
@ECHO ON 
set s

:END