@echo off && setlocal enabledelayedexpansion

FOR /F "tokens=1" %%F IN ('"powershell -co [Environment]::GetFolderPath('MyDocuments')"') DO SET DOCS=%%F
set DEST=%DOCS%\Paradox Interactive\Stellaris\mod

xcopy "%CD%\~ T145's Patch Collection (3.4)" "%DEST%\~ T145's Patch Collection (3.4)" /c /g /d /i /e /r /h /y

endlocal && goto :EOF