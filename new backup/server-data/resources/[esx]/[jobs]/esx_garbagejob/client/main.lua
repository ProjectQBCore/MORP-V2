ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while not ESX.GetPlayerData().job do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

isLoggedIn = true
PlayerJob = {}

local GarbageVehicle = nil
local hasVuilniswagen = false
local OnAnimation = false
local GarbageLocation = 0
local DeliveryBlip = nil
local IsWorking = false
local AmountOfBags = 0
local GarbageObject = nil
local EndBlip = nil
local GarbageBlip = nil
local Earnings = 0
local CanTakeBag = true

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(JobInfo) 
    isLoggedIn = true
    GarbageVehicle = nil
    hasVuilniswagen = false
    OnAnimation = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil

    if GarbageBlip ~= nil then
        RemoveBlip(GarbageBlip)
    end

    if JobInfo.name == "garbage" then
        GarbageBlip = AddBlipForCoord(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)
        SetBlipSprite(GarbageBlip, 318)
        SetBlipDisplay(GarbageBlip, 4)
        SetBlipScale(GarbageBlip, 0.7)
        SetBlipAsShortRange(GarbageBlip, true)
        SetBlipColour(GarbageBlip, 2)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Locations["main"].label)
        EndTextCommandSetBlipName(GarbageBlip)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    isLoggedIn = true
    ESX.PlayerData = ESX.GetPlayerData()
    GarbageVehicle = nil
    hasVuilniswagen = false
    OnAnimation = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil

    if ESX.PlayerData.job.name == "garbage" then
        GarbageBlip = AddBlipForCoord(Config.Locations["main"].coords.x, Config.Locations["main"].coords.y, Config.Locations["main"].coords.z)
        SetBlipSprite(GarbageBlip, 318)
        SetBlipDisplay(GarbageBlip, 4)
        SetBlipScale(GarbageBlip, 0.6)
        SetBlipAsShortRange(GarbageBlip, true)
        SetBlipColour(GarbageBlip, 39)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Locations["main"].label)
        EndTextCommandSetBlipName(GarbageBlip)
    end
end)



function DrawText3D(x, y, z, text)
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
end

