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
Config.Locale = 'en'

Config.VagosStations = {

  Mafia = {

    Blip = {
     --Pos     = { x = 334.0, y = -2025.84, z = 21.61 },
      Sprite  = 378,
      Display = 378,
      Scale   = 0.8,
      Colour  = 46,
    },

    AuthorizedWeapons = {
{ name = 'WEAPON_switchblade',       price = 1000},
{ name = 'WEAPON_pistol',     price = 3000 },
{ name = 'WEAPON_minismg',     price = 6000},
{ name = 'WEAPON_assaultrifle ',     price = 10000}	  
    },

	  AuthorizedVehicles = {
      { name = 'elegy',  label = 'elegy' },
      { name = 'akuma',  label = 'Akuma' },
	  },

    Cloakrooms = {
      { x = 0, y = 0, z = 0 },
    },


    Armories = {
       { x = 0.03, y = -0.45, z = 0.39 },
    },

    Vehicles = {
      {
        Spawner    = { x = 332.28, y = -2038.26, z = 21.07 },
        SpawnPoint = { x = 328.71, y = -2034.44, z = 21.71 },
        Heading    = 50.48,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 0.0, y = 0.0, z = 0.0 },
        SpawnPoint = { x = 3.40, y = 525.56, z = 177.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 323.77, y = -2036.36, z = 20.66 },
      { x = -0.85, y = 0.59, z = 0.54 },
    },
    
    BossActions = {
       { x = 343.29, y = -2027.68, z = 22.35 }
    },

  },

}
