Config = {}

Config.Locale = 'en'
Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.HotKeyCooldown = 1000
Config.OpenAnim = true

Config.ItemsWeight = {
    bread = 1.00,
    water = 1.00,
    medkit = 2.00,
    bankidcard = 2.00,
    beer = 1.00,   
    cigarette = 1.00,   
    diamond = 3.00,
    firstaid = 1.00,
    zlom = 1.00,
    weapon_license = 1.00,
    vicodin = 1.00,
    vest = 4.00,
    tuning_laptop = 3.00,
    sim = 1.00,
    rolex = 2.00,
    pacificidcard = 1.00,
    oxycutter = 2.00,
    oxy = 2.00,
    morphine = 1.00,
    milk = 1.00,
    meth = 3.00,
    lockpick = 2.00,
    joint = 1.00,
    idcard = 1.00,
    hydrocodone = 2.00,
    gold = 4.00,
    gauze = 1.00,
    fixkit = 3.00,
    bandage = 1.00,
    ammo_snp = 4.00,  
    ammo_smg = 2.00,
    ammo_shotgun = 3.00,
    ammo_rifle = 3.00,
    ammo_pistol = 2.00,
    adrenaline = 1.00,
    WEAPON_WRENCH = 4.00,
    WEAPON_VINTAGEPISTOL = 6.00,
    WEAPON_SWITCHBLADE = 3.00,
    WEAPON_STUNGUN = 2.00,
    WEAPON_SPECIALCARBINE = 25.00,
    WEAPON_STICKYBOMB = 8.00,
    WEAPON_SNSPISTOL = 7.00,
    WEAPON_SNIPERRIFLE = 30.00,
    WEAPON_SMG = 8.00,
    WEAPON_SAWNOFFSHOTGUN = 13.00,
    WEAPON_RPG = 40.00,
    WEAPON_REVOLVER = 12.00,
    WEAPON_PUMPSHOTGUN = 25.00,
    WEAPON_POOLCUE = 4.00,
    WEAPON_PISTOL50 = 6.00,
    WEAPON_PISTOL = 7.00,
    WEAPON_PETROLCAN = 5.00,
    WEAPON_NIGHTSTICK = 3.00,
    WEAPON_MUSKET = 13.00,
    WEAPON_MINISMG = 9.00,
    WEAPON_MICROSMG = 10.00,
    WEAPON_MARKSMANRIFLE = 20.00,
    WEAPON_MACHETE = 3.00,
    WEAPON_KNUCKLE = 2.00,
    WEAPON_KNIFE = 2.00,
    WEAPON_HEAVYSNIPER = 30.00,
    WEAPON_HATCHET = 5.00,
    WEAPON_HAMMER = 8.00,
    WEAPON_GRENADE = 4.00,
    WEAPON_GOLFCLUB = 3.00,
    GARBAGEBAG = 3.00,
    WEAPON_FLASHLIGHT = 2.00,
    WEAPON_FLAREGUN = 5.00,
    WEAPON_DOUBLEACTION = 7.00,
    WEAPON_DAGGER = 2.00,
    WEAPON_CROWBAR = 3.00,
    WEAPON_COMPACTRIFLE = 22.00,
    WEAPON_COMBATPISTOL = 9.00,
    WEAPON_COMBATPDW = 8.00,
    WEAPON_CARBINERIFLE = 24.00,
    WEAPON_BZGAS = 6.00,
    WEAPON_BULLPUPRIFLE = 28.00,
    WEAPON_BOTTLE = 2.00,
    WEAPON_BATTLEAXE = 5.00,
    WEAPON_BAT = 4.00,
    WEAPON_ASSAULTSMG = 9.00,
    WEAPON_ASSAULTRIFLE = 27.00,
    WEAPON_APPISTOL = 11.00,
    WEAPON_ADVANCEDRIFLE = 26.00,
}

