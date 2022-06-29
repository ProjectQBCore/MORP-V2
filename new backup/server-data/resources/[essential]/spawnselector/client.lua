local ESX, selectedspawnposition = nil
local spawn = nil
local LastLocation = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) 
			ESX = obj 
        end)
        
		Citizen.Wait(0)
	end
end)

--CODE
local camZPlus1 = 1500
local camZPlus2 = 50
local pointCamCoords = 75
local pointCamCoords2 = 0
local cam1Time = 500
local cam2Time = 1000

RegisterNUICallback("SpawnPlayer", function()
	if selectedspawnposition ~= nil then
		SpawnPlayer(selectedspawnposition)
	else
        TriggerEvent('spawnselector:setNui')
		print("You need to select a spawn point!")
        TriggerEvent('notification', "You need to select a spawn point!", 15000)
	end
end)

RegisterNUICallback("LastLocation", function()
    selectedspawnposition = LastLocation
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnAirport", function()
    selectedspawnposition = { x = -1146.28, y = -1726.27, z = 5.64, h = 209.57 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnBus", function()
    selectedspawnposition = { x = 107.45, y = 6612.54, z = 33.34, h = 225.18 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnPolice", function()
    selectedspawnposition = { x = 425.06, y = -979.67, z = 30.71, h = 267.37 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnCenter", function()
    selectedspawnposition = { x = 238.6, y = -871.23, z = 31.65, h = 343.63 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnHospital", function()
    selectedspawnposition = { x =  283.83, y = -578.6, z = 43.21, h = 103.61 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

RegisterNUICallback("SpawnMechanic", function()
    selectedspawnposition = { x = 1709.88, y = 3605.75, z = 36.54, h = 188.69 }
    local playerPed = PlayerPedId()
    local campos = selectedspawnposition

    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Citizen.Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(GetPlayerPed(-1), campos.x, campos.y, campos.z)
end)

function SpawnPlayer(Location)
    local pos = Location
    local ped = PlayerPedId()
    SetNuiFocus(false, false)

    DoScreenFadeOut(500)
    Citizen.Wait(500)
    SetEntityCoords(ped, pos.x, pos.y, pos.z)
    Citizen.Wait(500)
    SetEntityCoords(ped, pos.x, pos.y, pos.z)
    SetEntityHeading(ped, pos.h)
    FreezeEntityPosition(ped, false)
    RenderScriptCams(false, true, 500, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    SetCamActive(cam2, false)
    DestroyCam(cam2, true)
    SetEntityVisible(GetPlayerPed(-1), true)
    Citizen.Wait(500)
    DoScreenFadeIn(250)
    SetNuiFocus(false, false)

end

RegisterNetEvent("spawnselector:setNui")
AddEventHandler("spawnselector:setNui", function(spawn)
    LastLocation = spawn or { x = 0, y = 0, z = 0 }
    SetNuiFocus(true, true)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", spawn.x, spawn.y, spawn.z + camZPlus1, -85.00, 0.00, 0.00, 100.00, false, 0)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)

	SendNUIMessage({ Action = "OPEN_SPAWNMENU" })
end)

RegisterNetEvent("spawnselector:closeNui")
AddEventHandler("spawnselector:closeNui", function()
    SetNuiFocus(false, false)
    SendNUIMessage({ Action = "CLOSE_MENU" })
    
end)
