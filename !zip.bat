@IF EXIST "E:\Games\GW2TacO\GW2TacO.log" (
  del \Q "E:\Games\GW2TacO\GW2TacO.log"
)

@IF EXIST "LadyElyssa.zip" (
  del \Q "LadyElyssa.zip"
)

@IF EXIST "LadyElyssa.taco" (
  del \Q "LadyElyssa.taco"
)

@powershell Compress-Archive "'Data\'","*.xml" LadyElyssa.zip -Force
@ren LadyElyssa.zip LadyElyssa.taco