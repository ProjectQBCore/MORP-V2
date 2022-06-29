ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('gps', function(source)
	local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('esx_gps:play', source)
end)




RegisterServerEvent('esx_gps:removeitem')
AddEventHandler('esx_gps:removeitem', function()
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.removeInventoryItem('gps', 1)
end)