Config.Shops = {
    ['Market'] = {
        coords = {
            vector3(373.875, 325.896, 103.566),
--          vector3(4494.37, -4524.77, 4.41), --cayo
            vector3(2557.458, 382.282, 108.622),
            vector3(-3038.939, 585.954, 7.908),
            vector3(-3241.927, 1001.462, 12.830),
            vector3(547.431, 2671.710, 42.156),
            vector3(1961.464, 3740.672, 32.343),
            vector3(2678.916, 3280.671, 55.241),
            vector3(1729.563, 6414.126, 35.044),
            vector3(26.18, -1347.37, 29.5),
            vector3(1135.808, -982.281, 46.415),
            vector3(-1222.915, -906.983, 12.326),
            vector3(-1487.553, -379.107, 40.163),
            vector3(-2968.243, 390.910, 15.043),
            vector3(1166.024, 2708.930, 38.167),
            vector3(1392.562, 3604.684, 34.980),
        },
        items = {
            { name = "bread", price = 11, count = 10 },
            { name = "water", price = 7, count = 10 },
            { name = "icetea", price = 9, count = 10 },
            { name = "cola", price = 8, count = 10 },
            { name = "hamburger", price = 0, count = 10 },
            { name = "chips", price = 0, count = 10 },
            { name = "soda", price = 7, count = 10 },
            { name = "milkshake", price = 10, count = 1},
            { name = "icecoffee", price = 10, count = 1},
            { name = "pancakes", price = 15, count = 1},
            { name = "IceCream", price = 15, count = 1},
            { name = "Coffee", price = 7, count = 1},
            { name = "cupcake", price = 10, count = 1},
            { name = "chocolate", price = 9, count = 10 },
            { name = "tchips", price = 5, count = 10 },
            { name = "orange", price = 8, count = 10 },
            { name = "lighter", price = 11, count = 10 },
            { name = "cigarett", price = 5, count = 10 },
            { name = "sushiplate", price = 100, count = 1},
            { name = "sushirolls", price = 50, count = 1},
            { name = "onigiri", price = 70, count = 1},
            { name = "fruittartlet", price = 20, count = 1},
            { name = "mingo", price = 70, count = 1},
            { name = "veggysalad", price = 30, count = 1},

        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Shop',
        show3D = true,
        enableBlip = true,
		scale = 0.8,
        job = 'all'
    },

    ['Illegal Shop'] = {
        coords = {
            vector3(1443.03, 6331.87, 23.98),
        },
        items = {
            { name = "drugItem", price = 1000, count = 10 },
            { name = "hackerDevice", price = 1000, count = 1 },
            { name = "advancedlockpick", price = 600, count = 1 },
            { name = "green_keycard", price = 600, count = 1},
            { name = "lockpick", price = 500, count = 1 },
            { name = "cuffs", price = 10000, count = 1 },
            { name = "drugbags", price = 50, count = 10 },
            { name = "c4", price = 1000, count = 10 },
            { name = "drill", price = 1000, count = 10 },
            { name = "thermite", price = 1000, count = 10 },
            { name = "hqscale", price = 300, count = 1 },
            { name = "robberyuniform", price = 250, count = 1 },
            { name = "rolpaper", price = 100, count = 10 },
            { name = "fakeplate", price = 1000, count = 10 },
            { name = "oldplate", price = 300, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] to access Illegal Shop',
        show3D = true,
        enableBlip = false,
        job = 'all'
    },

    ['Pawn Shop'] = {
        coords = {
            vector3(412.05673217773, 315.18167114258, 103.13388061523)
        },
        items = {
            { name = "phone", price = 1000, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press E to open Pawn Shop',
        show3D = true,
        enableBlip = false,
        job = 'all'
    },

	['Door Smasher'] = {
        coords = {
        },
        items = {
            { name = "police_stormram", price = 0, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Shop',
        show3D = true,
        enableBlip = false,
        job = 'police'
    },

    ['Pharmacy'] = {
        coords = {
        vector3(308.76, -592.84, 43.28),
        vector3(309.67, -734.15, 29.32),
        },
        items = {
            { name = "gauze", price = 100, count = 1 },
            { name = "firstaid", price = 500, count = 1 },
            { name = "medkit", price = 1000, count = 1 },
            { name = "vicodin", price = 300, count = 1 },
            { name = "hydrocodone", price = 350, count = 1 },
            { name = "morphine", price = 400, count = 1 },
            { name = "bandage", price = 200, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Pharmacy',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['MVD Center'] = {
        coords = {
        vector3(-930.35, -2036.69, 16.05),
        },
        items = {
            { name = "license_drive", price = 0, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Acess License Storage',
        enableBlip = false,
        show3D = true,
        job = 'mvd'
    },

    ['Studio Shop'] = {
        coords = {
        },
        items = {
            { name = "chocolate", price = 9, count = 10 },
            { name = "icetea", price = 9, count = 10 },
            { name = "cola", price = 8, count = 10 },
            { name = "tchips", price = 5, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Shop',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['Drug Store'] = {
        coords = {
        },
        items = {
            { name = "drugItem", price = 2000, count = 1 },
            { name = "hackerDevice", price = 2000, count = 1 },
            { name = "rollingpaper", price = 15, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Shop',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['PD Pharmacy'] = {
        coords = {
        },
        items = {
            { name = "gauze", price = 0, count = 10 },
            { name = "firstaid", price = 0, count = 10 },
            { name = "medkit", price = 0, count = 10 },
            { name = "vicodin", price = 0, count = 10 },
            { name = "hydrocodone", price = 0, count = 10 },
            { name = "vicodin", price = 0, count = 10 },
            { name = "morphine", price = 0, count = 10 },
            { name = "bandage", price = 0, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Pharmacy',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['Jail'] = {
        coords = {
        },
        items = {
            { name = "bread", price = 0, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Pharmacy',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['Court House'] = {
        coords = {
        vector3(237.93, -415.58, 47.95),
        },
        items = {
            { name = "license_weapon", price = 500, count = 1},
            { name = "id_card", price = 50, count = 1},
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Menu ~INPUT_CONTEXT~',
        enableBlip = true,
        blipSprite = 408,
        job = 'all'
    },
	
    ['unicorn'] = {
        coords = {
		vector3(129.28, -1283.9, 29.27)
        },
        items = {
            { name = "marlo", price = 300, count = 1 },
            { name = "vodka", price = 350, count = 1 },
            { name = "vodkaxred", price = 250, count = 1 },
            { name = "viski", price = 150, count = 1 },
            { name = "beer", price = 100, count = 1 },
            { name = "kaberna", price = 500, count = 1 },
            { name = "bread", price = 100, count = 10 },
            { name = "water", price = 50, count = 10 },
            { name = "icetea", price = 80, count = 10 },
            { name = "cola", price = 60, count = 10 },
            { name = "cupcake", price = 60, count = 10 },
            { name = "soda", price = 70, count = 10 },
            { name = "chocolate", price = 90, count = 10 },
            { name = "tchips", price = 50, count = 10 },
            { name = "orange", price = 80, count = 10 },
            { name = "lighter", price = 110, count = 10 },
            { name = "cigarett", price = 50, count = 10 },
            { name = "rolpaper", price = 15, count = 10 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
		size = vector3(0.3, 0.3, 0.3),
        msg = 'Press ~r~[E]~w~ to open shop',
        enableBlip = false,
        show3D = true,
        job = 'unicorn'
    },

    ['bar'] = {
        coords = {
        vector3(-560.15, 286.94, 82.18),
        vector3(1985.36, 3053.07, 47.22),
        vector3(304.33, -743.51, 29.34),
        },
        items = {
            { name = "marlo", price = 400, count = 1 },
            { name = "vodka", price = 450, count = 1 },
            { name = "vodkaxred", price = 350, count = 1 },
            { name = "viski", price = 250, count = 1 },
            { name = "beer", price = 110, count = 1 },
            { name = "kaberna", price = 600, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press ~r~[E]~w~ to open shop',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['Tuner Shop'] = {
        coords = {
        vector3(1187.16, 2638.9, 38.4),
        vector3(100.88, 6618.99, 32.44),
        },
        items = {
            { name = "nitro", price = 250, count = 1 },
            { name = "wrench", price = 250, count = 1 },
            { name = "avrepairkit", price = 100, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press ~r~[E]~w~ to open Tuner Shop',
        enableBlip = true,
        blipSprite = 354,
        show3D = true,
        job = 'all'
    },

    ['Mechanic Shop'] = {
        coords = {
        vector3(-345.47, -131.0, 39.01),
        },
        items = {
            { name = "avrepairkit", price = 100, count = 1 },
			{ name = "repairkit", price = 350, count = 1 },
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press ~r~[E]~w~ to open Mechanic Shop',
        enableBlip = false,
        show3D = true,
        job = 'all'
    },

    ['Tool Shop'] = {
        coords = {
		vector3(44.838947296143, -1748.5364990234, 29.549386978149),
		vector3(2749.2309570313, 3472.3308105469, 55.679393768311),
        },
        items = {
            { name = "phone", price = 650, count = 1 },
            { name = "binoculars", price = 00, count = 1 },
            { name = "parachute", price = 800, count = 1 },
            { name = "oxygen", price = 50000, count = 1 },
            { name = "firework1", price = 200, count = 1 },
            { name = "firework2", price = 500, count = 1 },
            { name = "firework3", price = 1000, count = 1 },
            { name = "firework4", price = 5000, count = 1 },          
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press ~r~[E]~w~ to open Tool Shop',
        scale = 0.8,
        colour = 59,
        blipSprite = 402,
        enableBlip = true,
        show3D = true,
        job = 'all'
    },

    ['WeaponDealer Shop'] = {
        coords = {
        },
        items = {
            --[[
            { name = "disc_ammo_pistol", price = 50, count = 10},
            { name = "disc_ammo_rifle", price = 100, count = 10},
            { name = "disc_ammo_shotgun", price = 200, count = 10},
            { name = "disc_ammo_smg", price = 60, count = 10},
            { name = "vest", price = 16000, count = 1 },
            { name = "WEAPON_WRENCH", price = 200, count = 1},
            { name = "WEAPON_POOLCUE", price = 350, count = 1},
            { name = "WEAPON_MACHETE", price = 500, count = 1},
            { name = "WEAPON_SWITCHBLADE", price = 500, count = 1 },
            { name = "WEAPON_KNUCKLE", price = 100, count = 1 },
            { name = "WEAPON_KNIFE", price = 200, count = 1},
            { name = "WEAPON_HATCHET", price = 400, count = 1 },
            { name = "WEAPON_GOLFCLUB", price = 400, count = 1 },
            { name = "WEAPON_FLASHLIGHT", price = 100, count = 1 },
            { name = "WEAPON_BOTTLE", price = 100, count = 1 },
            { name = "WEAPON_BAT", price = 350, count = 1 },
            { name = "WEAPON_STUNGUN", price = 250, count = 1},
            { name = "WEAPON_APPISTOL", price = 1000, count = 1 },
            { name = "WEAPON_FLAREGUN", price = 2000, count = 1 },
            { name = "WEAPON_COMBATPISTOL", price = 1500, count = 1 },
            { name = "WEAPON_HEAVYPISTOL", price = 2000, count = 1 },
            { name = "WEAPON_MICROSMG", price = 5000, count = 1 },
            { name = "WEAPON_MINISMG", price = 6000, count = 1 },
            { name = "WEAPON_MACHINEPISTOL", price = 5500, count = 1 },
            { name = "WEAPON_SMG", price = 7000, count = 1 },
            { name = "WEAPON_ASSAULTSMG", price = 8000, count = 1 },
            { name = "WEAPON_COMPACTRIFLE", price = 10000, count = 1 },
            { name = "WEAPON_COMBATPDW", price = 8500, count = 1 },
            { name = "WEAPON_ASSAULTRIFLE", price = 17000, count = 1 },
            { name = "WEAPON_CARBINERIFLE", price = 20000, count = 1 },
            { name = "WEAPON_ADVANCEDRIFLE", price = 25000, count = 1 },
            { name = "WEAPON_GUSENBERG", price = 30000, count = 1 },
            { name = "WEAPON_MUSKET", price = 32000, count = 1 },
            { name = "WEAPON_ASSAULTSHOTGUN", price = 20000, count = 1 },
            { name = "WEAPON_PUMPSHOTGUN", price = 32000, count = 1 },
            ]]
        },
        markerType = 20,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Press ~r~[E]~w~ to open weapons store',
        enableBlip = false,
        show3D = true,
        job = 'dealer'
    },

    ['Police Armory'] = {
        coords = {
        },
        items = {
            { name = "license_police", price = 0, count = 1 },
            { name = "policevest", price = 0, count = 10 },
            { name = "advancedlockpick", price = 50, count = 1 },
            { name = "binoculars", price = 80, count = 1 },
            { name = "medkit", price = 950, count = 10 },
            { name = "bandage", price = 150, count = 10 },
            { name = "bread", price = 2, count = 10 },
            { name = "water", price = 2, count = 10 },
            { name = "phone", price = 950, count = 10 },
            { name = "radio", price = 100000, count = 10 },
            { name = "oxygen", price = 45000, count = 10, grade = 0 },
            { name = "WEAPON_NIGHTSTICK", price = 25000, count = 1, grade = 0 },
            { name = "WEAPON_FLASHLIGHT", price = 20000, count = 1, grade = 0 },
            { name = "WEAPON_STUNGUN", price = 500000, count = 1, grade = 0 },
            { name = "WEAPON_COMBATPISTOL", price = 100000, count = 1, grade = 0 },
            { name = "WEAPON_HEAVYPISTOL", price = 150000, count = 1, grade = 0 },
            { name = "WEAPON_SMG", price = 200000, count = 1, grade = 0 },
            { name = "WEAPON_CARBINERIFLE", price = 250000, count = 1, grade = 0 },
            { name = "WEAPON_SPECIALCARBINE", price = 300000, count = 1, grade = 0 },
            { name = "disc_ammo_pistol", price = 9500, count = 10, grade = 0 },
            { name = "disc_ammo_smg", price = 24000, count = 10, grade = 0 },
			{ name = "disc_ammo_shotgun", price = 15000, count = 10, grade = 0 },
			{ name = "disc_ammo_rifle", price = 35000, count = 10, grade = 0 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] Police shop',
        show3D = true,
        job = 'police'
    },

    ['MVD Armory'] = {
        coords = {
        },
        items = {
            { name = "advancedlockpick", price = 50, count = 1 },
            { name = "binoculars", price = 80, count = 1 },
            { name = "medkit", price = 950, count = 10 },
            { name = "bandage", price = 150, count = 10 },
            { name = "bread", price = 2, count = 10 },
            { name = "water", price = 2, count = 10 },
            { name = "phone", price = 950, count = 1 },
            { name = "radio", price = 100000, count = 1 },
            { name = "oxygen", price = 45000, count = 10, grade = 0 },
            { name = "avrepairkit", price = 50, count = 1 },
			{ name = "repairkit", price = 300, count = 1 },
            { name = "WEAPON_NIGHTSTICK", price = 25000, count = 1, grade = 0 },
            { name = "WEAPON_FLASHLIGHT", price = 20000, count = 1, grade = 0 },
            { name = "WEAPON_STUNGUN", price = 500000, count = 1, grade = 0 },
            { name = "WEAPON_COMBATPISTOL", price = 100000, count = 1, grade = 0 },
            { name = "WEAPON_HEAVYPISTOL", price = 150000, count = 1, grade = 0 },
            { name = "WEAPON_SMG", price = 200000, count = 1, grade = 0 },
            { name = "WEAPON_CARBINERIFLE", price = 250000, count = 1, grade = 0 },
            { name = "disc_ammo_pistol", price = 9500, count = 10, grade = 0 },
            { name = "disc_ammo_smg", price = 24000, count = 10, grade = 0 },
			{ name = "disc_ammo_rifle", price = 35000, count = 10, grade = 0 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] MVD shop',
        show3D = true,
        job = 'mvd'
    },

    ['Jail Armory'] = {
        coords = {
        },
        items = {
            { name = "medkit", price = 0, count = 1 },
            { name = "firstaid", price = 0, count = 1 },
            { name = "bandage", price = 0, count = 1 },
            { name = "bread", price = 0, count = 1 },
            { name = "water", price = 0, count = 1 },
            { name = "WEAPON_FLASHLIGHT", price = 0, count = 1, grade = 3 },
            { name = "WEAPON_STUNGUN", price = 100, count = 1, grade = 3 },
            { name = "WEAPON_NIGHTSTICK", price = 50, count = 1, grade = 3 },
            { name = "oxygen", price = 50000, count = 1, grade = 3 },
            { name = "WEAPON_REVOLVER", price = 200, count = 1, grade = 3 },
            { name = "WEAPON_VINTAGEPISTOL", price = 200, count = 1, grade = 3 },
            { name = "WEAPON_PUMPSHOTGUN", price = 200, count = 1, grade = 5 },
            
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] Police shop',
        show3D = true,
        job = 'police'
    },

    ['firework'] = {
        coords = {
        },
        items = {
            { name = "firework1", price = 20, count = 1 },
            { name = "firework2", price = 30, count = 1 },
            { name = "firework3", price = 40, count = 1 },
            { name = "firework4", price = 50, count = 1 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] - firework',
        job = 'firework'
    },

    ['Hotdog Job Food'] = {
        coords = {
        },
        items = {
            { name = "filet_mignon", price = 0, count = 1},
            { name = "hotdog", price = 0, count = 1},
            { name = "schnitzel", price = 0, count = 1},
            { name = "chips", price = 0, count = 1},
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] - Burger Shot',
        job = 'hotdog'
    },

    ['Hotdog Job Drinks'] = {
        coords = {
        },
        items = {
            { name = "slushy", price = 0, count = 1},
            { name = "icetea", price = 0, count = 1},
            { name = "water", price = 0, count = 1},
            { name = "cocacola", price = 0, count = 1},
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] - Burger Shot',
        job = 'hotdog'
    },

    ['Sushi Stand'] = {
        coords = {
        },
        items = {
            { name = "chips", price = 0, count = 1},
            { name = "slushy", price = 0, count = 1},
            { name = "icetea", price = 0, count = 1},
            { name = "water", price = 0, count = 1},
            { name = "cocacola", price = 0, count = 1},

        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] - Taco Stand',
        job = 'taco'
    },

    ['Thattukada'] = {
        coords = {
            vector3(274.04, -833.86, 29.26)
        },
        items = {
            { name = "hamburger", price = 0, count = 10 },
            { name = "chips", price = 0, count = 10 },
            { name = "water", price = 7, count = 10 },
            { name = "icetea", price = 9, count = 10 },
            { name = "soda", price = 7, count = 10 },
            { name = "Coffee", price = 7, count = 1},
            { name = "cupcake", price = 10, count = 1},
            { name = "lighter", price = 11, count = 10 },
            { name = "cigarett", price = 5, count = 10 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = '[E] - Thattukada',
        job = 'all'
    },
}

Config.Stash = {

    ['NewDeli Stash'] = {
        coords = vector3(43.91, -1008.47, 29.29),
        size = vector3(1.0, 1.0, 1.0),
        job = 'newdeli',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Stash',
        show3D = true
    },

    ['CarDealerr Stash'] = {
        coords = vector3(-1173.39, -1707.04, 4.56),
        size = vector3(1.0, 1.0, 1.0),
        job = 'cardealer',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Stash',
        show3D = true
    },

    ['Marabunta Stash'] = {
        coords = vector3(1444.48, -1489.05, 66.62),
        size = vector3(1.0, 1.0, 1.0),
        job = 'marabunta',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Stash',
        show3D = true
    },

    ['Chang Stash'] = {
        coords = vector3(-1150.05, -1512.63, 10.63),
        size = vector3(1.0, 1.0, 1.0),
        job = 'chicken',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = '[E] - Stash',
        show3D = true
    },
}


Config.Steal = {
    black_money = true,
    cash = false
}

Config.Seize = {
    black_money = true,
    cash = false
}

Config.VehicleLimit = {
    ['Zentorno'] = 10,
    ['Panto'] = 1,
    ['Zion'] = 5
}

--Courtesy DoctorTwitch
Config.VehicleSlot = {
    [0] = 20, --Compact
    [1] = 30, --Sedan
    [2] = 20, --SUV
    [3] = 30, --Coupes
    [4] = 20, --Muscle
    [5] = 20, --Sports Classics
    [6] = 20, --Sports
    [7] = 20, --Super
    [8] = 0, --Motorcycles
    [9] = 15, --Off-road
    [10] = 40, --Industrial
    [11] = 40, --Utility
    [12] = 60, --Vans
    [13] = 20, --Cycles
    [14] = 20, --Boats
    [15] = 20, --Helicopters
    [16] = 20, --Planes
    [17] = 40, --Service
    [18] = 40, --Emergency
    [19] = 90, --Military
    [20] = 0, --Commercial
    [21] = 0 --Trains
}

Config.Throwables = {
    WEAPON_MOLOTOV = 615608432,
    WEAPON_GRENADE = -1813897027,
    WEAPON_STICKYBOMB = 741814745,
    WEAPON_PROXMINE = -1420407917,
    WEAPON_SMOKEGRENADE = -37975472,
    WEAPON_PIPEBOMB = -1169823560,
    WEAPON_SNOWBALL = 126349499
}

Config.FuelCan = 883325847
