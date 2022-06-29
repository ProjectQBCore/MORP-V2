ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


TriggerEvent('esx_society:registerSociety', 'taco', 'taco', 'society_taco', 'society_taco', 'society_taco', {type = 'public'})

RegisterNetEvent('esx_taco:giveitem')
AddEventHandler('esx_taco:giveitem', function(item, amount)
	local XPlayer = ESX.GetPlayerFromId(source)
	XPlayer.addInventoryItem(item, amount)
end)
