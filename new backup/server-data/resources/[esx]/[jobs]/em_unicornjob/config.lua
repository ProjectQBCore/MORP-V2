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

Config.unicornStations = {

  Mafia = {

    Blip = {
     --Pos     = { x = 334.0, y = -2025.84, z = 21.61 },
      Sprite  = 378,
      Display = 378,
      Scale   = 0.8,
      Colour  = 81,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_switchblade',       price = 1000},
      { name = 'WEAPON_pistol',     price = 3000 },
      { name = 'WEAPON_minismg',     price = 6000},
      { name = 'WEAPON_assaultrifle ',     price = 10000}	  
    },

	  AuthorizedVehicles = {
    { name = 'dubsta2',  label = 'dubsta2' },
    { name = 'Stretch',  label = 'Stretch' },
	  },

    Cloakrooms = {
      { x = 0, y = 0, z = 0 },
    },


    Armories = {
       { x = 108.74, y = -1304.38, z = 29.77 },
    },

    Vehicles = {
      {
        Spawner    = { x = 135.83, y = -1279.01, z = 29.37 },
        SpawnPoint = { x = 142.34, y = -1282.74, z = 29.33 },
        Heading    = 304.75,
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
      { x = 144.93, y = -1288.12, z = 29.34 },
    },
    
    BossActions = {
       { x = 95.31, y = -1293.31, z = 29.29 }
    },

  },

}





Config.TeleportZones = {
  EnterBuilding = {
    Pos       = { x = 132.608, y = -1293.978, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = 126.742, y = -1278.386, z = 28.569 }
  },

  ExitBuilding = {
    Pos       = { x = 132.517, y = -1290.901, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_1'),
    Teleport  = { x = 131.175, y = -1295.598, z = 28.569 },
  },

--[[
  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },
  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}
