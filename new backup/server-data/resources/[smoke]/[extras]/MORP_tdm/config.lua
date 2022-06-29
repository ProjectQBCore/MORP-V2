Config = {}

Config.DrawDistance = 100
Config.Size         = {x = 1.5, y = 1.5, z = 1.5}
Config.BuyZoneSize  = {x = 4, y = 4, z = 4}
Config.Color        = {r = 0, g = 128, b = 255}
Config.TeamDeathMatchBlip = { x = 2071.08, y = 2761.78, z = 50.28}
Config.Spectate = {x = 1970.84, y = 2773.39, z = 59.38}
Config.MapCenter = {x = 2014.73, y = 2784.93, z = 49.11}

Config.Deathmatch = {
    BlueTeam = {
        name = "Team Blue",
        color = { r = 0, g = 128, b = 255},
        game_start_pos = { x = 2028.27, y = 2857.86, z = 50.17},
        enter_pos = { x = 2069.69, y = 2763.74, z = 49.11},
        skin = {
            male = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 208,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 130,
                ['pants_1'] = 86,   ['pants_2'] = 0,
                ['shoes_1'] = 59,   ['shoes_2'] = 0,
                ['helmet_1'] = 123,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
                ['bproof_1'] = 16,  ['bproof_2'] = 2

            },
            female = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 212,   ['torso_2'] = 0,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 44,
                ['pants_1'] = 89,   ['pants_2'] = 0,
                ['shoes_1'] = 62,   ['shoes_2'] = 0,
                ['helmet_1'] = 122,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
                ['bproof_1'] = 18,  ['bproof_2'] = 2
            }
        }
    },
    RedTeam = {
        name = "Team Red",
        color = { r = 255, g = 0, b = 0},
        game_start_pos = { x = 2016.07, y = 2705.95, z = 49.95},
        enter_pos = { x = 2071.84, y = 2757.12, z = 49.02},
        skin = {
            male = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 208,   ['torso_2'] = 21,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 130,
                ['pants_1'] = 86,   ['pants_2'] = 21,
                ['shoes_1'] = 59,   ['shoes_2'] = 23,
                ['helmet_1'] = 123,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
                ['bproof_1'] = 16,  ['bproof_2'] = 2
            },
            female = {
                ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                ['torso_1'] = 212,   ['torso_2'] = 21,
                ['decals_1'] = 0,   ['decals_2'] = 0,
                ['arms'] = 44,
                ['pants_1'] = 89,   ['pants_2'] = 21,
                ['shoes_1'] = 62,   ['shoes_2'] = 25,
                ['helmet_1'] = 122,  ['helmet_2'] = 0,
                ['chain_1'] = 0,    ['chain_2'] = 0,
                ['ears_1'] = 0,     ['ears_2'] = 0,
                ['bproof_1'] = 18,  ['bproof_2'] = 2
            }
        }
    }
}

-- Config.Uniforms = 

Config.BuyMenu = {
    Knife = {
        label = "Melee combat",
        list = {
            {
                label = "Axe",
                key = "WEAPON_BATTLEAXE"
            },
            {
                label = "Machete",
                key = "WEAPON_MACHETE"
            },
            {
                label = "Switch Blade",
                key = "WEAPON_SWITCHBLADE"
            }
        }
    },
    Pistol = {
        label = "Pistol",
        list = {
            {
                label = "Pistol",
                key = "WEAPON_PISTOL"
            },
            {
                label = "AP Pistol",
                key = "WEAPON_APPISTOL"
            },
            {
                label = "Revolver",
                key = "WEAPON_REVOLVER"
            }
        }
    },
    Sniper = {
        label = "Sniper",
        list = {
            {
                label = "Heavy Sniper",
                key = "WEAPON_HEAVYSNIPER"
            },
            {
                label = "AWM",
                key = "WEAPON_SNIPERRIFLE"
            }
        }
    },    
    ShortGun = {
        label = "Shotgun",
        list = {
            {
                label = "Sawnoff Shotgun",
                key = "WEAPON_SAWNOFFSHOTGUN"
            },
            {
                label = "Pump shotgun",
                key = "WEAPON_PUMPSHOTGUN"
            },
            {
                label = "Heavy Shotgun",
                key = "WEAPON_HEAVYSHOTGUN"
            },
            {
                label = "Musket",
                key = "WEAPON_MUSKET"
            }
            
        }
    },
    SMG = {
        label = "SMG",
        list = {
            {
                label = "Assault Smg",
                key = "WEAPON_ASSAULTSMG"
            },
            {
                label = "MP5",
                key = "WEAPON_SMG"
            }
        }
    },
    Rifle = {
        label = "Rifle",
        list = {
            {
                label = "M4",
                key = "WEAPON_CARBINERIFLE"
            },
            {
                label = "AK",
                key = "WEAPON_ASSAULTRIFLE"
            }
        }
    },
    Genade = {
        label = "Throwable",
        list = {
            {
                label = "Grenade",
                key = "WEAPON_GRENADE"
            },
            {
                label = "Molotov",
                key = "WEAPON_MOLOTOV"
            },
            {
                label = "Smoke Grenade",
                key = "WEAPON_SMOKEGRENADE"
            }
            
        }
        
    }
}