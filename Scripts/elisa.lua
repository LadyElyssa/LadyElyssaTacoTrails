-- Lady Elyssa's Priory Historian Elisa Weekly Rotation
-- GW2Pathing Lua Script

local Elisa = {}

-------------------------------------------------
-- Settings
-------------------------------------------------

-- Correct Elisa rotation anchor as determined from 
-- https://wiki.guildwars2.com/wiki/Talk:Priory_Historian_Elisa#Week_53
--
-- Week 1 = Desert Highlands
-- Friday 26 December 2025 08:00 UTC
-------------------------------------------------

local anchor = os.time({
    year = 2025,
    month = 12,
    day = 26,
    hour = 8,
    min = 0,
    sec = 0
})


-------------------------------------------------
-- 52 week Elisa rotation
-------------------------------------------------

local rotation = {

    [1]="dh",
    [2]="dov",
    [3]="co",
    [4]="er",
    [5]="td",

    [6]="dh",
    [7]="dov",
    [8]="co",
    [9]="er",
    [10]="td",

    [11]="dh",
    [12]="dov",
    [13]="co",
    [14]="er",
    [15]="td",

    [16]="dh",
    [17]="dov",
    [18]="co",
    [19]="er",
    [20]="td",

    [21]="dh",
    [22]="dov",
    [23]="co",
    [24]="er",
    [25]="td",

    [26]="dh",
    [27]="dov",
    [28]="co",
    [29]="er",
    [30]="td",

    [31]="dh",
    [32]="dov",
    [33]="co",
    [34]="er",
    [35]="td",

    [36]="dh",
    [37]="dov",
    [38]="co",
    [39]="er",
    [40]="td",

    [41]="dh",
    [42]="dov",
    [43]="co",
    [44]="er",
    [45]="td",

    [46]="dh",
    [47]="dov",
    [48]="co",
    [49]="er",
    [50]="td",

    [51]="dh",
    [52]="td"
}


-- Get Week
function Elisa.GetWeek()

    local now = os.time()

    local elapsed =
        now - anchor


    local weeks =
        math.floor(
            elapsed /
            (7 * 24 * 3600)
        )


    return (weeks % 52) + 1

end

-- Get XML Category Name
function Elisa.GetCategoryName(week)

    local map =
        rotation[week]

    if map == nil then
        return nil
    end

    return
        "legs.vendors.elisa."
        ..
        map
        ..
        "."
        ..
        week
end


-- Hide all Elisa routes
function Elisa.HideAll()

    for week = 1,52 do
        local categoryName =
            Elisa.GetCategoryName(week)
        if categoryName ~= nil then
            local category =
                World:CategoryByType(categoryName)
            if category ~= nil then
                category:Hide()
            end
        end
    end
end


-- Show only current Elisa route
function Elisa.ShowCurrent()
    local week =
        Elisa.GetWeek()

    local categoryName =
        Elisa.GetCategoryName(week)

    if categoryName == nil then
        return
    end

    local category =
        World:CategoryByType(categoryName)

    if category ~= nil then
        category:Show()
        Debug:Print(
            "Elisa active week "
            ..
            week
            ..
            " : "
            ..
            categoryName
        )
    else
        Debug:Print(
            "Elisa category missing: "
            ..
            categoryName
        )
    end
end


-- Refresh Menu
function Elisa.Refresh()
    Elisa.HideAll()
    Elisa.ShowCurrent()
end

-- Initial execution
Elisa.Refresh()