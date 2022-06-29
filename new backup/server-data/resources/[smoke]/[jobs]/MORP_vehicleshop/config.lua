Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.EnablePlayerManagement     = true -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = true -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-1175.97, -1706.29, 4.46), --employee blip d
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 36
	},

	ShopInside = {
		Pos     = vector3(-1198.41, -1721.52, 4.46), --veh spawn d
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 219.23,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(-1198.41, -1721.52, 4.46), --veh spawn without job d
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 219.23,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-1180.19, -1699.98, 4.46), --boss actions d
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 36
	},

	GiveBackVehicle = {
		Pos   = vector3(-1197.84, -1756.25, 4.46), --rent return d
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Type  = 3
	},

	ResellVehicle = {
		Pos   = vector3(-1213.51, -1732.67, 4.46), --sell veh d
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Type  = 29
	}

}
