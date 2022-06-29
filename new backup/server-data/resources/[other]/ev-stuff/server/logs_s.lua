--[[local resource = "https://discordapp.com/api/webhooks/732288223186911332/kNd3xaI6I2mkXWnM9psP19K5gaKijTGj5xXfM9uBw3RtMl0q5R194fUT_JJs5AXt34zP"
local chat = 'https://discordapp.com/api/webhooks/732288274139316275/J7ezfhxVFPvaN2l683UR99a6D785ylz8HrCHWfQPXUkkg2IxFHrSZCfucSUKh8cE1_xf'
local rcon = 'https://discordapp.com/api/webhooks/717572806065389588/hCNFVUTBf2n47J2ruAdp2kSxNd6-jTq_LjgtpLRNjUv-c1GuJzVsIn3Olfr3r-RskRqd'
local connect = 'https://discordapp.com/api/webhooks/732288341084602490/2sYKM6LlVttW6hNU5VzeAMMBwVuEH5npnJxUKDj0FggR8c_6MoKnk7TqSkqeSz8gI_g5'
local death = 'https://discordapp.com/api/webhooks/732288408034082878/t1X1evGYzeGCNgsGYdNMIuoBuQnSwHMS6DF6YWvr-EWEWyWCm1bLpo2E4Z8x4uChHpaT'
AddEventHandler('chatMessage', function(source, name, message)
    PerformHttpRequest(chat, function(err, text, headers) end, 'POST', json.encode({username = name .. " | " .. GetPlayerIdentifiers(source)[1], content = message}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('rconCommand', function(command, args)
    PerformHttpRequest(rcon, function(err, text, headers) end, 'POST', json.encode({username = 'RCON', content = command .. " called over RCON with"}), { ['Content-Type'] = 'application/json' })
end)


AddEventHandler('onResourceStart', function(resourceName)
    local embed = {{["color"] = "12745742", ["title"] = "Resource has been started.", ["description"] = resourceName }}
    PerformHttpRequest(resource, function(err, text, headers) end, 'POST', json.encode({username = 'RCON', embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('onResourceStop', function(resourceName)
    local embed = {{["color"] = "12745742", ["title"] = "Resource was stopped.", ["description"] = resourceName }}
    PerformHttpRequest(resource, function(err, text, headers) end, 'POST', json.encode({username = 'RCON', embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerConnecting', function()
    local identifiers = {discord = "", steam = "", license = "", ip = "", live = "", xbl = ""}
    local num = GetNumPlayerIdentifiers(source)

    for i = 0, num-1 do
        local a = GetPlayerIdentifier(source, i)
        local f = string.find(a, ":")
        if f then
            local b = string.sub(a, 1, f-1)
            identifiers[b] = a
        end
    end

    local name = GetPlayerName(source)
    local guid = GetPlayerGuid(source)
    local ping = GetPlayerPing(source)
    local embed = {
        {
            ["color"] = "12745742",
            ["title"] = "Player Connecting.",
            ["description"] = "**[Name]** "..name.."\n**[Ping]**: "..ping.."**\n[Player IP]**: "..identifiers.ip.."\n**[Guid]**: "..guid.."\n **[Discord]**: <@!" .. string.sub(identifiers.discord, 9) .. ">\n **[license]**: "..identifiers.license.."\n**[Steam id]**: "..identifiers.steam.."\n**[Live id]**: "..identifiers.live.."\n**[xbl id]**: "..identifiers.xbl.."",
        }
    }

    PerformHttpRequest(connect, function(err, text, headers) end, 'POST', json.encode({username = "Connection Logs", embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
    local identifiers = {discord = "", steam = "", license = "", ip = "", live = "", xbl = ""}
    local num = GetNumPlayerIdentifiers(source)

    for i = 0, num-1 do
        local a = GetPlayerIdentifier(source, i)
        local f = string.find(a, ":")
        if f then
            local b = string.sub(a, 1, f-1)
            identifiers[b] = a
        end
    end

    local name = GetPlayerName(source)
    local guid = GetPlayerGuid(source)
    local ping = GetPlayerPing(source)
    local embed = {
        {
            ["color"] = "12745742",
            ["title"] = "Player Dropped. (" .. reason .. ")",
            ["description"] = "**[Name]** "..name.."\n**[Ping]**: "..ping.."**\n[Player IP]**: "..identifiers.ip.."\n**[Guid]**: "..guid.."\n **[Discord]**: <@!" .. string.sub(identifiers.discord, 9) .. ">\n **[license]**: "..identifiers.license.."\n**[Steam id]**: "..identifiers.steam.."\n**[Live id]**: "..identifiers.live.."\n**[xbl id]**: "..identifiers.xbl.."",
        }
    }

    PerformHttpRequest(connect, function(err, text, headers) end, 'POST', json.encode({username = "Connection Logs", embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('logs:Died')
AddEventHandler('logs:Died', function(Message, Weapon)
	local date = os.date('*t')
	
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	if Weapon then
		Message = Message .. ' [' .. Weapon .. ']'
	end
    PerformHttpRequest(death, function(err, text, headers) end, 'POST', json.encode({username = 'Death Logs', content = Message}), { ['Content-Type'] = 'application/json' })
end)--]]
