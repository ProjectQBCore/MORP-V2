ESX = nil

Draw = true

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)



Draw = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped, false) then
            if Draw then
                for k, v in pairs(Config.Locations) do
                    local pos = GetEntityCoords(PlayerPedId())
                    if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 7.0) then
                        DrawText3Ds(v.x, v.y, v.z, '~g~E~w~ - Repair/Wash your car')
                        if (Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 5.0) and IsControlJustPressed(1,38) then
                            Draw = false
                            TriggerEvent("nui:on", true)
                        end
                    end
                end
            end
        end
    end
end)

local once = true
local e = 0

Citizen.CreateThread(function()

    local e = 0
    if once then
        for k,v in pairs(Config.Locations) do 
            local pos = GetEntityCoords(PlayerPedId())
            once = false
            setblip(v.x, v.y, v.z)
            e = e+1
        end
        print(e)
    end
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false)
    Wait(400)
    Draw = true
end) 

RegisterNUICallback("repair", function(data, cb)
    SetNuiFocus(false)
    repairvehicle()
end)

RegisterNUICallback("wash", function(data, cb)
    SetNuiFocus(false)
    WashVehicle()
end)

RegisterNetEvent('nui:on')
AddEventHandler('nui:on', function()
  SetNuiFocus(true, true)
  SendNUIMessage({
    type = "ui",
    display = true,
    repairPrice = Config.repairPrice,
    washPrice = Config.washPrice
  })
end)



function repairvehicle()
    ESX.TriggerServerCallback('ron:repairPrice', function(repairPrice)
        if repairPrice then 
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            if IsPedInAnyVehicle(ped, false) then
                local vehicle = GetVehiclePedIsIn(ped) 
                SetVehicleEngineOn(vehicle, false, true, true)
                if Config.repairPrice then
                Draw = false
                exports['mythic_notify']:SendAlert('inform', 'Starting To Fix Vehicle...', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                exports['progressbar']:Progress({
                    name = "firstaid_action",
                    duration = 2500,
                    label = "Repairing vehicle",
                    useWhileDead = false,
                    canCancel = true,
                    controlDisables = {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    },
                },
                function(status)
                end)
                    Wait(2500)
                    SetVehicleEngineHealth(vehicle, 1000)
                    SetVehicleEngineOn(vehicle, true, true, true)
                    SetVehicleFixed(vehicle)
                    exports['mythic_notify']:SendAlert('inform', 'Your vehicle has been repaired', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                    Draw = true
                end
            end
        else
            exports['mythic_notify']:SendAlert('inform', 'You dont have enough money', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
            Draw = true
        end
    end)
end

function WashVehicle()
    ESX.TriggerServerCallback('ron:washPrice', function(repairPrice)
        if repairPrice then 
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            if IsPedInAnyVehicle(ped, false) then
                local vehicle = GetVehiclePedIsIn(ped) 
                if Config.washPrice then
                Draw = false
                exports['mythic_notify']:SendAlert('inform', 'Starting to wash vehicle...', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                exports['progressbar']:Progress({
                    name = "firstaid_action",
                    duration = 2500,
                    label = "Washing vehicle",
                    useWhileDead = false,
                    canCancel = true,
                    controlDisables = {
                        disableMovement = false,
                        disableCarMovement = false,
                        disableMouse = false,
                        disableCombat = true,
                    },
                },
                function(status)
                end)
                    Wait(2500)
                    SetVehicleDirtLevel(vehicle, 0.1)
                    exports['mythic_notify']:SendAlert('inform', 'Your vehicle has been washed', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                    Draw = true
                end
            end
        else
            exports['mythic_notify']:SendAlert('inform', 'You dont have enough money', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
            Draw = true
        end
    end)
end

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
end

function setblip(x, y, z)
    local blip = AddBlipForCoord(x,y,z)
    SetBlipSprite (blip, 402)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.2)
	SetBlipColour (blip, 55)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Repair")
	EndTextCommandSetBlipName(blip)
end