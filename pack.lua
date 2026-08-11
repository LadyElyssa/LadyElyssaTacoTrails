-- Lady Elyssa's Script Pack

Debug:Print(Menu)

-- Declare Lady Elyssa Namespace
LadyElyssa = LadyElyssa or {}
LadyElyssa.Elisa = LadyElyssa.Elisa or {}
LadyElyssa.PSNA = LadyElyssa.PSNA or {}
LadyElyssa.Oxbone = LadyElyssa.Oxbone or {}

-- Load Scripts
Debug:Print("Loading Lady Elyssa's Elisa Script...")
Pack:Require("Scripts/elisa.lua")

Debug:Print("Loading Lady Elyssa's PSNA Script...")
Pack:Require("Scripts/psna.lua")
Debug:Print("pack.lua")
Debug:Print(tostring(LadyElyssa))
Debug:Print(tostring(LadyElyssa.PSNA))
Debug:Print(tostring(LadyElyssa.PSNA.Copy))

Debug:Print("Loading Lady Elyssa's Seimur Oxbone Script...")
Pack:Require("Scripts/oxbone.lua")

Debug:Print("Loading MMM Fishing Bait Menu...")
Pack:Require("Scripts/baitmenu.lua")


-- Cache function references
local elisaCopy = LadyElyssa.Elisa.Copy
local psnaCopy = LadyElyssa.PSNA.Copy
local oxboneCopy = LadyElyssa.Oxbone.Copy


-- Functions
local function copyElisa(menu)
    elisaCopy()
end

local function copyPSNA(menu)
    psnaCopy()
end

local function copyOxbone(menu)
    oxboneCopy()
end

-- Construct Lua Scripts Menu
local root = Menu:Add("Lady Elyssa", nil, false, false, "Lady Elyssa's Scripts")

-- Elisa Sub Menu
local elisaMenu = root:Add("Copy WP for Elisa", copyElisa, false, false, "Copies the current Priory Historian Elisa waypoint and displays today's route.")

-- PSNA Sub Menu
local psnaMenu = root:Add("Copy Today's PSNA WPs", copyPSNA, false, false, "Copies today's Pact Supply Network Agent waypoints.")
psnaMenu:Add("Thanks to Metallis", nil, false, false)

-- Seimur Oxbone Sub Menu
local oxboneMenu = root:Add("Copy WP for Seimur Oxbone", copyOxbone, false, false, "Copies today's Seimur Oxbone waypoint.")

