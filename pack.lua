-- Required Scripts
Debug:Print(Menu)

Debug:Print("Loading Lady Elyssa's Elisa Script...")
Pack:Require("Scripts/elisa.lua")

Debug:Print("Loading Lady Elyssa's PSNA Script...")
Pack:Require("Scripts/psna.lua")

Debug:Print("Loading Lady Elyssa's Seimur Oxbone Script...")
Pack:Require("Scripts/oxbone.lua")

Debug:Print("Loading MMM Fishing Bait Menu...")
Pack:Require("Scripts/baitmenu.lua")


-- Functions
local function copyPSNA(menu)
    Legs_CopyPSNA()
end

local function copyOxbone(menu)
    Legs_CopyOxbone()
end


-- Construct Lua Scripts Menu
local root = Menu:Add("Lady Elyssa", nil, false, false, "Lady Elyssa's Scripts")
-- Add Sub Menus
local psnaMenu = root:Add("Copy Today's PSNA WPs",copyPSNA, false, false, "Copies today's PSNA waypoint codes")
psnaMenu:Add("Thanks to Metallis",nil, false, false)

local oxboneMenu = root:Add("Copy WP for Seimur Oxbone",copyOxbone, false, false, "Copies WP for Seimur Oxbone")

