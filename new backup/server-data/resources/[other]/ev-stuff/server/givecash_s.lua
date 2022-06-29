ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("givecash", function(source, args, rawCommand)
	local _source = source
	local id = tonumber(args[1])
	local amount = tonumber(args[2])

	if id and amount then
		local xPlayer = ESX.GetPlayerFromId(_source)
		local xGetter = ESX.GetPlayerFromId(id)

		if xPlayer and xGetter then
			if xPlayer.getMoney() >= amount then
				xPlayer.removeMoney(amount)
				TriggerClientEvent('notification', _source, 'You gave ' .. tostring(amount) .. '$ to ID ' .. tostring(id), 1)
				TriggerClientEvent('givecash:server', source)
				xGetter.addMoney(amount)
				TriggerClientEvent('notification', id,'You recived ' .. tostring(amount) .. '$ from ID ' .. _source, 1)
			else
				TriggerClientEvent('notification', _source,'You dont have enough money on you', 2)
			end
		else
			TriggerClientEvent('notification', _source,'Wrong ID', 2)
		end
	else
		TriggerClientEvent('notification', _source,'Usage /givecash [ID] [AMOUNT]', 2)
	end
end,false)

RegisterCommand("giveblack", function(source, args, rawCommand)
	local _source = source
	local id = tonumber(args[1])
	local amount = tonumber(args[2])

	if id and amount then
		local xPlayer = ESX.GetPlayerFromId(_source)
		local xGetter = ESX.GetPlayerFromId(id)

		if xPlayer and xGetter then
			if xPlayer.getAccount('black_money').money >= amount then
				xPlayer.removeAccountMoney('black_money', amount)
				TriggerClientEvent('notification', _source, 'You gave ' .. tostring(amount) .. '$ Black Money to ID ' .. tostring(id), 1)
				TriggerClientEvent('givecash:server', source)
				xGetter.addAccountMoney('black_money', amount)
				TriggerClientEvent('notification', id,'You recived ' .. tostring(amount) .. '$ Black Money from ID ' .. _source, 1)
			else
				TriggerClientEvent('notification', _source,'You dont have enough Black Money on you', 2)
			end
		else
			TriggerClientEvent('notification', _source,'Wrong ID', 2)
		end
	else
		TriggerClientEvent('notification', _source,'Usage /giveblack [ID] [AMOUNT]', 2)
	end
end,false)