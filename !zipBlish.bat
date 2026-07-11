@IF EXIST "LadyElyssa.zip" (
  del /Q "LadyElyssa.zip"
)

@IF EXIST "LadyElyssa.taco" (
  del /Q "LadyElyssa.taco"
)

7z a -mx -r LadyElyssa.zip Data\ Scripts\ *.xml *.lua
@ren LadyElyssa.zip LadyElyssa.taco
@MOVE /Y "LadyElyssa.taco" "E:\Documents\Guild Wars 2\addons\blishhud\markers"

:Done