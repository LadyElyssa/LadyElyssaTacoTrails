@IF EXIST "LadyElyssa.taco" del \Q "LadyElyssa.taco"
@powershell Compress-Archive "'Data\'","*.xml" LadyElyssa.zip -Force
@ren LadyElyssa.zip LadyElyssa.taco
