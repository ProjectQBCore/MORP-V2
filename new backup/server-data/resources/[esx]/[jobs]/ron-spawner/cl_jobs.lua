ESX = nil

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(0)
    end
    
    while ESX.PlayerData.job == nil do
		Wait(10)
    end
    
    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

CreateThread(function()
    local waitTime = 250
    while true do
        if ESX then
            for _,job in pairs(Config.Jobs) do
                if ESX.PlayerData and ESX.PlayerData.job.name == job.name then
                    waitTime = 1000
                    local ped = PlayerPedId()
                    for i,spawn in pairs(job.spawns) do
                        local dist = Vdist2(GetEntityCoords(ped),spawn.pos)
                        if dist < spawn.dist and (spawn.needVehicle and IsPedInAnyVehicle(PlayerPedId()) or not spawn.needVehicle) then
                            waitTime = 0
                            DrawText3Ds(spawn.pos.x,spawn.pos.y,spawn.pos.z,spawn.info)
                            if dist < 2 and IsControlJustPressed(0,38) then
                                Menu(i,job)
                            end
                        end
                    end
                end
            end
        else
            Wait(1000)
        end
        Wait(waitTime)
    end
end)



function Menu(type,job)
    if type == 1 then
        ESX.UI.Menu.CloseAll()
        local Cars = {}
        for i , v in ipairs(job.vehicles) do
            local table = {label = v.label, value = v.value}
            Cars[i] = table
        end
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'car_menu', 
        {
            title = 'Car Spawn Menu',
            align = 'top-left',
            elements = Cars
        }, function(data, menu)

            local x,y,z,h = nil
            for i,spawn in pairs(job.spawns) do
                if not spawn.needVehicle then
                    x,y,z,h = table.unpack(spawn.spawnCoords)
                end
            end

            local hashKey = GetHashKey(data.current.value)
            RequestModel(hashKey)
            while not HasModelLoaded(hashKey) do Wait(1) end

            local veh = CreateVehicle(hashKey,x,y,z,h,true,false)
            local plate = GetVehicleNumberPlateText(veh)
			TriggerServerEvent('garage:addKeys', plate)
            TaskWarpPedIntoVehicle(PlayerPedId(),veh,-1)

            SetVehicleCustomPrimaryColour(veh, job.color.r, job.color.g, job.color.b)
            SetVehicleCustomSecondaryColour(veh, job.color.r, job.color.g, job.color.b)
            ESX.UI.Menu.CloseAll()
        end,function(data, menu)
            menu.close()
        end)
    else
        if IsPedInAnyVehicle(PlayerPedId()) then
            local vehicles = ESX.Game.GetVehiclesInArea(GetEntityCoords(PlayerPedId()), 2.0)
            if #vehicles > 0 then
                for k,v in ipairs(vehicles) do
                    ESX.Game.DeleteVehicle(v)
                end
            end
        end
    end
end

-- function Menu(type,job)
--     if type == 1 then
--         local Cars = {}
--         for i , v in ipairs(job.vehicles) do
--             local table = {label = v.label, value = v.value}
--             Cars[i] = table
--         end
--         SetNuiFocus(true, true)
--         SendNUIMessage({data = Cars,job=job,action = "open"})
--     else
--         if IsPedInAnyVehicle(PlayerPedId()) then
--             local vehicles = ESX.Game.GetVehiclesInArea(GetEntityCoords(PlayerPedId()), 2.0)
--             if #vehicles > 0 then
--                 for k,v in ipairs(vehicles) do
--                     ESX.Game.DeleteVehicle(v)
--                 end
--             end
--         end
--     end
-- end

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



RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false,false)
end)


RegisterNUICallback('spawn', function(data, cb)
    local x,y,z,h = nil
    for i,spawn in pairs(data.job.spawns) do
        if not spawn.needVehicle then
            x,y,z,h = table.unpack(spawn.spawnCoords)
        end
    end

    local hashKey = GetHashKey(data["model"])
    RequestModel(hashKey)
    while not HasModelLoaded(hashKey) do Wait(1) end

    local veh = CreateVehicle(hashKey,x,y,z,h,true,false)
    local plate = GetVehicleNumberPlateText(veh)
    TriggerServerEvent('garage:addKeys', plate)
    TaskWarpPedIntoVehicle(PlayerPedId(),veh,-1)

    SetVehicleCustomPrimaryColour(veh, data.job.color.r, data.job.color.g, data.job.color.b)
    SetVehicleCustomSecondaryColour(veh, data.job.color.r, data.job.color.g, data.job.color.b)
    SetNuiFocus(false,false)
end)