local PSNA = LadyElyssa.PSNA

PSNA.state = {
    currentUTCTime = nil,
    utcMinusEight = nil,
    psnaDay = nil,
    copy = nil
}

Debug:Watch("LadyElyssa_PSNA", PSNA.state)

local COPY_INFO = {
    Monday    = "[&BIgHAAA=][&BEwDAAA=][&BNIEAAA=][&BKYBAAA=][&BIMCAAA=][&BB4CAAA=]",
    Tuesday   = "[&BH8HAAA=][&BEgAAAA=][&BBEAAAA=][&BKgCAAA=][&BGQCAAA=][&BIMBAAA=]",
    Wednesday = "[&BHoHAAA=][&BCEDAAA=][&BLQDAAA=][&BKYAAAA=][&BLQAAAA=][&BFEDAAA=]",
    Thursday  = "[&BH8HAAA=][&BF0AAAA=][&BEUDAAA=][&BO4CAAA=][&BJcBAAA=][&BOQBAAA=]",
    Friday    = "[&BJcHAAA=][&BNUGAAA=][&BKYCAAA=][&BMwCAAA=][&BHsBAAA=][&BNMAAAA=]",
    Saturday  = "[&BH8HAAA=][&BB8DAAA=][&BNMCAAA=][&BFMCAAA=][&BJIBAAA=][&BF8BAAA=]",
    Sunday    = "[&BIYHAAA=][&BDoBAAA=][&BO4CAAA=][&BKcBAAA=][&BIUCAAA=][&BCECAAA=]"
}

-- Copies the current day's PSNA waypoints to the clipboard
function PSNA.Copy()

    PSNA.state.currentUTCTime = os.time(os.date("!*t"))
    PSNA.state.utcMinusEight = PSNA.state.currentUTCTime - (8 * 3600)
    PSNA.state.psnaDay = os.date("%A", PSNA.state.utcMinusEight)

    local copy = COPY_INFO[PSNA.state.psnaDay]

    if copy then
        User.SetClipboard(copy, "Today's PSNA Waypoints copied to clipboard!")
    end

end