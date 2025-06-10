@ECHO OFF
@IF EXIST "%temp%\gw2cache*." FOR /d %%G in ("%temp%\GW2Cache*") DO RMDIR /s /q "%%G"
@IF EXIST "E:\Games\GW2TacO\GW2TacO.log" (
  del /Q "E:\Games\GW2TacO\GW2TacO.log"
)
XCOPY /E/Y/I/Q .\Data\*.* "E:\Github\LadyElyssaTacoTrails\Data"
XCOPY /S/E/Y/Q *.bat "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.md "E:\Github\LadyElyssaTacoTrails"
XCOPY /S/E/Y/Q *.xml "E:\Github\LadyElyssaTacoTrails"


:Done