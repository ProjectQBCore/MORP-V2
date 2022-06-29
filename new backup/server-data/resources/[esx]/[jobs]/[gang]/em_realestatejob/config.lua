Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'en'

Config.realestateStations = {

  realestate = {

    Blip = {

    },

    AuthorizedWeapons = {
     { name = 'WEAPON_STUNGUN',       price = 500 },
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
      { name = 'jpbuggy',  label = 'Blue Buggy' },
      { name = 'jpbuggy',  label = 'Blue Buggy' },
	  },

    Cloakrooms = {
      { x = 0, y = 0, z = 0},
    },

    Armories = {
       { x = -711.14, y = 270.9, z = 83.15},
    },

    Vehicles = {
      {
        Spawner    = { x = -699.35, y = 273.89, z = 83.11 },
        SpawnPoint = { x = -701.77, y = 280.38, z = 83.62 },
        Heading    = 325.05,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 0.30500793457, y = -0.3337402344, z = 0.0060696601868 },
        SpawnPoint = { x = 112.94457244873, y = -3102.5942382813, z = 5.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -708.22, y = 276.34, z = 84.1},
      
    },

    BossActions = {
       { x = -714.76, y = 261.03, z = 84.52 },
    },

  },

}
