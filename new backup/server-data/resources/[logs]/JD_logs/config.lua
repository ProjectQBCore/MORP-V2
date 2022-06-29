Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "MORP Logger V2" 							-- Bot Username
Config.avatar = "https://cdn.discordapp.com/attachments/713049735824670893/836966635713200138/logo.png"				-- Bot Avatar
Config.communtiyName = "MORP V2"					-- Icon top of the embed
Config.communtiyLogo = "https://cdn.discordapp.com/attachments/713049735824670893/836966635713200138/logo.png"		-- Icon top of the embed
Config.FooterText = "2021 © MORP"						-- Footer text for the embed
Config.FooterIcon = "https://cdn.discordapp.com/attachments/713049735824670893/836966635713200138/logo.png"			-- Footer icon for the embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.InlineFields = true			-- set to false if you don't want the player details next to each other

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs
Config.license = true				-- set to false to disable license in the logs
Config.IP = true					-- set to false to disable IP in the logs

-- Change color of the default embeds here
-- It used Decimal or Hex color codes. They will both work.
Config.BaseColors ={		-- For more info have a look at the docs: https://docs.preffech.com
	chat = "#A1A1A1",				-- Chat Message
	joins = "#3AF241",				-- Player Connecting
	leaving = "#F23A3A",			-- Player Disconnected
	deaths = "#000000",				-- Shooting a weapon
	shooting = "#2E66F2",			-- Player Died
	resources = "#EBEE3F",			-- Resource Stopped/Started	
}


Config.webhooks = {		-- For more info have a look at the docs: https://docs.preffech.com
	all = "https://discord.com/api/webhooks/837701735484620801/xTF5q2yCgDx1GQZ_gMZNQJSKaND0SllXVDNAnbJpywtG1PajyhJS9Jr9b1TnwDejOeGp",		-- All logs will be send to this channel
	chat = "https://discord.com/api/webhooks/837701980297363498/RgbOuEy02tYA2nUoHt3PG5l5vXuZsVyTLVaosnLDLIXzHPjneuE0XmUI1ZmZ9LNS9MNN",		-- Chat Message
	joins = "https://discord.com/api/webhooks/837702224716496957/WnMc5Ws589-Aju84lKeWJrVbatF2vT4nYphVtcwmGGJQ5JQhE-t44i25V3kJvDCbiGeJ",		-- Player Connecting
	leaving = "https://discord.com/api/webhooks/837702277081858089/Y7zx0d7ne2PEXrXCHTkIBSW-RVKCfJHOa2W_QvfrYx8_0uOTbo1nyM0kPXAbSJgV_PfY",	-- Player Disconnected
	deaths = "https://discord.com/api/webhooks/837702326293889156/u-aYrJPfM_nNWTAW2oTpq6u0bXVHkR3Z-M-20galNF64uek8WMz2WYWGzeyfX2HLlqK4",		-- Shooting a weapon
	shooting = "https://discord.com/api/webhooks/837702382657077358/wVW6PiI8e9dmvHx2M1yYeEuHIBDY8OMOe2CiJzU1DDSRE7UVQevr3rF9BWWK_R0ool8Z",	-- Player Died
	resources = "https://discord.com/api/webhooks/837702430828265524/6F300cYKvb9iePh6vPIw_Vbum40Emw-m68u6YBGDtP-pOXlDY2qgBdpjMhJz7EciKxsP",	-- Resource Stopped/Started	
}

Config.TitleIcon = {		-- For more info have a look at the docs: https://docs.preffech.com
	chat = "💬",				-- Chat Message
	joins = "📥",				-- Player Connecting
	leaving = "📤",			-- Player Disconnected
	deaths = "💀",				-- Shooting a weapon
	shooting = "🔫",			-- Player Died
	resources = "🔧",			-- Resource Stopped/Started	
}


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.2.0"