function DrawText3D2(coords, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(coords.x,coords.y,coords.z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function LoadModel(hash)
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Citizen.Wait(10)
    end
end

function LoadAnimation(dict)
    RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
end

function BringBackCar()
    local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
    DeleteVehicle(veh)
    if EndBlip ~= nil then
        RemoveBlip(EndBlip)
    end
    if DeliveryBlip ~= nil then
        RemoveBlip(DeliveryBlip)
    end
    if Earnings > 0 then
        PayCheckLoop(GarbageLocation)
    end
    GarbageVehicle = nil
    hasVuilniswagen = false
    OnAnimation = false
    GarbageLocation = 0
    DeliveryBlip = nil
    IsWorking = false
    AmountOfBags = 0
    GarbageObject = nil
    EndBlip = nil
end

function PayCheckLoop()
    Citizen.CreateThread(function()
        while Earnings > 0 do
            local ped = GetPlayerPed(-1)
            local pos = GetEntityCoords(ped)
            local coords = Config.Locations["paycheck"].coords
            local distance = GetDistanceBetweenCoords(pos, coords.x, coords.y, coords.z, true)

            if distance < 20 then
                DrawMarker(2, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false)
                if distance < 1.5 then
                    DrawText3D(coords.x, coords.y, coords.z, "~g~E~w~ - Salary")
                    if IsControlJustPressed(0, Keys["E"]) then
                        TriggerServerEvent('esx_garbagejob:server:PayShit', Earnings)
                        Earnings = 0
                    end
                elseif distance < 5 then
                    DrawText3D(coords.x, coords.y, coords.z, "Salary")
                end
            end

            Citizen.Wait(1)
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        local ped = GetPlayerPed(-1)
        local pos = GetEntityCoords(ped)
        local spawnplek = Config.Locations["vehicle"].label
        local InVehicle = IsPedInAnyVehicle(GetPlayerPed(-1), false)
        local distance = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, Config.Locations["vehicle"].coords.x, Config.Locations["vehicle"].coords.y, Config.Locations["vehicle"].coords.z, true)
        
        if isLoggedIn then
                if distance < 10.0 then
                    DrawMarker(2, Config.Locations["vehicle"].coords.x, Config.Locations["vehicle"].coords.y, Config.Locations["vehicle"].coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false)
                    if distance < 1.5 then
                        if InVehicle then
                            DrawText3D(Config.Locations["vehicle"].coords.x, Config.Locations["vehicle"].coords.y, Config.Locations["vehicle"].coords.z, "~g~E~w~ - Store garbage truck")
                            if IsControlJustReleased(0, Keys["E"]) then
                                BringBackCar()
                            end
                        else
                            DrawText3D(Config.Locations["vehicle"].coords.x, Config.Locations["vehicle"].coords.y, Config.Locations["vehicle"].coords.z, "~g~E~w~ - Garbage truck")
                            if IsControlJustReleased(0, Keys["E"]) then
                                local coords = Config.Locations["vehicle"].coords

                                ESX.Game.SpawnVehicle('trash', vector3(coords.x,coords.y,coords.z), coords.h, function(veh)
                                    GarbageVehicle = veh
                                    SetVehicleNumberPlateText(veh, "GARB"..tostring(math.random(1000, 9999)))
                                    SetEntityHeading(veh, coords.h)
                                    TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
                                    SetEntityAsMissionEntity(veh, true, true)
                                    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                                    TriggerEvent("keys:addNew",veh,GetVehicleNumberPlateText(veh))
                                    SetVehicleEngineOn(veh, true, true)
                                    hasVuilniswagen = true
                                    GarbageLocation = 1
                                    IsWorking = true
                                    SetGarbageRoute()
                                    TriggerEvent('notification', "You have started working, location is indicated on your GPS!")
                                end)
                            end
                        end
                    end
                end
        end

        Citizen.Wait(1)
    end
end)

Citizen.CreateThread(function()
    while true do

        local ped = GetPlayerPed(-1)
        local pos = GetEntityCoords(ped)
        local inRange = false

        if isLoggedIn then
                if IsWorking then
                    if GarbageLocation ~= 0 then
                        if DeliveryBlip ~= nil then
                            local DeliveryData = Config.Locations["grabs"][GarbageLocation]
                            local Distance = GetDistanceBetweenCoords(pos, DeliveryData.coords.x, DeliveryData.coords.y, DeliveryData.coords.z, true)

                            if Distance < 20 or OnAnimation then
                                LoadAnimation('missfbi4prepp1')
                                DrawMarker(2, DeliveryData.coords.x, DeliveryData.coords.y, DeliveryData.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 255, 55, 22, 255, false, false, false, false, false, false, false)
                                if not OnAnimation then
                                    if CanTakeBag then
                                        if Distance < 1.5 then
                                            DrawText3D2(DeliveryData.coords, "~g~E~w~ - Grab a garbage bag")
                                            if IsControlJustPressed(0, 51) then
                                                if AmountOfBags == 0 then
                                                    AmountOfBags = math.random(3, 6)
                                                end 
                                                OnAnimation = true
                                                TakeAnim()
                                            end
                                        elseif Distance < 10 then
                                            DrawText3D2(DeliveryData.coords, "Stand here to grab garbage bag.")
                                        end
                                    end
                                else
                                    if DoesEntityExist(GarbageVehicle) then
                                        if Distance < 10 then
                                            DrawText3D2(DeliveryData.coords, "Put the bag in your truck..")
                                        end

                                        local Coords = GetOffsetFromEntityInWorldCoords(GarbageVehicle, 0.0, -4.5, 0.0)
                                        local TruckDist = GetDistanceBetweenCoords(pos, Coords.x, Coords.y, Coords.z, true)

                                        if TruckDist < 2 then
                                            DrawText3D(Coords.x, Coords.y, Coords.z, "~g~E~w~ - Push garbage bag")
                                            if IsControlJustPressed(0, 51) then
                                                OnAnimation = false
                                                local AmountOfLocations = #Config.Locations["grabs"]
                                                if (AmountOfBags - 1) == 0 then
                                                    Earnings = Earnings + math.random(20, 60)
                                                    if (GarbageLocation + 1) <= AmountOfLocations then
                                                        GarbageLocation = GarbageLocation + 1
                                                        SetGarbageRoute()
                                                        TriggerEvent('notification', "All garbage bags are done, move on to the next location!")
                                                    else
                                                        TriggerEvent('notification', "You are done working! Go back to the dump.")
                                                        IsWorking = false
                                                        RemoveBlip(DeliveryBlip)
                                                        SetRouteBack()
                                                    end
                                                    AmountOfBags = 0
                                                    OnAnimation = false
                                                else
                                                    AmountOfBags = AmountOfBags - 1
                                                    if AmountOfBags > 1 then
                                                        TriggerEvent('notification', "There are still "..AmountOfBags.." bags left!")
                                                    else
                                                        TriggerEvent('notification', "There still is "..AmountOfBags.." bag over!")
                                                    end
                                                    OnAnimation = false
                                                end
                                                DeliverAnim()
                                            end
                                        elseif TruckDist < 10 then
                                            DrawText3D(Coords.x, Coords.y, Coords.z, "Stand here ..")
                                        end
                                    else
                                        DrawText3D2(DeliveryData.coords, "You don't have a truck..")
                                    end
                                end
                            end
                        end
                    end
                end
        end

        if not IsWorking then
            Citizen.Wait(1000)
        end

        Citizen.Wait(1)
    end
end)

function SetGarbageRoute()
    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords(ped)
    local CurrentLocation = Config.Locations["grabs"][GarbageLocation]

    if DeliveryBlip ~= nil then
        RemoveBlip(DeliveryBlip)
    end

    DeliveryBlip = AddBlipForCoord(CurrentLocation.coords.x, CurrentLocation.coords.y, CurrentLocation.coords.z)
    SetBlipSprite(DeliveryBlip, 1)
    SetBlipDisplay(DeliveryBlip, 2)
    SetBlipScale(DeliveryBlip, 1.0)
    SetBlipAsShortRange(DeliveryBlip, false)
    SetBlipColour(DeliveryBlip, 27)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["grabs"][GarbageLocation].name)
    EndTextCommandSetBlipName(DeliveryBlip)
    SetBlipRoute(DeliveryBlip, true)
