<!--==================================================================================-->
<!--==                     Marker Attributes                                        ==-->
<!--==================================================================================-->

MapID - integer, required. Describes which map the marker is located on.
      xpos - float, required. X position of the marker in world space.
      ypos - float, required. Y position of the marker in world space.
      zpos - float, required. Z position of the marker in world space.
      type - string, optional. This is the full name of the category the marker belongs to. If this is not set, the marker will be presented with default parameters. Must not contain any spaces or special characters.

   GUID - base64 encoded string, optional. This is a unique identifier for the marker used in tracking activation of markers through the activationdata.xml file. If this doesn't exist for a marker, one will be generated automatically and added on the next export.

   
   The following tags are all optional, and can be both set for each category (description below) and each marker individually. Ideally these should be set in the categories and only overridden for a handful of icons if at all, but the option is there.
      iconFile - string. The icon to be displayed for the marker. If not given, this defaults to the image shown at the start of this article. This should point to a .png file. The overlay looks for the image files both starting from the root directory and the POIs directory for convenience. Make sure you don't use too high resolution (above 128x128) images because the texture atlas used for these is limited in size and it's a needless waste of resources to fill it quickly.

      iconSize - float. The size of the icon in the game world. Default is 1.0 if this is not defined. Note that the "screen edges herd icons" option will limit the size of the displayed images for technical reasons.

      mapDisplaySize - float - The size of the icon on the Map and Minimap in pixels.

      alpha - float. How opaque the displayed icon should be. The default is 1.0

      behavior - integer. This is an important one, it describes the way the marker will behave when a player presses 'F' over it. The following values are valid for this parameter:
         0: the default value. Marker is always visible.
         1: 'Reappear on map change' - this is not implemented yet, it will be useful for markers that need to reappear if the player changes the map instance.
         2: 'Reappear on daily reset' - these markers disappear if the player presses 'F' over them, and reappear at the daily reset. These were used for the orphan markers during wintersday.
         3: 'Only visible before activation' - these markers disappear forever once the player pressed 'F' over them. Useful for collection style markers like golden lost badges, etc.
         4: 'Reappear after timer' - This behavior makes the marker reappear after a fix amount of time given in 'resetLength'.
         5: 'Reappear on map reset' - not implemented yet. This will make the marker reappear when the map cycles. In this case 'resetLength' will define the map cycle length in seconds, and 'resetOffset' will define when the first map cycle of the day begins after the daily reset, in seconds.
         6: 'Once per instance' - these markers disappear when triggered but reappear if you go into another instance of the map
         7: 'Once daily per character' - these markers disappear when triggered, but reappear with the daily reset, and can be triggered separately for every character

   fadeNear - float. Determines how far the marker will start to fade out. If below 0, the marker won't disappear at any distance. Default is -1. This value is in game units (inches).
   
   fadeFar - float. Determines how far the marker will completely disappear. If below 0, the marker won't disappear at any distance. Default is -1. FadeFar needs to be higher than fadeNear for sane results. This value is in game units (inches).

   heightOffset - float. Specifies how high above the ground the marker is displayed. Default value is 1.5

   resetLength - integer. For behavior 4 this tells how long the marker should be invisible after pressing 'F'. For behavior 5 this will tell how long a map cycle is.

   resetOffset - integer. Not currently used, this will supply data for behavior 5. The data will be given in seconds.

   DisplayName - string. This text is used to display the type of the marker. It can contain spaces.

   color - hex value. The color tint of the marker

   autoTrigger - boolean. Determines if going near the marker triggers it

   hasCountdown - boolean. Determines if a marker has a countdown timer display when triggered

   triggerRange - float. Determines the range from where the marker is triggered

   minSize - integer. Determines the minimum size of a marker on the screen, in pixels.
   
   maxSize - integer. Determines the maximum size of a marker on the screen, in pixels.

   achievementId - integer. An ID for an achievement from the GW2 API. Markers with the corresponding achievement ID will be hidden if the ID is marked as "done" for the API key that's entered in TacO. For a list of achievement IDs see https://wiki.guildwars2.com/wiki/API:2/achievements

   achievementBit - integer. This is similar to achievementId, but works for partially completed achievements as well, if the achievement has "bits", they can be individually referenced with this.

   info - string. This can be a multiline string, it will show up on screen as a text when the player is inside of infoRange of the marker

   infoRange - float. This determines how far away from the marker the info string will be visible

  defaulttoggle - boolean. If set, the category will be enabled/disabled by default when loading the marker pack (0 = disabled)

   festival - string. A comma separated list of strings (without spaces) from the following pool that makes the markers in this category only show up during the associated festival: halloween, wintersday, superadventurefestival, lunarnewyear, festivalofthefourwinds, dragonbash

   copy - string. This string will be copied to the clipboard when the marker is triggered. Usually used with autotrigger enabled.

   copy-message - string. This string will be displayed in the middle of the screen when the clipboard copy is triggered. Useful to let the user know that the clipboard has been updated.

 inGameVisibility - boolean

 mapVisibility - boolean

 miniMapVisibility - boolean

 mapDisplaySize - size in pixels