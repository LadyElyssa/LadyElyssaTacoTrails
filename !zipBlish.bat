@IF EXIST "LadyElyssa.zip" (
  del \Q "LadyElyssa.zip"
)

@IF EXIST "LadyElyssa.taco" (
  @MOVE /Y "LadyElyssa.taco" "E:\Documents\Guild Wars 2\addons\blishhud\markers"
)

@powershell Compress-Archive "'Data\'","*.xml" LadyElyssa.zip -Force
@ren LadyElyssa.zip LadyElyssa.taco
@MOVE /Y "LadyElyssa.taco" "E:\Documents\Guild Wars 2\addons\blishhud\markers"

