ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('ron:price', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getBank() >= Config.Price then
		xPlayer.removeBank(Config.Price)
		cb(true)
	else
		cb(false)
	end
end)