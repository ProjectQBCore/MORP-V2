local CopsConnected  = 0
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- EMS Count

function CountCops()
	local xPlayers = ESX.GetPlayers()
	CopsConnected = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'ambulance' then
			CopsConnected = CopsConnected + 1
		end
	end
	SetTimeout(120 * 1000, CountCops)
end

CountCops()
ESX.RegisterServerCallback('adharsh:doctor', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb(CopsConnected)
end)

-- AFK

RegisterServerEvent('afkkick:kickplayer')
AddEventHandler('afkkick:kickplayer', function()
	DropPlayer(source, _U('afk_kicked_message'))
end)

-------------------------------------------------------------------------

RegisterServerEvent('erp-hospital:price')
AddEventHandler('erp-hospital:price', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local price = 1500
	if xPlayer.getMoney() >= price then
		xPlayer.removeMoney(price)
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Amount Paid: ' .. price  ..'$', length = 4000})
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You dont have enough money for your treatment!', length = 4000})
	end
end)