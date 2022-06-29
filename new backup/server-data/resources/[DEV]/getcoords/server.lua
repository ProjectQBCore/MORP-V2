local Webhook = 'https://discord.com/api/webhooks/850688464487317554/Tqo0uz5TIawBHaQYu2wSvwHRRc23Fo7ijnBEzLNPQtwd8P3sgzzc6aD477TP8zHgvQrN'

local SystemName = 'WOLF bot roleplay'


RegisterServerEvent('CoordsPrint')
AddEventHandler('CoordsPrint', function(embed)
    ToDiscord(embed)
end)

function ToDiscord(embed)
	PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = SystemName, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end