end

function SetRouteBack()
    local ped = GetPlayerPed(-1)
    local pos = GetEntityCoords(ped)
    local inleverpunt = Config.Locations["vehicle"]

    EndBlip = AddBlipForCoord(inleverpunt.coords.x, inleverpunt.coords.y, inleverpunt.coords.z)
    SetBlipSprite(EndBlip, 1)
    SetBlipDisplay(EndBlip, 2)
    SetBlipScale(EndBlip, 1.0)
    SetBlipAsShortRange(EndBlip, false)
    SetBlipColour(EndBlip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.Locations["vehicle"].name)
    EndTextCommandSetBlipName(EndBlip)
    SetBlipRoute(EndBlip, true)
end

function TakeAnim()
    local ped = GetPlayerPed(-1)

    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
    GarbageObject = CreateObject(GetHashKey("prop_cs_rub_binbag_01"), 0, 0, 0, true, true, true)
    AttachEntityToEntity(GarbageObject, ped, GetPedBoneIndex(ped, 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)

    AnimCheck()
end

function AnimCheck()
    Citizen.CreateThread(function()
        while true do
            local ped = GetPlayerPed(-1)

            if OnAnimation then
                if not IsEntityPlayingAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 3) then
                    ClearPedTasksImmediately(ped)
                    LoadAnimation('missfbi4prepp1')
                    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                end
            else
                break
            end

            Citizen.Wait(200)
        end
    end)
end

function DeliverAnim()
    local ped = GetPlayerPed(-1)

    LoadAnimation('missfbi4prepp1')
    TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
    FreezeEntityPosition(ped, true)
    SetEntityHeading(ped, GetEntityHeading(GarbageVehicle))
    CanTakeBag = false

    SetTimeout(1250, function()
        DetachEntity(GarbageObject, 1, false)
        DeleteObject(GarbageObject)
        TaskPlayAnim(ped, 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
        FreezeEntityPosition(ped, false)
        GarbageObject = nil
        CanTakeBag = true
    end)
end

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        if GarbageObject ~= nil then
            DeleteEntity(GarbageObject)
            GarbageObject = nil
        end
    end
end)