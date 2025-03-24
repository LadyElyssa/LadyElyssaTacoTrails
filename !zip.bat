@IF EXIST "E:\Games\GW2TacO\GW2TacO.log" (
  del /Q "E:\Games\GW2TacO\GW2TacO.log"
)

@IF EXIST "LadyElyssa.zip" (
  del /Q "LadyElyssa.zip"
)

@IF EXIST "LadyElyssa.taco" (
  del /Q "LadyElyssa.taco"
)

7z a -mx -r LadyElyssa.zip Data\ *.xml
@ren LadyElyssa.zip LadyElyssa.taco