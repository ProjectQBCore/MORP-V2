
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('binoculars', function(source)
    TriggerClientEvent('binoculars:Activate', source)
end)
