-- Priory Historian Elisa Weekly Rotation

local Elisa = LadyElyssa.Elisa

-- Week 1 = Desert Highlands
-- Friday 26 December 2025 08:00 UTC

local anchor = os.time({
    year = 2025,
    month = 12,
    day = 26,
    hour = 8,
    min = 0,
    sec = 0
})

-- 52 week Elisa rotation
local weekData = {

    [1]  = { map = "dh",  waypoint = "[&BJEKAAA=]" },
    [2]  = { map = "dov", waypoint = "[&BHQKAAA=]" },
    [3]  = { map = "co",  waypoint = "[&BLsKAAA=]" },
    [4]  = { map = "er",  waypoint = "[&BFMKAAA=]" },
    [5]  = { map = "td",  waypoint = "[&BNwKAAA=]" },

    [6]  = { map = "dh",  waypoint = "[&BGsKAAA=]" },
    [7]  = { map = "dov", waypoint = "[&BHQKAAA=]" },
    [8]  = { map = "co",  waypoint = "[&BLsKAAA=]" },
    [9]  = { map = "er",  waypoint = "[&BFMKAAA=]" },
    [10] = { map = "td",  waypoint = "[&BNwKAAA=]" },

    [11] = { map = "dh",  waypoint = "[&BGoKAAA=]" },
    [12] = { map = "dov", waypoint = "[&BHQKAAA=]" },
    [13] = { map = "co",  waypoint = "[&BLsKAAA=]" },
    [14] = { map = "er",  waypoint = "[&BCgKAAA=]" },
    [15] = { map = "td",  waypoint = "[&BNwKAAA=]" },

    [16] = { map = "dh",  waypoint = "[&BGoKAAA=]" },
    [17] = { map = "dov", waypoint = "[&BA8KAAA=]" },
    [18] = { map = "co",  waypoint = "[&BJMKAAA=]" },
    [19] = { map = "er",  waypoint = "[&BGcKAAA=]" },
    [20] = { map = "td",  waypoint = "[&BKMKAAA=]" },

    [21] = { map = "dh",  waypoint = "[&BJ0KAAA=]" },
    [22] = { map = "dov", waypoint = "[&BO0KAAA=]" },
    [23] = { map = "co",  waypoint = "[&BLsKAAA=]" },
    [24] = { map = "er",  waypoint = "[&BCgKAAA=]" },
    [25] = { map = "td",  waypoint = "[&BHcKAAA=]" },

    [26] = { map = "dh",  waypoint = "[&BJEKAAA=]" },
    [27] = { map = "dov", waypoint = "[&BEoKAAA=]" },
    [28] = { map = "co",  waypoint = "[&BJMKAAA=]" },
    [29] = { map = "er",  waypoint = "[&BCgKAAA=]" },
    [30] = { map = "td",  waypoint = "[&BMEKAAA=]" },

    [31] = { map = "dh",  waypoint = "[&BKQKAAA=]" },
    [32] = { map = "dov", waypoint = "[&BEoKAAA=]" },
    [33] = { map = "co",  waypoint = "[&BEAKAAA=]" },
    [34] = { map = "er",  waypoint = "[&BCgKAAA=]" },
    [35] = { map = "td",  waypoint = "[&BMEKAAA=]" },

    [36] = { map = "dh",  waypoint = "[&BKQKAAA=]" },
    [37] = { map = "dov", waypoint = "[&BKUKAAA=]" },
    [38] = { map = "co",  waypoint = "[&BEAKAAA=]" },
    [39] = { map = "er",  waypoint = "[&BFMKAAA=]" },
    [40] = { map = "td",  waypoint = "[&BNwKAAA=]" },

    [41] = { map = "dh",  waypoint = "[&BKQKAAA=]" },
    [42] = { map = "dov", waypoint = "[&BEoKAAA=]" },
    [43] = { map = "co",  waypoint = "[&BEAKAAA=]" },
    [44] = { map = "er",  waypoint = "[&BGcKAAA=]" },
    [45] = { map = "td",  waypoint = "[&BHMKAAA=]" },

    [46] = { map = "dh",  waypoint = "[&BKQKAAA=]" },
    [47] = { map = "dov", waypoint = "[&BNAKAAA=]" },
    [48] = { map = "co",  waypoint = "[&BLsKAAA=]" },
    [49] = { map = "er",  waypoint = "[&BGcKAAA=]" },
    [50] = { map = "td",  waypoint = "[&BHcKAAA=]" },

    [51] = { map = "dh",  waypoint = "[&BJEKAAA=]" },
    [52] = { map = "td",  waypoint = "[&BNwKAAA=]" }
}

-- Get Current Week
function Elisa.GetWeek()

    local elapsed = os.time() - anchor
    local weeks = math.floor(elapsed / (7 * 24 * 3600))

    return (weeks % 52) + 1

end

-- Get Category Name
function Elisa.GetCategoryName(week)

    local info = weekData[week]

    if not info then
        return nil
    end

    return "legs.vendors.elisa." .. info.map .. "." .. week

end

-- Cache Categories
local categories = {}

for week = 1, #weekData do

    local categoryName = Elisa.GetCategoryName(week)

    if categoryName then
        categories[week] = World:CategoryByType(categoryName)
    end

end

-- Hide All Routes
function Elisa.HideAll()

    for week = 1, #categories do
        local category = categories[week]

        if category then
            category:Hide()
        end
    end

end

-- Show Current Route
function Elisa.ShowCurrent()

    local week = Elisa.GetWeek()
    local category = categories[week]

    if not category then
        Debug:Print("Elisa category missing: " .. Elisa.GetCategoryName(week))
        return
    end

    category:Show()

    Debug:Print(
        "Elisa active week "
        .. week
        .. ": "
        .. Elisa.GetCategoryName(week)
    )

end

-- Copy Current Waypoint
function Elisa.Copy()

    Elisa.HideAll()
    Elisa.ShowCurrent()

    local info = weekData[Elisa.GetWeek()]

    if info and info.waypoint then
        User.SetClipboard(
            info.waypoint,
            "Priory Historian Elisa location copied to clipboard"
        )
    end

end