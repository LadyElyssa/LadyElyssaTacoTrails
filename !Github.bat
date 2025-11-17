@ECHO OFF

@ python xmlchk.py > nul 2>&1
@IF %ERRORLEVEL% EQU 0 (

@IF EXIST "E:\Games\GW2TacO\GW2TacO.log" (
  del /Q "E:\Games\GW2TacO\GW2TacO.log" > nul 2>&1
)

@IF EXIST "E:\Documents\Guild Wars 2\addons\blishhud\logs" del /Q "E:\Documents\Guild Wars 2\addons\blishhud\logs\*.log" > nul 2>&1

@IF EXIST "%temp%\gw2cache*." FOR /d %%G in ("%temp%\GW2Cache*") DO RMDIR /s /q "%%G" > nul 2>&1

XCOPY /E/Y/I/Q .\Data\*.* "E:\Github\LadyElyssaTacoTrails\Data"
XCOPY /S/E/Y/Q *.bat "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.md "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.xml "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q xmlchk.py "E:\Github\LadyElyssaTacoTrails"
) else (
@python xmlchk.py
exit
)

:Done
Timeout /T 3