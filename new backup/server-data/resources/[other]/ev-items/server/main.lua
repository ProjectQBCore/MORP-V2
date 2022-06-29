ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('vest', function(source)
	TriggerClientEvent('heavyVest', source)
end)

ESX.RegisterUsableItem('policevest', function(source)
	TriggerClientEvent('PDheavyVest', source)
end)

ESX.RegisterUsableItem('avrepairkit', function(source)
	TriggerClientEvent('veh:repairing', source, 'advrepairkit')
end)

RegisterServerEvent('RemoveItem')
AddEventHandler('RemoveItem', function(itemID, count, plyID)
	plyID = plyID or source
	local xPlayer = ESX.GetPlayerFromId(plyID)
	count = count or 1
	xPlayer.removeInventoryItem(itemID, count)
end)


ESX.RegisterUsableItem('parachute', function(source)
  TriggerClientEvent('parachute:use', source)
end)

RegisterServerEvent('parachute:remove')
AddEventHandler('parachute:remove',function()
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.removeInventoryItem('parachute', 1)
end)




