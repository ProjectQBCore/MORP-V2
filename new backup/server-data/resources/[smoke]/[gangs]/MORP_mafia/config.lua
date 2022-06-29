Config                            = {}
Config.DrawDistance               = 50.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 0, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'en'

Config.GangStations = {

  Gang = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_STUNGUN',       price = 500 },
    --  { name = 'WEAPON_COMBATPISTOL',     price = 30000 },
     -- { name = 'WEAPON_ASSAULTSMG',       price = 1125000 },
     -- { name = 'WEAPON_ASSAULTRIFLE',     price = 1500000 },
      --{ name = 'WEAPON_PUMPSHOTGUN',      price = 600000 },
     -- { name = 'WEAPON_STUNGUN',          price = 50000 },
     -- { name = 'WEAPON_FLASHLIGHT',       price = 800 },
     -- { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
     -- { name = 'WEAPON_FLAREGUN',         price = 6000 },
      --{ name = 'GADGET_PARACHUTE',        price = 3000 },
	  { name = 'WEAPON_BAT'		,        price = 3000 },
     -- { name = 'WEAPON_STICKYBOMB',       price = 200000 },
   --   { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
     -- { name = 'WEAPON_FIREWORK',         price = 30000 },
     -- { name = 'WEAPON_GRENADE',          price = 180000 },
     -- { name = 'WEAPON_BZGAS',            price = 120000 },
    --  { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
      --{ name = 'WEAPON_APPISTOL',         price = 70000 },
     -- { name = 'WEAPON_CARBINERIFLE',     price = 1100000 },
   --   { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    },

	  AuthorizedVehicles = {
      { name = 'caracara2',  label = 'Gang Car' },
      { name = 'diablous2',  label = 'Gang Bike' },
	  },

    Cloakrooms = {
      { x = 0, y = 0, z = 0},
    },

    Armories = {
       { x = -1880.19, y = 2063.47, z = 135.92},
    },

    Vehicles = {
      {
        Spawner    = { x = -1897.89, y = 2060.29, z = 140.91 },
        SpawnPoint = { x = -1919.26, y = 2052.53, z = 140.73 },
        Heading    = 265.28,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 0.30500793457, y = -0.3337402344, z = 0.0060696601868 },
        SpawnPoint = { x = 0.94457244873, y = -0.5942382813, z = 0.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -1888.15, y = 2044.4, z = 140.87},
      
    },

    BossActions = {
      { x = -1876.2, y = 2062.38, z = 145.57 },
    },

  },

}
