@echo off

:: Get the directory of the currently executing batch script
set "scriptDir=%~dp0"

:: Specify the name of the batch script to run
set "batchScript=Cleaner.bat"

:: Combine the script directory and batch script name to get the full path
set "batchScriptFullPath=%scriptDir%%batchScript%"

:: Call the batch script to run it
call "%batchScriptFullPath%"

:: Rest of your batch script code here
