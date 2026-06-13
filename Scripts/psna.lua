MMM.psna = {
    currentUTCTime = nil,
    utcMinusEight = nil,
    psnaDay = nil,
    copy = nil
}

Debug:Watch("MMM_PSNA", MMM.psna)

local COPY_INFO = {
    { "Monday", "[&BIgHAAA=][&BEwDAAA=][&BNIEAAA=][&BKYBAAA=][&BIMCAAA=][&BB4CAAA=]" },
    { "Tuesday", "[&BH8HAAA=][&BEgAAAA=][&BBEAAAA=][&BKgCAAA=][&BGQCAAA=][&BIMBAAA=]" },
    { "Wednesday", "[&BHoHAAA=][&BCEDAAA=][&BLQDAAA=][&BKYAAAA=][&BLQAAAA=][&BFEDAAA=]" },
    { "Thursday", "[&BH8HAAA=][&BF0AAAA=][&BEUDAAA=][&BO4CAAA=][&BJcBAAA=][&BOQBAAA=]" },
    { "Friday", "[&BJcHAAA=][&BNUGAAA=][&BKYCAAA=][&BMwCAAA=][&BHsBAAA=][&BNMAAAA=]" },
    { "Saturday", "[&BH8HAAA=][&BB8DAAA=][&BNMCAAA=][&BFMCAAA=][&BJIBAAA=][&BF8BAAA=]" },
    { "Sunday", "[&BIYHAAA=][&BDoBAAA=][&BO4CAAA=][&BKcBAAA=][&BIUCAAA=][&BCECAAA=]" }
}

-- Copies the current day's PSNA to the user's clipboard
function MMM_CopyPSNA()
    MMM.psna.currentUTCTime = os.time(os.date("!*t"))
    MMM.psna.utcMinusEight = MMM.psna.currentUTCTime - (8 * 60 * 60)
    MMM.psna.psnaDay = os.date("%A", MMM.psna.utcMinusEight)

    for _, day in ipairs(COPY_INFO) do
        if day[1] == MMM.psna.psnaDay then
            MMM.psna.copy = day[2]
            User.SetClipboard(MMM.psna.copy, "Today's PSNA Waypoints copied to clipboard!")
            break
        end
    end
end