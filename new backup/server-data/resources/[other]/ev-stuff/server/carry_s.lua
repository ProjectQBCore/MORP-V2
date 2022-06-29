ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('carryped', function(source)
    TriggerClientEvent("carryAI", source)
end)

RegisterCommand('carry', function(source)
    TriggerClientEvent('carry:command', source)
end)

RegisterServerEvent('carry:sync')
AddEventHandler('carry:sync', function(target)
	TriggerClientEvent('carry:syncTarget', target, source)
	TriggerClientEvent('carry:syncMe', source)
end)

RegisterServerEvent('carry:stop')
AddEventHandler('carry:stop', function(target)
	TriggerClientEvent('carry:stop', target)
end)
