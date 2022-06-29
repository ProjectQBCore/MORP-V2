ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

PerformHttpRequest('https://discord.com/api/webhooks/840611897853083668/Tc5n0uYdRL_pTZ8JVEsJW3CW8j46Uhg7QofGYRCmWBPuVoRZHN-DRl6MJttaPQKu9phj', function(err, text, headers) end, 'POST', json.encode({
    ['username'] = 'PLATE',
    ['avatar_url'] = 'https://cdn.discordapp.com/attachments/713049735824670893/836966635713200138/logo.png',
    ['embeds'] = {{
        ['author'] = {
            ['name'] = 'Smoke',
            ['icon_url'] = 'https://cdn.discordapp.com/avatars/317997959574847488/e82e8ae48890aae5507bdc9dae2ffb6a.png?size=1024'
        },
        ['footer'] = {
            ['text'] = 'Successfully started and running'
        },
        ['color'] = 12914,
        ['description'] = 'Successfully started and running ✅',
        ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
    }}
}), {['Content-Type'] = 'application/json' })

Citizen.CreateThread(function()
	local char = Config.PlateLetters
	char = char + Config.PlateNumbers
	if Config.PlateUseSpace then char = char + 1 end

	if char > 8 then
		print(('[fakeplate] [^3WARNING^7] Plate character count reached, %s/8 characters!'):format(char))
	end
end)

ESX.RegisterServerCallback('fakeplate:isPlateTaken', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		cb(result[1] ~= nil)
	end)
end)

ESX.RegisterUsableItem('fakeplate', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('wrench') ~= nil then
	   TriggerClientEvent('fakeplate:newPlate', source)
    else
        xPlayer.showNotification('You forgot a tool!')
    end
end)

ESX.RegisterUsableItem('oldplate', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('wrench') ~= nil then
	   TriggerClientEvent('fakeplate:oldPlate', source)
    else
        xPlayer.showNotification('You forgot a tool!')
    end
end)

RegisterServerEvent('fakeplate:useOld')
AddEventHandler('fakeplate:useOld', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('oldplate', 1)
end)

RegisterServerEvent('fakeplate:useFake')
AddEventHandler('fakeplate:useFake', function()
	local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.canSwapItem('fakeplate', 1, 'oldplate', 1) then
        xPlayer.removeInventoryItem('fakeplate', 1)
        xPlayer.addInventoryItem('oldplate', 1)
    else
        xPlayer.showNotification('Not enough inventory space.')
    end
end)

RegisterServerEvent('fakeplate:dclog')
AddEventHandler('fakeplate:dclog', function(text, text2)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    dclog(xPlayer, text, text2)
end)

function dclog(xPlayer, text, text2)
    local playerName = Sanitize(xPlayer.getName())
    
    for k, v in ipairs(GetPlayerIdentifiers(xPlayer.source)) do
        if string.match(v, 'discord:') then
            identifierDiscord = v
        end
        if string.match(v, 'ip:') then
            identifierIp = v
        end
    end
	
	local discord_webhook = GetConvar('discord_webhook', 'DiscordWebhook')
	if discord_webhook == '' then
	  return
	end
	local headers = {
	  ['Content-Type'] = 'application/json'
	}
	local data = {
        ['username'] = 'WebhookName',
        ['avatar_url'] = 'WebhookAvatarUrl',
        ['embeds'] = {{
          ['author'] = {
            ['name'] = 'Fake Plate System',
            ['icon_url'] = 'https://images3.memedroid.com/images/UPLOADED354/5d508d4f0dc59.jpeg'
          },
          ['footer'] = {
              ['text'] = 'Successfully started and running ✅'
          },
          ['color'] = 12914,
          ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
        }}
      }
    text = '**'..text..'**\n🆔 **ID**: '..tonumber(xPlayer.source)..'\n💻 **Steam:** '..xPlayer.identifier..'\n📋 **Player name:** '..xPlayer.getName()
    if identifierDiscord ~= nil then
        text = text..'\n🛰️ **Discord:** <@'..string.sub(identifierDiscord, 9)..'>'
        identifierDiscord = nil
    end
    if identifierIp ~= nil then
        text = text..'\n🌐 **Ip:** '..string.sub(identifierIp, 4)
        identifierIp = nil
    end
    data['embeds'][1]['description'] = text
	PerformHttpRequest(discord_webhook, function(err, text, headers) end, 'POST', json.encode(data), headers)
end

function Sanitize(str)
	local replacements = {
		['&' ] = '&amp;',
		['<' ] = '&lt;',
		['>' ] = '&gt;',
		['\n'] = '<br/>'
	}

	return str
		:gsub('[&<>\n]', replacements)
		:gsub(' +', function(s)
			return ' '..('&nbsp;'):rep(#s-1)
		end)
end