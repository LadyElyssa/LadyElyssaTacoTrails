-- Construct Menu --
local MMM_MainMenu = Menu:Add("MMM - Copy Fishing Bait WPs ", nil, false, false, "Copies the selected bait's WPs")

-- Submenu Options --
MMM_MainMenu:Add("Fish Egg", function (Copy) User.SetClipboard("[&BC8EAAA=][&BOcBAAA=][&BEMLAAA=]", "Fish Egg WPs copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Freshwater Minnow", function (Copy) User.SetClipboard("[&BMcMAAA=][&BGMNAAA=][&BC8EAAA=][&BOcBAAA=]", "Freshwater Minnow WPs copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Glow Worm", function (Copy) User.SetClipboard("[&BMcMAAA=][&BGMNAAA=]", "Glow Worm WPs copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Lava Beetle", function (Copy) User.SetClipboard("[&BHgJAAA=]", "Lava Beetle WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Leech", function (Copy) User.SetClipboard("[&BO8JAAA=]", "Leech WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Lightning Bug", function (Copy) User.SetClipboard("[&BOcBAAA=]", "Lightning Bug WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Nightcrawler", function (Copy) User.SetClipboard("[&BKIMAAA=]", "Nightcrawler WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Ramshorn Snail", function (Copy) User.SetClipboard("[&BIACAAA=]", "Ramshorn Snail WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Sardine", function (Copy) User.SetClipboard("[&BJ4MAAA=][&BMYMAAA=][&BAcFAAA=][&BO8JAAA=]", "Sardine WPs copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Scorpion", function (Copy) User.SetClipboard("[&BLsKAAA=]", "Scorpion WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Shrimpling", function (Copy) User.SetClipboard("[&BJ4MAAA=][&BMYMAAA=][&BKIMAAA=][&BC8EAAA=][&BIACAAA=]", "Shrimpling WPs copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
MMM_MainMenu:Add("Sparkfly Larva", function (Copy) User.SetClipboard("[&BAcFAAA=]", "Sparkfly Larva WP copied to clipboard.") end, false, false, "Copies the relevant WPs to your clipboard.")
