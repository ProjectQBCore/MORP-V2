Config = {}

Config.Jobs = {
    {
        name = "ballas",
        color = {r = 101, g = 17 , b = 145},
        vehicles = {
            { value = 'sentinel3',  label = 'Sentinel' },
            { value = 'akuma',  label = 'Akuma' },
            { value = 'faction3',  label = 'Faction 3' },
        },
        spawns = {
            {
                pos = vector3(106.53, -1957.1,20.75),
                spawnCoords = vector4(107.52,-1942.43,20.8,47.81),
                info = "Press ~g~E~w~ to open car menu",
                needVehicle = false,
                dist = 10,
            },
            {
                pos = vector3(102.2 ,-1962.07,20.84),
                info = "Press ~g~E~w~ to return the vehicle",
                needVehicle = true,
                dist = 15
            } 
        }
    },
    {
        name = "families",
        color = {r = 21, g = 150 , b = 38},
        vehicles = {
            { value = 'sentinel3',  label = 'Sentinel' },
            { value = 'akuma',  label = 'Akuma' },
        },
        spawns = {
            {
                pos = vector3(-116.09,-1597.72,32.34),
                spawnCoords = vector4( -104.99,-1594.75,31.54,316.9),
                info = "Press ~g~E~w~ to open car menu",
                needVehicle = false,
                dist = 10,
            },
            {
                pos = vector3(-115.45, -1607.11 , 31.29),
                info = "Press ~g~E~w~ to return the vehicle",
                needVehicle = true,
                dist = 15
            }
        }
    },
    {
        name = "marabunta",
        color = {r = 0, g = 175 , b = 255},
        vehicles = {
            { value = 'sentinel3',  label = 'Sentinel' },
            { value = 'akuma',  label = 'Akuma' },
        },
        spawns = {
            {
                pos = vector3(1423.21, -1501.75, 60.93),
                spawnCoords = vector4( 1421.43, -1513.33, 60.65, 278.38),
                info = "Press ~g~E~w~ to open car menu",
                needVehicle = false,
                dist = 10,
            },
            {
                pos = vector3(1412.46, -1502.86 , 59.82),
                info = "Press ~g~E~w~ to return the vehicle",
                needVehicle = true,
                dist = 15
            }
        }
    },
    {
        name = "vagos",
        color = {r = 255, g = 255 , b = 34},
        vehicles = {
            { value = 'sentinel3',  label = 'Sentinel' },
            { value = 'akuma',  label = 'Akuma' },
        },
        spawns = {
            {
                pos = vector3(334.88, -2039.77, 21.1),
                spawnCoords = vector4( 319.82, -2027.64, 20.71, 50.48),
                info = "Press ~g~E~w~ to open car menu",
                needVehicle = false,
                dist = 10,
            },
            {
                pos = vector3(324.01, -2024.25 , 20.93),
                info = "Press ~g~E~w~ to return the vehicle",
                needVehicle = true,
                dist = 15
            }
        }
    },
}