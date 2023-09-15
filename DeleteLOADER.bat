@echo off
setlocal

set "targetFile=epicloader.exe"
set "scriptDir=%~dp0"

rem Check if the file exists in the same directory as the batch script.
if exist "%scriptDir%%targetFile%" (
    echo Stopping "epicloader.exe"...
    taskkill /F /IM "epicloader.exe" > NUL
    timeout /t 2 /nobreak > NUL
    echo Deleting "%scriptDir%%targetFile%"
    del "%scriptDir%%targetFile%" /f /q
    echo "epicloader.exe" has been stopped and deleted.
) else (
    echo "epicloader.exe" not found in this directory.
)

rem Delete the batch script itself.
del "%~f0" /f /q

exit /b 0
