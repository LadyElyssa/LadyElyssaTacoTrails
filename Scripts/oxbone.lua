-- Seimur Oxbone Daily Rotation
local Oxbone = LadyElyssa.Oxbone

Oxbone.state = {
    currentUTCTime = nil,
    utcMinusEight = nil,
    oxboneDay = nil,
    copy = nil
}

Debug:Watch("LadyElyssa_Oxbone", Oxbone.state)

local COPY_INFO = {
    Monday    = "[&BAgFAAA=] in Hoelbrak",
    Tuesday   = "[&BKUDAAA=] in Black Citadel",
    Wednesday = "[&BLwEAAA=] in The Grove",
    Thursday  = "[&BCoDAAA=] in Divinity's Reach",
    Friday    = "[&BLQEAAA=] in Rata Sum",
    Saturday  = "[&BC8EAAA=] in Lion's Arch",
    Sunday    = "[&BF8BAAA=] in Diessa Plateau"
}

-- Copies the current day's Seimur Oxbone waypoint to the clipboard
function Oxbone.Copy()

    Oxbone.state.currentUTCTime = os.time(os.date("!*t"))
    Oxbone.state.utcMinusEight = Oxbone.state.currentUTCTime - (8 * 3600)
    Oxbone.state.oxboneDay = os.date("%A", Oxbone.state.utcMinusEight)

    local copy = COPY_INFO[Oxbone.state.oxboneDay]

    if copy then
        User.SetClipboard(copy, "Seimur Oxbone's location copied to clipboard")
    end

end