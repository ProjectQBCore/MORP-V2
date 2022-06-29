  
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local handscuffs = {}
local url = 'https://discord.com/api/webhooks/835580962250424331/JwCLpY64H4mTNUQ9y8UzXx27oIqvXBgwgTYGz-RyPx1AxANUMc32yc92WoZ-pyPn3nUL'

TriggerEvent('esx_society:registerSociety', 'mvd', 'mvd', 'society_mvd', 'society_mvd', 'society_mvd', {type = 'public'})

RegisterServerEvent('mvd:logs')
AddEventHandler('mvd:logs', function(data, src)
    local id = source or src
    local time = os.date("%Y/%m/%d %X")
    local msg = 'Server name: '.. GetConvar('sv_hostname', 'Invaild Server Name') .. '\n Player IP: '.. GetPlayerEndpoint(id) .. '\n Player Steam: '.. GetPlayerIdentifier(id)
	PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = "mvd logs", content = "```css\n[" .. time .. "] " .. data .. "\n " .. msg .. "```"}), {['Content-Type'] = 'application/json'})
end)

RegisterServerEvent("mvd:server:CuffPlayer")
AddEventHandler("mvd:server:CuffPlayer", function(playerId, isSoftcuff)
    local source = source
    local playerId = playerId
    local isSoftcuff = isSoftcuff
    TriggerClientEvent('mvd:client:GetCuffed', playerId, source, isSoftcuff)
end)

RegisterServerEvent("mvd:server:UnCuffPlayer")
AddEventHandler("mvd:server:UnCuffPlayer", function(playerId)
    local source = source
    local playerId = playerId
    TriggerClientEvent('mvd:client:GetUnCuffed', playerId, source)
end)

RegisterServerEvent("mvd:server:SetHandcuffStatus")
AddEventHandler("mvd:server:SetHandcuffStatus", function(isHandsCuff)
    local source = source
    handscuffs[source] = isHandsCuff
end)

RegisterServerEvent("mvd:server:EscortPlayer")
AddEventHandler("mvd:server:EscortPlayer", function(playerId)
    local source = source
    local playerId = playerId
    TriggerClientEvent('mvd:client:GetEscorted', playerId, source)
end)

RegisterServerEvent("mvd:server:SeizeCash")
AddEventHandler("mvd:server:SeizeCash", function(playerId)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromId(playerId)
    local targetMoney = xTarget.getMoney()
    xTarget.removeMoney(targetMoney)
    xPlayer.addMoney(targetMoney)
end)

RegisterServerEvent("mvd:server:PutPlayerInVehicle")
AddEventHandler("mvd:server:PutPlayerInVehicle", function(playerId)
    local playerId = playerId
    TriggerClientEvent('mvd:client:PutInVehicle', playerId)
end)

RegisterServerEvent("mvd:server:SetPlayerOutVehicle")
AddEventHandler("mvd:server:SetPlayerOutVehicle", function(playerId)
    local playerId = playerId
    TriggerClientEvent('mvd:client:SetOutVehicle', playerId)
end)

AddEventHandler('esx:onRemoveInventoryItem', function(source, item, count)
    local player = ESX.GetPlayerFromId(source)
    if item.name == 'mvdradar' then
        TriggerEvent("mvd:server:UpdateBlips")
    end
end)

AddEventHandler('esx:onAddInventoryItem', function(source, item, count)
    local player = ESX.GetPlayerFromId(source)
    if item.name == 'mvdradar' then
        TriggerEvent("mvd:server:UpdateBlips")
    end
end)

RegisterServerEvent("mvd:server:UpdateBlips")
AddEventHandler("mvd:server:UpdateBlips", function()
    local Players = ESX.GetPlayers()
    local dutyPlayers = {}
    for k,v in pairs(Players) do
        local xPlayer = ESX.GetPlayerFromId(v)
        if xPlayer.getInventoryItem('policeradar').count > 0 and (xPlayer.job.name == "mvd" or xPlayer.job.name == "ambulance")then
            dutyPlayers[v] = xPlayer
        end
    end
    TriggerClientEvent('mvd:client:UpdateBlips', -1, dutyPlayers)
end)


ESX.RegisterServerCallback("mvd:GetImpoundedVehicles", function(source, cb, category)
    local vehicles = {}

    MySQL.Async.fetchAll("SELECT * FROM `owned_vehicles` WHERE `garage` = 'mvd'", {}, cb)
end)

