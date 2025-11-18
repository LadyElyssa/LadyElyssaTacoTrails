@ECHO OFF

 python xmlchk.py > nul 2>&1
IF %ERRORLEVEL% EQU 0 (
ECHO XML CHECK OK!
ECHO.
ECHO Performing Housekeeping...
ECHO.
REM Remove GW2TacO Logs
IF EXIST "E:\Games\GW2TacO\GW2TacO.log" (del /Q "E:\Games\GW2TacO\GW2TacO.log" > nul 2>&1)

REM Remove BlishHUD Logs
IF EXIST "E:\Documents\Guild Wars 2\addons\blishhud\logs" del /Q "E:\Documents\Guild Wars 2\addons\blishhud\logs\*.log" > nul 2>&1

REM Clear GW2 Cache
IF EXIST "%temp%\gw2cache*." FOR /d %%G in ("%temp%\GW2Cache*") DO RMDIR /s /q "%%G" > nul 2>&1

ECHO Copying Files to Github Desktop...
ECHO.
XCOPY /E/Y/I/Q .\Data\*.* "E:\Github\LadyElyssaTacoTrails\Data"
XCOPY /S/E/Y/Q *.bat "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.md "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.xml "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q xmlchk.py "E:\Github\LadyElyssaTacoTrails"
) else (
ECHO XML CHECK FAILED!
ECHO.
python xmlchk.py
ECHO.
Pause
exit
)

:Done
ECHO.
Timeout /T 2