--[[local shops = {
    ['Market'] = {
        text = '[E] - Shop',
        dist = 1.5,
        key = 38,
        blip = { sprite = 52, scale = 0.5, text = 'Shop'},
        coords = {
            {x = 373.875,   y = 325.896,  z = 102.566},
            {x = 2557.458,  y = 382.282,  z = 107.622},
            {x = -3038.939, y = 585.954,  z = 6.908},
            {x = -3241.927, y = 1001.462, z = 11.830},
            {x = 547.431,   y = 2671.710, z = 41.156},
            {x = 1961.464,  y = 3740.672, z = 31.343},
            {x = 2678.916,  y = 3280.671, z = 54.241},
            {x = 1729.216,  y = 6414.131, z = 34.037},
            {x = 1135.808,  y = -982.281,  z = 45.415},
            {x = -1222.915, y = -906.983,  z = 11.326},
            {x = -1487.553, y = -379.107,  z = 39.163},
            {x = -2968.243, y = 390.910,   z = 14.043},
            {x = 1166.024,  y = 2708.930,  z = 37.157},
            {x = 1392.562,  y = 3604.684,  z = 33.980},
            {x = -48.519,   y = -1757.514, z = 28.421},
            {x = 1163.373,  y = -323.801,  z = 68.205},
            {x = -707.501,  y = -914.260,  z = 18.215},
            {x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063},
        },
        items = {
            [1] = { name = "bread", price = 11,  amount = 50, info = {}, type = "item", slot = 1 },
            [2] = { name = "water", price = 7,  amount = 50, info = {}, type = "item", slot = 2 },
            [3] = { name = "icetea", price = 9,  amount = 50, info = {}, type = "item", slot = 3 },
            [4] = { name = "cola", price = 8,  amount = 50, info = {}, type = "item", slot = 4 },
            [5] = { name = "cupcake", price = 6,  amount = 50, info = {}, type = "item", slot = 5 },
            [6] = { name = "soda", price = 7,  amount = 50, info = {}, type = "item", slot = 6 },
            [7] = { name = "chocolate", price = 9,  amount = 50, info = {}, type = "item", slot = 7 },
            [8] = { name = "tchips", price = 5,  amount = 50, info = {}, type = "item", slot = 8 },
            [9] = { name = "orange", price = 8,  amount = 50, info = {}, type = "item", slot = 9 },
            [10] = { name = "lighter", price = 11,  amount = 50, info = {}, type = "item", slot = 10 },
            [11] = { name = "cigarette", price = 5,  amount = 50, info = {}, type = "item", slot = 11 },
            [12] = { name = "rollingpaper", price = 15,  amount = 50, info = {}, type = "item", slot = 12 },
        }
    },
    ['Tool Shop'] = {
        text = '[E] - Tool Shop',
        dist = 5,
        key = 38,
        blip = { sprite = 402, scale = 0.7, color = 49, text = 'Tool Shop'},
        coords = {
            { x = 44.838947296143, y = -1748.5364990234, z = 29.549386978149 },
            { x = 2749.2309570313, y = 3472.3308105469, z = 55.679393768311 },
        },
        items = {
            [1] = { name = "gps", price = 250,  amount = 10, info = {}, type = "item", slot = 1 },
            [2] = { name = "lockpick", price = 150,  amount = 10, info = {}, type = "item", slot = 2 },
            [3] = { name = "repairkit", price = 350,  amount = 10, info = {}, type = "item", slot = 3 },
            [4] = { name = "avrepairkit", price = 500,  amount = 10, info = {}, type = "item", slot = 4 },
            [5] = { name = "vest", price = 600,  amount = 10, info = {}, type = "item", slot = 5 },
            [6] = { name = "phone", price = 650,  amount = 10, info = {}, type = "item", slot = 6 },
            [7] = { name = "radio", price = 400,  amount = 10, info = {}, type = "item", slot = 7 },
            [8] = { name = "binoculars", price = 600,  amount = 10, info = {}, type = "item", slot = 8 },
            [9] = { name = "parachute", price = 800,  amount = 10, info = {}, type = "item", slot = 9 },
            [10] = { name = "oxygen", price = 1000,  amount = 10, info = {}, type = "item", slot = 10 },
            [11] = { name = "hqscale", price = 100,  amount = 1, info = {}, type = "item", slot = 11 },
            [12] = { name = "drugbags", price = 2,  amount = 20, info = {}, type = "item", slot = 12 },
        }
    },
    ['Pharmacy'] = {
        text = '[E] - Pharmacy',
        dist = 5,
        key = 38,
        coords = {
            { x = 309.23089599609, y = -593.38928222656, z = 43.282577514648}
        },
        items = {
            [1] = { name = "gauze", price = 30,  amount = 30, info = {}, type = "item", slot = 1 },
            [2] = { name = "firstaid", price = 50,  amount = 30, info = {}, type = "item", slot = 2 },
            [3] = { name = "medkit", price = 70,  amount = 30, info = {}, type = "item", slot = 3 },
            [4] = { name = "vicodin", price = 50,  amount = 30, info = {}, type = "item", slot = 4 },
            [5] = { name = "hydrocodone", price = 100,  amount = 30, info = {}, type = "item", slot = 5 },
            [6] = { name = "morphine", price = 50,  amount = 30, info = {}, type = "item", slot = 6 },
            [7] = { name = "bandage", price = 20,  amount = 30, info = {}, type = "item", slot = 7 },
        }
    },
    ['Court House'] = {
        text = '[E] - Court House',
        dist = 5,
        key = 38,
        coords = {
            { x = 67.223892211914, y = -952.40502929688, z = 29.81777381897}
        },
        items = {
            [1] = { name = "license_weapon", price = 50,  amount = 30, info = {}, type = "item", slot = 1 },
            [2] = { name = "license_drive", price = 50,  amount = 30, info = {}, type = "item", slot = 2 },
            [3] = { name = "id_card", price = 50,  amount = 30, info = {}, type = "item", slot = 3 },
        }
    },
    ['Weapons Shop'] = {
        text = '[E] - Weapon Shop',
        dist = 5,
        key = 38,
        blip = { sprite = 110, scale = 0.7, color = 81, text = 'Weapon Shop'},
        coords = {
            { x = -662.1, y = -935.34, z = 21.6 },
            { x = 810.2, y = -2157.3, z = 29.4 },
            { x = 1693.4, y = 3759.5, z = 34.5 },
            { x = -330.2, y = 6083.8, z = 31.2 },
            { x = 252.3, y = -50.0, z = 69.7 },
            { x = 22.0, y =-1107.2, z = 29.6 },
            { x = 2567.6, y = 294.3, z = 108.5 },
            { x = -1117.5, y = 2698.6, z = 18.3 },
            { x = 842.4, y = -1033.4, z = 27.9 },
        },
        items = {
            [1] = { name = "weapon_wrench", price = 500,  amount = 10, info = {}, type = "item", slot = 1 },
            [2] = { name = "weapon_knuckle", price = 500,  amount = 10, info = {}, type = "item", slot = 2 },
            [3] = { name = "weapon_knife", price = 1000,  amount = 10, info = {}, type = "item", slot = 3 },
            [4] = { name = "weapon_hatchet", price = 500,  amount = 10, info = {}, type = "item", slot = 4 },
            [5] = { name = "weapon_bottle", price = 500,  amount = 10, info = {}, type = "item", slot = 5 },
            [6] = { name = "weapon_bat", price = 500,  amount = 10, info = {}, type = "item", slot = 6 },
        }

    },
}


-- Markers
CreateThread(function()
    while true do
        Wait(1)
        for shopName,shop in pairs(shops) do
            for k,v in pairs(shop.coords) do
                shop.dist = shop.dist or 2
                if Vdist2(GetEntityCoords(PlayerPedId()), v.x or v[1],v.y or v[2],v.z or v[3]) < shop.dist then
                    DrawText3Ds(v.x or v[1],v.y or v[2],v.z or v[3], shop.text)
                    if IsControlJustPressed(0, shop.key or 38) and not exports["ev-storerobbery"]:InRob() then
                        TriggerEvent('inventory:shop', shopName)
                    end
                end
            end
        end
    end
end)

-- Blips
CreateThread(function()
    for _,shop in pairs(shops) do
        if shop.blip then
            for k,blip in pairs(shop.coords) do
                if blip.blip == nil or blip.blip == true then
                    local blip = AddBlipForCoord(blip.x or v[1],blip.y or v[2],blip.z or v[3])

                    if shop.blip.sprite then
                        SetBlipSprite(blip, shop.blip.sprite)
                    end

                    if shop.blip.scale then
                        SetBlipScale (blip, shop.blip.scale)
                    end

                    if shop.blip.color then
                        SetBlipColour(blip, shop.blip.color)
                    end

                    SetBlipAsShortRange(blip, true)
    
                    if shop.blip.text then
                        BeginTextCommandSetBlipName('STRING')
                        AddTextComponentSubstringPlayerName(shop.blip.text)
                        EndTextCommandSetBlipName(blip)
                    end
                end
            end
        end
    end
end)

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end--]]