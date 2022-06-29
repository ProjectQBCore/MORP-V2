ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('lockpick', function(source)
    TriggerClientEvent('lockpick:use', source)
end)

RegisterServerEvent('ev-lockpick:server:remove')
AddEventHandler('ev-lockpick:server:remove', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('lockpick', 1)
end)
