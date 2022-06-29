ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('ron:repairPrice', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.repairPrice then
		xPlayer.removeMoney(Config.repairPrice)
		cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('ron:washPrice', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() >= Config.washPrice then
		xPlayer.removeMoney(Config.washPrice)
		cb(true)
	else
		cb(false)
	end
end)