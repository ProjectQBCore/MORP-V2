Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.EnablePlayerManagement     = true -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
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
		Pos   = vector3(132.15, -145.19, 59.50),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 20
	},

	ShopInside = {
		Pos     = vector3(142.89, -145.25, 53.50),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 339.55,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(133.37, -143.53, 59.50),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 330.0,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(123.22, -156.38, 59.50),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(157.22, -125.42, 53.50),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(122.87, -126.43, 53.50),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