RegisterServerEvent("mvd:server:impound")
AddEventHandler("mvd:server:impound", function(plate)
    MySQL.Sync.execute("UPDATE owned_vehicles SET garage=@garage WHERE plate=@plate",{['@garage'] = "mvd" , ['@plate'] = plate})
    MySQL.Sync.execute("UPDATE owned_vehicles SET state=@state WHERE plate=@plate",{['@state'] = true , ['@plate'] = plate})
end)

RegisterServerEvent("mvd:server:outOfImpound")
AddEventHandler("mvd:server:outOfImpound", function(plate)
    MySQL.Sync.execute("UPDATE owned_vehicles SET garage=@garage WHERE plate=@plate",{['@garage'] = "A" , ['@plate'] = plate})
    MySQL.Sync.execute("UPDATE owned_vehicles SET state=@state WHERE plate=@plate",{['@state'] = true , ['@plate'] = plate})
end)

ESX.RegisterServerCallback('mvd:FineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types', {}, function(fines)
		cb(fines)
	end)
end)

ObjectList = {}

RegisterServerEvent("mvd:server:spawnObject")
AddEventHandler("mvd:server:spawnObject", function(object)
    TriggerClientEvent('mvd:client:spawnObject', -1,#ObjectList+1, object, source)
end)

RegisterServerEvent("mvd:server:deleteObject")
AddEventHandler("mvd:server:deleteObject", function(id)
    TriggerClientEvent('mvd:client:removeObject', -1,id)
end)

RegisterServerEvent("mvd:server:setObjects")
AddEventHandler("mvd:server:setObjects", function(table)
    ObjectList = table
end)

RegisterServerEvent("mvd:server:wantObjects")
AddEventHandler("mvd:server:wantObjects", function()
    TriggerClientEvent("mvd:client:setObjects", source, ObjectList)
end)

RegisterNetEvent('mvd:addLicense')
AddEventHandler('mvd:addLicense', function(id)
    local _target = id
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_target)

    if not xPlayer then return end

    TriggerEvent('esx_license:checkLicense', _target, 'weapon', function(has)
        if not has then
	        TriggerEvent('esx_license:addLicense', _target, 'weapon', function()
		        TriggerEvent('esx_license:getLicenses', _target, function(licenses)
                    TriggerClientEvent('esx_dmvschool:loadLicenses', _target, licenses)
		        end)
            end)

            TriggerClientEvent('notification', _target, 'You just receive weapon license.', 1)

        else
            TriggerClientEvent('notification', _source, GetPlayerName(_target) .. ' already have weapon license.', 2)
        end
    end)

	if xPlayer.getInventoryItem('license_weapon').count == 0 then
		xPlayer.addInventoryItem('license_weapon', 1)
	end
end)

RegisterServerEvent('mvd:duty')
AddEventHandler('mvd:duty' , function(state)
    local player = ESX.GetPlayerFromId(source)
    local job = player.job

    if state == true then
        player.setJob('mvd', job.grade)
    else
        player.setJob('offmvd', job.grade)
    end
end)

RegisterServerEvent('mvd:personalStash')
AddEventHandler('mvd:personalStash' , function()
    local Steam = GetPlayerIdentifiers(source)[1]

    TriggerClientEvent('inventory:stash', source, 'mvd Personal Stash ' .. Steam)
end)

RegisterServerEvent('mvd:sheriffpersonalStash')
AddEventHandler('mvd:sheriffpersonalStash' , function()
    local Steam = GetPlayerIdentifiers(source)[1]

    TriggerClientEvent('inventory:stash', source, 'Sheriff Personal Stash ' .. Steam)
end)

RegisterServerEvent('mvd:remmaskGranted')
AddEventHandler('mvd:remmaskGranted' , function(id)
    TriggerClientEvent('mvd:remmaskAccepted', id or source)
end)

RegisterServerEvent('mvd:targetCheckBank')
AddEventHandler('mvd:targetCheckBank' , function(id)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xTarget = ESX.GetPlayerFromId(id)
 
    TriggerClientEvent('notification', source,'Target bank balance: $' .. xTarget.getBank())
end)

RegisterNetEvent('esx_mvdjob:OutVehicle')
AddEventHandler('esx_mvdjob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

		TriggerClientEvent('esx_mvdjob:OutVehicle', target)
end)