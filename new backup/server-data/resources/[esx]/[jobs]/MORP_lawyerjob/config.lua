Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'


	
	

Config.lawyerStations = {


  Mafia = {

    Blip = {
    },
	
	Vehicles = {
			vector3(229.57, -373.92, 44.31)
		},
		

    AuthorizedWeapons = {
    },

	  AuthorizedVehicles = {
      { name = 'cog552',  label = 'cog552' },
      { name = 'Baller6',  label = 'Baller6' },
	  },

    Cloakrooms = {
      { x = 0, y = 0, z = 0 },
    },


    Armories = {
       { x = 241.48, y = -416.95, z = 47.95 },
    },

	
	Helicopters = {
      {
        Spawner    = { x = 0.0, y = 0.0, z = 0.0 },
        SpawnPoint = { x = 3.40, y = 525.56, z = 177.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 324.01, y = -2024.25, z = 20.93 },
      { x = -803.85, y = 163.59, z = 70.54 },
    },
    
    BossActions = {
       { x = 223.93, y = -438.79, z = 47.96 }
    },

  },

}

Config.Vehicles = {
  { name = 'cog552', label = "cog552", grade = 0},
  { name = 'Baller6', label = "Baller6", grade = 0},

}
