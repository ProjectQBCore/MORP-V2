
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('get:itemcas')
AddEventHandler('get:itemcas', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("weaponcrate", 1)
		

end)

RegisterServerEvent('get:itemcas2')
AddEventHandler('get:itemcas2', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("bankccard", 1)
		

end)

RegisterServerEvent('get:thinglol')
AddEventHandler('get:thinglol', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("cashp", 1)
		

end)

RegisterServerEvent('get:thinglollmao')
AddEventHandler('get:thinglollmao', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.addInventoryItem("gold_biscuit", 1)
		

end)


RegisterServerEvent('get:part1done')
AddEventHandler('get:part1done', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local count = "1"

    if xPlayer.getInventoryItem('weaponcrate').count > 0 then

		TriggerClientEvent('getpart1:done', source)

	else
		TriggerClientEvent('getpart1:fail1', source)
		
	end

end)


RegisterServerEvent('get:part2done')
AddEventHandler('get:part2done', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local count = "1"

    if xPlayer.getInventoryItem('bankccard').count > 0 then

		TriggerClientEvent('getpart2:done', source)

	else
		TriggerClientEvent('getpart2:fail2', source)
		

	end

end)



RegisterServerEvent('get:starthiest')
AddEventHandler('get:starthiest', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local count = "1"

    if xPlayer.getInventoryItem('weaponcrate').count > 0 and xPlayer.getInventoryItem('bankccard').count > 0 then

		TriggerClientEvent('starthiestmy:god', source)

	else

		TriggerClientEvent('getpart2:fail3', source)
	
	end

end)






RegisterServerEvent('get:alllllllll')
AddEventHandler('get:alllllllll', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local count = "1"

    if xPlayer.getInventoryItem('bankccard').count > 0 then

		TriggerClientEvent('lmao:cantwait', source)

	else

		
	end

end)




RegisterServerEvent('get:moneycsh')
AddEventHandler('get:moneycsh', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem("cashp", 88)
	xPlayer.removeInventoryItem("gold_biscuit", 88)

	xPlayer.addMoney(150000)
		

end)



RegisterServerEvent('get:thingsback')
AddEventHandler('get:thingsback', function(cbbe)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem("bankccard", 1)
	xPlayer.removeInventoryItem("weaponcrate", 1)

		

end)