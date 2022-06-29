Config                  	        = {}

Config.DrawDistance 	            = 100.0

Config.Marker	                    = { type = 21, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 0, a = 255, rotate = false }

Config.ReviveReward               	= 2500  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              	= true -- enable anti-combat logging?
Config.Helicopter 					= "emsair"


Config.Locale = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 60 * second  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RespawnPoint = { coords = vector3(361.14, -591.54, 43.32), heading = 64.54 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(298.77, -584.5, 43.26),
			sprite = 61,
			scale  = 0.7,
			color  = 1
		},

		Pharmacies = {
			vector3(306.7, -601.87, 43.28)
		},

		Clothing = {
			vector3(0.11, -0.35, 0.28)
		},

		personal = {
			vector3(310.15, -602.86, 43.28)
		},

		helicopter = {
			[1] = {x = 351.03, y = -587.51, z = 74.16, h = 174.36},
		}, 

		Vehicles = {
			vector3(294.56231689453, -608.5126953125, 43.18)
		},
		
		callmed = {
			vector3(306.94, -595.16, 43.28)
		},

		Menu = {
			vector3(338.53, -595.19, 43.28)
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
	{ name = 'ambulance', label = "Ambulance", grade = 0},
	{ name = 'madabike', label = "Bike", grade = 0},
	{ name = 'emsf', label = "Ambulance emsf", grade = 0},
    { name = 'polgt17', label = "Ford GT", grade = 0},
	{ name = 'emsc', label = "Ambulance emsc", grade = 0},
	--{ name = 'emsair', label = "Ambulance emsair", grade = 0},
	
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
          ['label'] = "Paramedic",
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
			['label'] = "Paramedic",
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