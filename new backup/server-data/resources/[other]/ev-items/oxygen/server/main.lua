ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- Oxygen Mask
ESX.RegisterUsableItem('oxygen', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)

	TriggerClientEvent('oxygenmask:start', source)
	xPlayer.removeInventoryItem('oxygen', 1)
end)
