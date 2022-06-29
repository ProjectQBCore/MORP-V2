
-- are we already running a looperino?
local ActiveRun = false

-- Current step of procedure, 0 nothing, 1 moving to location
local CurrentStep = 0

-- run length
local DropOffCount = 0

-- our current drop point
local DropOffLocation =  { ['x'] = -10.81,['y'] = -1828.68,['z'] = 25.4,['h'] = 301.59, ['info'] = ' Grove shop' }

-- loop waiting period, changes to 1 for draw text options.
local waittime = 1000


local WeedVehicle = 0

-- drop marker
local CurrentMarker = 0

-- How many active deliveries we have, if this is 2 we dont require cooking
local DeliveryCounter = 0

-- What item is required to be cooked
local CurrentCookItem = 1

-- milliseconds to swap from cook to delivery
local GracePeriod = 300000

local DropOffMax = 12

local lastDelivery = GetGameTimer() - GracePeriod

local lastCook = GetGameTimer() - GracePeriod

local inkedmoneybagprice = 50000
local markedbillsprice = 350

local rollcount = 10

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

local FoodTable = {
    [1] = { ["id"] = "sushiplate", ["name"] = "Sushi Plate" },
    [2] = { ["id"] = "sushirolls", ["name"] = "Sushi Rolls" },
    [3] = { ["id"] = "onigiri", ["name"] = "Onigiri" },
    [4] = { ["id"] = "fruittartlet", ["name"] = "Fruit Tartlet" },
    [5] = { ["id"] = "veggysalad", ["name"] = "Veggy Salad" },
    [6] = { ["id"] = "slushy", ["name"] = "Slushy" },
    [7] = { ["id"] = "icetea", ["name"] = "Ice Tea" },
}


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
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local plyCoords = GetEntityCoords(PlayerPedId())
        local dist = Vdist(19.68, -1602.41, 29.38, plyCoords)
        if dist > 120.0 then
            Wait(1000)
        else
            local dist2 = Vdist(11.32, -1605.93, 29.4, plyCoords) 
            local dist3 = Vdist(6.18, -1602.35, 29.3,plyCoords)
            local dist4 = Vdist(15.47, -1598.78, 29.38,plyCoords)
            local dist5 = Vdist(9.24,-1604.11, 29.38,plyCoords)


            if dist < 1.5 and not ActiveRun then
                DrawText3Ds(19.68, -1602.41, 29.38, "Press G to deliver Green Sushis for 200$")
                if IsControlJustReleased(1,58) then
                    local lPed = PlayerPedId()
                    RequestAnimDict("mini@repair")
                    Wait(1000)
                    if not IsEntityPlayingAnim(lPed, "mini@repair", "fixing_a_player", 3) then
                        ClearPedSecondaryTask(lPed)
                        TaskPlayAnim(lPed, "mini@repair", "fixing_a_player", 8.0, -8, -1, 16, 0, 0, 0, 0)
                    end                    
                    local finished = exports["taskbar"]:taskBar(15000,"Packaging Sushis")
                    TriggerServerEvent("weed:start")
                    ClearPedTasks(lPed)
                end
            elseif dist2 < 1.5 and not ActiveRun then
                if DeliveryCounter > 0 then
                    DrawText3Ds(11.32, -1605.93, 29.4, "Press G to deliver food.")
                    if IsControlJustReleased(1,58) then

                        --if lastCook+GracePeriod < GetGameTimer() then
                        if true then
                            takeAnim()
                            lastDelivery = GetGameTimer()
                            TriggerEvent('notification', 'Drop off the food delivery, find the location on the GPS')
                            TriggerEvent("taco:successStart")
                            TriggerServerEvent("delivery:status",-1)
                            Wait(1000)
                        else
                            TriggerEvent("notification","You must wait to swap to deliveries! (" .. (lastCook+GracePeriod-GetGameTimer())/1000 .." seconds)")
                        end

                    end
                else
                    DrawText3Ds(11.32, -1605.93, 29.4, "No food required for delivery")
                end
            elseif dist3 < 1.5 then
                DrawText3Ds(6.18, -1602.35, 29.3, "Press G to cancel deliveries")
                if IsControlJustReleased(1,58) then
                    takeAnim()
                    TriggerEvent("notification","Runs reset.")
                    EndRuns()
                    Wait(1000)
                end
            elseif dist4 < 1.5 and not ActiveRun then
                -- DrawText3Ds(15.47, -1598.78, 29.38, "Open inventory to cook here")
            elseif dist5 < 1.5 and not ActiveRun and ESX.PlayerData.job and ESX.PlayerData.job.name == 'taco' then
                if DeliveryCounter == 2 then
                    DrawText3Ds(9.24,-1604.11, 29.38, "We require food to be delivered")
                else
                    DrawText3Ds(9.24,-1604.11, 29.38, "[G] We require a " .. FoodTable[CurrentCookItem]["name"] .. " to be delivered.")
                    if IsControlJustReleased(1,58) then
                        --if lastDelivery+GracePeriod < GetGameTimer() then
                        if true then
                            giveAnim()
                            lastCook = GetGameTimer()
                            SetDelivery(FoodTable[CurrentCookItem]["id"])
                            Wait(1000)
                        else
                            TriggerEvent("notification","You must wait to start prepping food (" .. (lastDelivery+GracePeriod-GetGameTimer())/1000 .." seconds)")
                        end                        
                    end
                end              
            end
        end
    end
