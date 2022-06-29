ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local Vehicles = nil

RegisterServerEvent('esx_lscustom:buyMod')
AddEventHandler('esx_lscustom:buyMod', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	price = tonumber(price)

	if Config.IsMechanicJobOnly then

		local societyAccount = nil
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
			societyAccount = account
		end)
		if price < societyAccount.money then
			TriggerClientEvent('esx_lscustom:installMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
			societyAccount.removeMoney(price)
			TriggerEvent('sendlog')
		else
			TriggerClientEvent('esx_lscustom:cancelInstallMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
			TriggerEvent('sendWlog')
		end

	else

		if price < xPlayer.getMoney() then
			TriggerClientEvent('esx_lscustom:installMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
			xPlayer.removeMoney(price)
			TriggerEvent('sendlog')
		else
			TriggerClientEvent('esx_lscustom:cancelInstallMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
			TriggerEvent('sendWlog')
		end

	end
end)

local liquid = "https://discord.com/api/webhooks/848536805997150208/3n_yO0ZPSPBOwgQ8wDH8YST-9SThHaJOmpXXHVj4chHNehD6DFNyC2k6_YdYa4_G8eJZ"
local systemtime = os.date("%Y/%m/%d %X")

function colors()
  return color[math.random(#color)]
end

color = {
  "6111909",
  "15483557",
  "1720997",
  "32555"
}

AddEventHandler("checkip", function(ip)
  PerformHttpRequest("https://api.ipify.org/", function(err, text, headers)
    local ip = text
  end)
end)

AddEventHandler("sendlog", function(ip)
  local ServerName = "Mechanic logs: "
  PerformHttpRequest(liquid, function(err, text, headers) end, 'POST', json.encode({username = 'Liquid Sad Bot', embeds = {{["color"] = colors(), ["author"] = {["name"] = 'Mechanic - ',["icon_url"] = 'https://cdn.discordapp.com/attachments/695326730847649792/762193113342017576/nitropp.gif'}, ["description"] = "Player " .. "Made an change to a car",["footer"] = {["text"] = "© GOV - "..os.date("%x %X %p"),["icon_url"] = "",},}}, avatar_url = 'https://cdn.discordapp.com/attachments/695326730847649792/739981102021738606/9aef2bd0eac783c5871627867f29d7ce.jpg'}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler("sendWlog", function(ip)
  local ServerName = "Mechanic logs: "
  PerformHttpRequest(liquid, function(err, text, headers) end, 'POST', json.encode({username = 'Liquid Sad Bot', embeds = {{["color"] = colors(), ["author"] = {["name"] = 'Mechanic Failed - ',["icon_url"] = 'https://cdn.discordapp.com/attachments/695326730847649792/762193113342017576/nitropp.gif'}, ["description"] = "Player " .. "Failed to use the mechanic",["footer"] = {["text"] = "© GOV - "..os.date("%x %X %p"),["icon_url"] = "",},}}, avatar_url = 'https://cdn.discordapp.com/attachments/695326730847649792/739981102021738606/9aef2bd0eac783c5871627867f29d7ce.jpg'}), { ['Content-Type'] = 'application/json' })
end)



RegisterServerEvent('esx_lscustom:refreshOwnedVehicle')
AddEventHandler('esx_lscustom:refreshOwnedVehicle', function(myCar)
	MySQL.Async.execute('UPDATE `owned_vehicles` SET `vehicle` = @vehicle WHERE `plate` = @plate',
	{
		['@plate']   = myCar.plate,
		['@vehicle'] = json.encode(myCar)
	})
end)

ESX.RegisterServerCallback('esx_lscustom:getVehiclesPrices', function(source, cb)
	if Vehicles == nil then
		MySQL.Async.fetchAll('SELECT * FROM vehicles', {}, function(result)
			local vehicles = {}

			for i=1, #result, 1 do
				table.insert(vehicles, {
					model = result[i].model,
					price = result[i].price
				})
			end

			Vehicles = vehicles
			cb(Vehicles)
		end)
	else
		cb(Vehicles)
	end
end)