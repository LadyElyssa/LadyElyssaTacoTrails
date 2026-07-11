local Legs = {}

Legs.oxbone = {
    currentUTCTime = nil,
    utcMinusEight = nil,
    oxboneDay = nil,
    copy = nil
}

Debug:Watch("Legs_oxbone", Legs.oxbone)

local COPY_INFO = {
    Monday = "[&BAgFAAA=] in Hoelbrak",
    Tuesday = "[&BKUDAAA=] in Black Citadel",
    Wednesday = "[&BLwEAAA=] in The Grove",
    Thursday = "[&BCoDAAA=] in Divinity's Reach",
    Friday = "[&BLQEAAA=] in Rata Sum",
    Saturday = "[&BC8EAAA=] in Lion's Arch",
    Sunday = "[&BF8BAAA=] in Diessa Plateau"
}

-- Copies the current day's oxbone to the user's clipboard
function Legs_CopyOxbone()
    Legs.oxbone.currentUTCTime = os.time(os.date("!*t"))
    Legs.oxbone.utcMinusEight = Legs.oxbone.currentUTCTime - (8 * 3600)
    Legs.oxbone.oxboneDay = os.date("%A", Legs.oxbone.utcMinusEight)

    local copy = COPY_INFO[Legs.oxbone.oxboneDay]

    if copy then
        User.SetClipboard(copy,"Seimur Oxbone's location copied to clipboard")
    end
end