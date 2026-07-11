local Legs = {}

Legs.psna = {
    currentUTCTime = nil,
    utcMinusEight = nil,
    psnaDay = nil,
    copy = nil
}

Debug:Watch("Legs_PSNA", Legs.psna)

local COPY_INFO = {
    Monday = "[&BIgHAAA=][&BEwDAAA=][&BNIEAAA=][&BKYBAAA=][&BIMCAAA=][&BB4CAAA=]",
    Tuesday = "[&BH8HAAA=][&BEgAAAA=][&BBEAAAA=][&BKgCAAA=][&BGQCAAA=][&BIMBAAA=]",
    Wednesday = "[&BHoHAAA=][&BCEDAAA=][&BLQDAAA=][&BKYAAAA=][&BLQAAAA=][&BFEDAAA=]",
    Thursday = "[&BH8HAAA=][&BF0AAAA=][&BEUDAAA=][&BO4CAAA=][&BJcBAAA=][&BOQBAAA=]",
    Friday = "[&BJcHAAA=][&BNUGAAA=][&BKYCAAA=][&BMwCAAA=][&BHsBAAA=][&BNMAAAA=]",
    Saturday = "[&BH8HAAA=][&BB8DAAA=][&BNMCAAA=][&BFMCAAA=][&BJIBAAA=][&BF8BAAA=]",
    Sunday = "[&BIYHAAA=][&BDoBAAA=][&BO4CAAA=][&BKcBAAA=][&BIUCAAA=][&BCECAAA=]"
}

-- Copies the current day's PSNA to the user's clipboard
function Legs_CopyPSNA()
    Legs.psna.currentUTCTime = os.time(os.date("!*t"))
    Legs.psna.utcMinusEight = Legs.psna.currentUTCTime - (8 * 3600)
    Legs.psna.psnaDay = os.date("%A", Legs.psna.utcMinusEight)

    local copy = COPY_INFO[Legs.psna.psnaDay]

    if copy then
        User.SetClipboard(copy,"Today's PSNA Waypoints copied to clipboard!")
    end
end