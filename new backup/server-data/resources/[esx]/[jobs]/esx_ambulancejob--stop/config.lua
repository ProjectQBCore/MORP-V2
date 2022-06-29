Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 21, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 0, a = 255, rotate = false }

Config.ReviveReward               = 15  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?

Config.Locale = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 30 * second  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RespawnPoint = { coords = vector3(361.14, -591.54, 43.32), heading = 64.54 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(298.77, -584.5, 43.26),
			sprite = 61,
			scale  = 0.7,
			color  = 2
		},

		Clothing = {
			vector3(299.11, -598.35, 43.28)
		},

		Pharmacies = {
			vector3(306.7, -601.87, 43.28)
		},

		Vehicles = {
			vector3(294.56231689453, -608.5126953125, 43.336311340332)
		},

		Helicopters = {
			{
				Spawner = vector3(360.26, -583.24, 74.17),
				InsideShop = vector3(350.93338012695, -587.94268798828, 74.164474487305),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(350.88, -587.79, 74.55), heading = 90, radius = 10.0 }
				}
			}
		},

		FastTravels = {

			{ -- Hospital to roof
				From = vector3(332.37585449219, -595.80358886719, 43.283981323242),
				To = { coords = vector3(343.08, -584.68, 74.17), heading = 252.46 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{ -- Roof to hospital
				From = vector3(338.50521850586, -583.93109130859, 74.164398193359),
				To = { coords = vector3(330.41, -601.13, 43.29), heading = 69.68 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

		},


	}
}

Config.Vehicles = {
	{ name = 'ambulance22', label = "Ambulance", grade = 0},
	{ name = 'madabike', label = "EMS Bike", grade = 0},
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance22', label = 'Ambulance', price = 1}
	},

	doctor = {
		{ model = 'ambulance22', label = 'Ambulance', price = 1},
	},

	par = {
		{ model = 'ambulance22', label = 'Ambulance', price = 1},
	},

	boss = {
		{ model = 'ambulance22', label = 'Ambulance', price = 1},

	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {},

	chief_doctor = {},

	boss = {
	    { model = 'supervolito2', label = 'Ambulance Maverick', livery = 1, price = 500 }
	}

}

Config.Components = {
	['arms'] = { type = "component", component = 3 },
	['face'] = { type = "component", component = 0 },
	['mask'] = { type = "component", component = 1 },
	['torso'] = { type = "component", component = 3 },
	['pants'] = { type = "component", component = 4 },
	['bag'] = { type = "component", component = 5 },
	['shoes'] = { type = "component", component = 6 },
	['accessory'] = { type = "component", component = 7 },
	['shirt'] = { type = "component", component = 8 },
	['vest'] = { type = "component", component = 9 },
	['torso'] = { type = "component", component = 11 },
	['hat'] = { type = "prop", component = 0 },
	['glass'] = { type = "prop", component = 1 },
	['ear'] = { type = "prop", component = 2 },
	['watch'] = { type = "prop", component = 6 },
	['bracelet'] = { type = "prop", component = 7 },
 }
 
 Config.Outfits = {
    ['mp_m_freemode_01'] = { -- male
       {
          ['label'] = "פרמדיק",
          ['data'] = {
             ['shirt'] = { index = 15, texture = 0 },
             ['torso'] = { index = 183, texture = 0 },
             ['arms'] = { index = 87, texture = 0 },
             ['pants'] = { index = 52, texture = 1 },
             ['shoes'] = { index = 27, texture = 0 },
             ['hat'] = { index = -1, texture = 0 },
             ['ear'] = { index = 2, texture = 0 },
             ['mask'] = { index = -1, texture = 0 },
             ['vest'] = { index = 0, texture = 0 },

          }
        },
    }, 
	['mp_f_freemode_01'] = { -- female
		{
			['label'] = "פרמדיק",
			['data'] = {
			['shirt'] = { index = 15, texture = 0 },
			['torso'] = { index = 183, texture = 0 },
			['arms'] = { index = 87, texture = 0 },
			['pants'] = { index = 52, texture = 1 },
			['shoes'] = { index = 27, texture = 0 },
			['hat'] = { index = -1, texture = 0 },
			['ear'] = { index = 2, texture = 0 },
			['mask'] = { index = -1, texture = 0 },
			['vest'] = { index = 0, texture = 0 },

			}
		},
    }
}