end)

function SetDelivery(foodReq)
    if DeliveryCounter ~= 2 then
        ESX.TriggerServerCallback('delivery:hasItem', function(has)
            if has then
               -- TriggerServerEvent("delivery:removeItem",foodReq, 1)
                TriggerServerEvent('delivery:completed', math.random(50,120))
                TriggerServerEvent("delivery:status",1)
            else
                TriggerEvent("notification","You dont have the required food for the delivery!")
            end
        end, foodReq, 1)
    end
    Wait(1000)
end

RegisterNetEvent("delivery:deliverables")
AddEventHandler("delivery:deliverables", function(newCounter,nextItem)
    DeliveryCounter = newCounter
    CurrentCookItem = nextItem
end)

RegisterNetEvent("taco:successStart")
AddEventHandler("taco:successStart", function()
    EndRuns()
    ActiveRun = true
    local toolong = 0

    while ActiveRun do
        Wait(1)
        if CurrentStep == 0 then
            DropOffLocation = DropOffsClose[math.random(#DropOffsClose)]
            BlipCreation()
            CurrentStep = 1
        end
        local plyCoords = GetEntityCoords(PlayerPedId())
        local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
        local distance = Vdist(DropOffLocation["x"],DropOffLocation["y"],DropOffLocation["z"],plyCoords)
        if distance < 45.0 and not inVehicle then
            waittime = 1
            DrawText3Ds(DropOffLocation["x"],DropOffLocation["y"],DropOffLocation["z"],"Press G to drop off package.")
            if IsControlJustReleased(1,58) and ActiveRun and distance < 1.5 then
                AttemptDropOffTaco()
                EndRuns()
            end
        end
        toolong = toolong + 1
        if toolong > 180000 then
            TriggerEvent("notification","Sushi Run timed out!")
            EndRuns()
        end
    end
end)

function AttemptDropOffTaco()
    giveAnim()
    TriggerServerEvent('delivery:payment')
end

function CreateWeedVehicle()

    if DoesEntityExist(WeedVehicle) then

        SetVehicleHasBeenOwnedByPlayer(WeedVehicle,false)
        SetEntityAsNoLongerNeeded(WeedVehicle)
        DeleteEntity(WeedVehicle)
    end

    local car = GetHashKey(carpick[math.random(#carpick)])
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #carspawns do
        local caisseo = GetClosestVehicle(carspawns[i]["x"], carspawns[i]["y"], carspawns[i]["z"], 3.500, 0, 70)
        if not DoesEntityExist(caisseo) then
            spawnpoint = i
        end
    end

    WeedVehicle = CreateVehicle(car, carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], carspawns[spawnpoint]["h"], true, false)
    local plt = GetVehicleNumberPlateText(WeedVehicle)
    TriggerServerEvent("flagcar",plt)
    SetVehicleHasBeenOwnedByPlayer(WeedVehicle,true)
    SetModelAsNoLongerNeeded(car)
    TriggerEvent("keys:received",plt)

    while true do
        Citizen.Wait(1)
         DrawText3Ds(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], "Your Delivery Car (Stolen).")
         if #(GetEntityCoords(PlayerPedId()) - vector3(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"])) < 8.0 then
            return
         end
    end
end

RegisterNetEvent("weed:successStart")
AddEventHandler("weed:successStart", function()

    CreateWeedVehicle()
    StartWeedRun()
    local toolong = 0
    while ActiveRun do
        Wait(waittime)
        if CurrentStep == 0 then
        
            if DropOffCount == DropOffMax or not DoesEntityExist(WeedVehicle) then
                EndRuns()
            end
        
            local veh = GetVehiclePedIsIn(PlayerPedId(),false)
            if WeedVehicle == veh then
                CurrentStep = 1
                waittime = 1000
                if math.random(50) < 25 then
                    DropOffLocation = DropOffs[math.random(#DropOffs)]
                else
                    DropOffLocation = DropOffsClose[math.random(#DropOffsClose)]
                end                
                BlipCreation()
            else
                TriggerEvent("notification","Either return to your drop off vehicle or end your run if you have lost it.")
                Wait(10000)
            end
        
        elseif CurrentStep == 1 then
            local plyCoords = GetEntityCoords(PlayerPedId())
            local inVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
            local distance = Vdist(DropOffLocation["x"],DropOffLocation["y"],DropOffLocation["z"],plyCoords)
            if distance < 30.0 and not inVehicle then
                waittime = 1
                DrawText3Ds(DropOffLocation["x"],DropOffLocation["y"],DropOffLocation["z"],"Press G to drop off package.")
                if IsControlJustReleased(1,58) and ActiveRun and distance < 1.5 then
                    AttemptDropOff()
                end
            else
                waittime = 1000
            end
        else
            waittime = 1000
        end
        
        toolong = toolong + 1
        if toolong > 360000 then
            -- to long wait
        end
    end
end)

function ClearBlips()
    RemoveBlip(CurrentMarker)
    CurrentMarker = 0
end

function BlipCreation()
    ClearBlips()
    CurrentMarker = AddBlipForCoord(DropOffLocation["x"],DropOffLocation["y"],DropOffLocation["z"])
    SetBlipSprite(CurrentMarker, 514)
    SetBlipScale(CurrentMarker, 1.0)
    SetBlipAsShortRange(CurrentMarker, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Drop Off")
    EndTextCommandSetBlipName(CurrentMarker)
end

function StartWeedRun()
    --TriggerServerEvent("delivery:removeItem","weedq", 1)
    ActiveRun = true
end

function EndRuns()
    ClearBlips()
    SetVehicleHasBeenOwnedByPlayer(WeedVehicle,false)
    SetEntityAsNoLongerNeeded(WeedVehicle)

    ActiveRun = false
    waittime = 1000
    CurrentStep = 0
    DropOffCount = 0
    DropOffLocation =  { ['x'] = -10.81,['y'] = -1828.68,['z'] = 25.4,['h'] = 301.59, ['info'] = ' Grove shop' }
    Wait(1000)
    ClearBlips()
end

function WeedTacoTooLong()
    ESX.TriggerServerCallback('delivery:hasItem', function(has)
        if has then
            ClearBlips()
            Wait(60000)
            -- new run
            TriggerEvent("notification","You took too long!")
            DropOffCount = DropOffCount + 1
            CurrentStep = 0        
        else
            TriggerEvent("notification","Run ended as your box is gone!")
            EndRuns()
        end
    end, 'weed4g', 1)    
end

function AttemptDropOff()
    ESX.TriggerServerCallback('delivery:hasItem', function(has)
        if has then
            if math.random(Config.PoliceCallChance) == Config.PoliceCallChance then
            TriggerEvent("civilian:alertPolice",15.0,"Suspicious",0)
            end
            TriggerServerEvent("delivery:removeItem",'weed4g', 1)
            TriggerServerEvent("delivery:addItem",'rollcash', 1)
            TriggerEvent("notification","Drop off success!")
            EndRuns()   
        else
            TriggerEvent("notification","Run ended as your box is gone!")
            EndRuns()
        end
    end, 'weed4g', 1)    
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 0 )
    end
end

function takeAnim()
    loadAnimDict("anim@heists@keycard@") 
    TaskPlayAnim( GetPlayerPed(-1), "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0 )
	SetTimeout(400, function()
		ClearPedTasks(GetPlayerPed(-1))
	end)
end

function giveAnim()
    ClearPedSecondaryTask(PlayerPedId())
    FreezeEntityPosition(PlayerPedId(), true)
    RequestAnimDict("mp_safehouselost@")
    loadAnimDict( "mp_safehouselost@" ) 
    TaskPlayAnim( PlayerPedId(), 'mp_safehouselost@', 'package_dropoff', 8.0, 1.0, -1, 16, 0, 0, 0, 0 )
    while IsEntityPlayingAnim(PlayerPedId(), "mp_safehouselost@', 'package_dropoff", 3) do Citizen.Wait(0); end          
    Citizen.Wait(2500)
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
end
