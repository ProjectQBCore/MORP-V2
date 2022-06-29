local rob = false
local robbers = {}
PlayersCrafting    = {}
local CopsConnected  = 0
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

RegisterServerEvent('esx_vangelico_robbery:toofar')
AddEventHandler('esx_vangelico_robbery:toofar', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at') .. Stores[robb].nameofstore)
			TriggerClientEvent('esx_vangelico_robbery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx_vangelico_robbery:toofarlocal', source)
		robbers[source] = nil
		TriggerClientEvent('notification', source, _U('robbery_has_cancelled') .. Stores[robb].nameofstore)
	end
end)

RegisterServerEvent('esx_vangelico_robbery:endrob')
AddEventHandler('esx_vangelico_robbery:endrob', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('notification', xPlayers[i], _U('end'))
			TriggerClientEvent('esx_vangelico_robbery:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('esx_vangelico_robbery:robberycomplete', source)
		robbers[source] = nil
		TriggerClientEvent('notification', source, _U('robbery_has_ended') .. Stores[robb].nameofstore)
	end
end)

RegisterServerEvent('esx_vangelico_robbery:rob')
AddEventHandler('esx_vangelico_robbery:rob', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()
	
	if Stores[robb] then

		local store = Stores[robb]

		if (os.time() - store.lastrobbed) < Config.SecBetwNextRob and store.lastrobbed ~= 0 then

            TriggerClientEvent('esx_vangelico_robbery:togliblip', source)
			TriggerClientEvent('notification', source, _U('already_robbed') .. (Config.SecBetwNextRob - (os.time() - store.lastrobbed)) .. _U('seconds'))
			return
		end

		if rob == false then

			rob = true
			for i=1, #xPlayers, 1 do
				local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
				if xPlayer.job.name == 'police' then
					--TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. store.nameofstore)
					TriggerEvent('notification', _U('rob_in_prog') .. store.nameofstore)
					TriggerClientEvent('esx_vangelico_robbery:setblip', xPlayers[i], Stores[robb].position)
				end
			end

			TriggerClientEvent('notification', source, _U('started_to_rob') .. store.nameofstore .. _U('do_not_move'))
			TriggerClientEvent('notification', source, _U('alarm_triggered'))
			TriggerClientEvent('notification', source, _U('hold_pos'))
			TriggerClientEvent('esx_vangelico_robbery:currentlyrobbing', source, robb)
            CancelEvent()
			Stores[robb].lastrobbed = os.time()
		else
			TriggerClientEvent('notification', source, _U('robbery_already'))
		end
	end
end)

RegisterServerEvent('esx_vangelico_robbery:gioielli')
AddEventHandler('esx_vangelico_robbery:gioielli', function()
local random = math.random(1, 9)
	local xPlayer = ESX.GetPlayerFromId(source)

	if random == 1 then
	xPlayer.addInventoryItem('2ct_gold_chain', math.random(Config.MinJewels, Config.MaxJewels))
elseif random == 2 then
	xPlayer.addInventoryItem('2ct_gold_chain', math.random(Config.MinJewels, Config.MaxJewels))
elseif random == 3 then
	xPlayer.addInventoryItem('2ct_gold_chain', math.random(Config.MinJewels, Config.MaxJewels))
	elseif random == 4 then
		xPlayer.addInventoryItem('5ct_gold_chain', math.random(Config.MinJewels, Config.MaxJewels))
	elseif random == 5 then
		xPlayer.addInventoryItem('5ct_gold_chain', math.random(Config.MinJewels, Config.MaxJewels))
	elseif random == 6 then
		xPlayer.addInventoryItem('8ct_gold_chain', 1)
	elseif random == 7 then
		xPlayer.addInventoryItem('white_pearl', math.random(6, 10))
	elseif random == 8 then
		xPlayer.addInventoryItem('pearl_necklace', math.random(3, 5))
	elseif random == 9 then
		xPlayer.addInventoryItem('ring', math.random(5, 10))
	end
end)

ESX.RegisterServerCallback('esx_vangelico_robbery:conteggio', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(CopsConnected)
end)

