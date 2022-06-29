ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('esx_deliverjob:add')
AddEventHandler('esx_deliverjob:add', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)

	if type == 'money' then
		xPlayer.addMoney(amount)
		local society = (amount / 100)*15 
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_taco', function(account)
			account.addMoney(society)
		end)
	elseif type == 'item' then
		xPlayer.addInventoryItem(name, amount)
	end
end)

RegisterServerEvent('esx_deliverjob:remove')
AddEventHandler('esx_deliverjob:remove', function(type, amount, name)
	local xPlayer  = ESX.GetPlayerFromId(source)

	if type == 'money' then
		xPlayer.removeMoney(amount)
	elseif type == 'item' then
		xPlayer.removeInventoryItem(name, amount)
	end
end)

RegisterServerEvent('esx_deliverjob:check')
AddEventHandler('esx_deliverjob:check', function()
	local xPlayer  = ESX.GetPlayerFromId(source)
	local item = xPlayer.getInventoryItem(Config.Item).count
	local b = false
	if item > 0 then
		b = true
	end
	TriggerClientEvent('esx_deliverjob:sentitem', b)
end)

ESX.RegisterServerCallback('esx_deliverjob:getPlayers', function(source,callback)
	local players = ESX.GetPlayers()
	callback(#players)
end)
