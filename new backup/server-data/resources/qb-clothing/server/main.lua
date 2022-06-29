ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Code

--[[RegisterCommand('skin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" or xPlayer.getGroup() == "mod" then
	TriggerClientEvent("qb-clothing:client:openMenu", source)
	end
end) --]]


RegisterServerEvent("qb-clothing:saveSkin")
AddEventHandler('qb-clothing:saveSkin', function(model, skin)
    local src = source
    local user = ESX.GetPlayerFromId(src)
    local characterId = user.identifier
    
        MySQL.Async.execute('DELETE FROM playerskins WHERE identifier = @identifier', {['@identifier'] = characterId})
            Wait(200)
            MySQL.Async.execute("INSERT INTO playerskins (identifier, model, skin) VALUES (@identifier, @model, @skin)",{['@identifier'] = characterId, ['@model'] = model, ['@skin'] = skin })
    
end)

RegisterServerEvent("qb-clothes:loadPlayerSkin")
AddEventHandler('qb-clothes:loadPlayerSkin', function()
    local src = source
    local user = ESX.GetPlayerFromId(src)
    local characterId = user.identifier
    MySQL.Async.fetchAll("SELECT * FROM playerskins WHERE identifier = @identifier ", {
        ['@identifier'] = characterId
    },function(result)
        if result[1] ~= nil then
            TriggerClientEvent("qb-clothes:loadSkin", src, false, result[1].model, result[1].skin)
        else
            TriggerClientEvent("qb-clothes:loadSkin", src, true)
        end
    end)
end)

RegisterServerEvent("qb-clothes:saveOutfit")
AddEventHandler("qb-clothes:saveOutfit", function(outfitName, model, skinData)
    local src = source
    local user = ESX.GetPlayerFromId(src)
    local characterId = user.identifier
    if model ~= nil and skinData ~= nil then
        local outfitId = "outfit-"..math.random(1, 10).."-"..math.random(1111, 9999)
        MySQL.Async.execute( "INSERT INTO player_outfits (identifier, outfitname, model, skin, outfitId) VALUES (@identifier, @outfitname, @model, @skin, @outfitId)",{['@identifier'] = characterId, ['@outfitname'] = outfitName, ['@model'] = model, ['@skin'] = json.encode(skinData), ['@outfitId'] = outfitId })
            MySQL.Async.fetchAll( "SELECT * FROM player_outfits WHERE identifier = @identifier ", {
                ['@identifier'] = characterId
            },function(result)
                if result[1] ~= nil then
                    TriggerClientEvent('qb-clothing:client:reloadOutfits', src, result)
                else
                    TriggerClientEvent('qb-clothing:client:reloadOutfits', src, nil)
                end
            end)
    end 
end)

RegisterServerEvent("qb-clothing:server:removeOutfit")
AddEventHandler("qb-clothing:server:removeOutfit", function(outfitName, outfitId)
    local src = source
    local user = ESX.GetPlayerFromId(src)
    local characterId = user.identifier

    MySQL.Async.execute("DELETE FROM `player_outfits` WHERE identifier = identifier AND `outfitname` = '"..outfitName.."' AND `outfitId` = '"..outfitId.."'")
    Wait(200)
    MySQL.Async.fetchAll("SELECT * FROM player_outfits WHERE identifier = @identifier ", {
        ['@identifier'] = characterId
    },function(result)
            if result[1] ~= nil then
                TriggerClientEvent('qb-clothing:client:reloadOutfits', src, result)
            else
                TriggerClientEvent('qb-clothing:client:reloadOutfits', src, nil)
            end
        end)

end)

ESX.RegisterServerCallback('qb-clothing:server:getOutfits', function(source, cb)
    local src = source
    local user = ESX.GetPlayerFromId(src)
    local characterId = user.identifier
    local anusVal = {}

    MySQL.Async.fetchAll( "SELECT * FROM player_outfits WHERE identifier = @identifier ", {
        ['@identifier'] = characterId
    },function(result)
        if result[1] ~= nil then
            for k, v in pairs(result) do
                result[k].skin = json.decode(result[k].skin)
                anusVal[k] = v
            end
            cb(anusVal)
        end
        cb(anusVal)
    end)
end)

RegisterServerEvent('qb-clothing:print')
AddEventHandler('qb-clothing:print', function(data)
    print(data)
end)

RegisterCommand("helm", function(source, args)
    TriggerClientEvent("qb-clothing:client:adjustfacewear", source, 1) -- Hat
end)

RegisterCommand("glasses", function(source, args)
	TriggerClientEvent("qb-clothing:client:adjustfacewear", source, 2)
end)

RegisterCommand("mask", function(source, args)
	TriggerClientEvent("qb-clothing:client:adjustfacewear", source, 4)
end)