ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('drugs:removeItem')
AddEventHandler('drugs:removeItem', function(item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(item, count)
end)

RegisterServerEvent('drugs:addItem')
AddEventHandler('drugs:addItem', function(item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem(item, count)
end)


ESX.RegisterUsableItem('joint2g', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('joint2g',1)
	TriggerClientEvent('use:joint', source)
end)

ESX.RegisterUsableItem('oxy', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxy',1)
	TriggerClientEvent('use:oxy', source)
end)

ESX.RegisterUsableItem('coke1g', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('coke1g',1)
	TriggerClientEvent('use:cocaine', source)
end)

--ESX.RegisterUsableItem('cocaine_packaged', function(source)
	--local xPlayer = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('cocaine_packaged',1)
	--TriggerClientEvent('drugs:cocaine_packaged', source)
--end)

--ESX.RegisterUsableItem('meth_packaged', function(source)
--	local xPlayer = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('meth_packaged',1)
--	TriggerClientEvent('use:meth', source)
--end)

--ESX.RegisterUsableItem('weed_packaged', function(source)
--	local xPlayer = ESX.GetPlayerFromId(source)
--	if xPlayer.getInventoryItem('rollingpaper').count > 0 then
--		xPlayer.removeInventoryItem('weed_packaged',1)
--		xPlayer.removeInventoryItem('rollingpaper',1)
--		TriggerClientEvent('drugs:weed_packaged', source)
--	else
--		TriggerClientEvent('notification', source, "You dont have any rolling paper.", 2)
--	end
--end)
