-- What a glorious filename

-- Generic Menu Function
local function copyPSNA(menu)
    MMM_CopyPSNA()
end

-- Construct Menu
local root = Menu:Add("MMM - Copy Today's PSNA WPs", copyPSNA, false, false, "Copies today's PSNA waypoint codes")
