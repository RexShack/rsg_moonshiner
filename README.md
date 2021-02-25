# Made by RexshackGaming
- discord : https://discord.gg/AmdXaFvC5v
- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
- github : https://github.com/RexShack
- please feel free to change this script to work for your own needs

# Required resources
- redem_roleplay : https://github.com/RedEM-RP/redem_roleplay/
- redemrp_inventory v2.0 : https://github.com/RedEM-RP/redemrp_inventory
- redemrp_notification : https://github.com/Ktos93/redemrp_notification
- redm_moonshine_interiors : https://github.com/CryptoGenics/redm_moonshine_interiors

# rsg_moonshiner
Rexsahack Gaming : Just makes moonshine!
1. Buy or Aquire Water, Corn & Sugar
2. Travel to the moonshine shack (locations on the map)
3. Head to the still near the fire and make your moonshine (added to your inventory)

# Installation
1. Put rsg_moonshiner to your resource folder.
2. Add "rsg_moonshiner" in your "server.cfg".
3. In redemrp_inventory/config.lua under Config.Items ensure the items are added :

```lua
Config.Items = {

["sugar"] =
    {
        label = "Sugar",
        description = "?????????",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 150,
        imgsrc = "items/consumable_sugarcube.png",
        type = "item_standard",

    },

["corn"] =
    {
        label = "Corn",
        description = "?????????",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 150,
        imgsrc = "items/consumable_corn.png",
        type = "item_standard",

    },
	
["water"] =
    {
        label = "Water",
        description = "?????????",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 150,
        imgsrc = "items/generic_bottle.png",
        type = "item_standard",

    },
	
["moonshine"] =
    {
        label = "Moonshine",
        description = "ah the good stuff",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 10,
        imgsrc = "items/consumable_moonshine.png",
        type = "item_standard",

    }

}
```

4. restart your server and enjoy

# Preview
[![Watch the video](https://img.youtube.com/vi/ZOtrG551qXY/maxresdefault.jpg)](https://youtu.be/ZOtrG551qXY)
