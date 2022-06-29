ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("godmode",function(source)
	local user = ESX.GetPlayerFromId(source)
	local group = user.getGroup()
	if group == "admin" or group == "superadmin" then
		TriggerClientEvent("ronhomo:godmode",source)
	end
end)

RegisterCommand("heal", function(source,args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" then
        TriggerClientEvent('ron:heal', (tonumber(args[1]) and tonumber(args[1]) or source))
        TriggerClientEvent('notification', (tonumber(args[1]) and tonumber(args[1]) or source), "You have been healed.", 1)
    else 
        TriggerClientEvent('notification', source, "You don't have any permissions to execute this command.", 2)
    end
end)

RegisterCommand("showid",function(source)
	local user = ESX.GetPlayerFromId(source)
	local group = user.getGroup()
	if group == "admin" or group == "superadmin" then
		TriggerClientEvent("showid:event",source)
	end
end)

RegisterCommand("a",function(source,args)
	local src = source
	local Player = ESX.GetPlayerFromId(src)
	if Player.getGroup() == 'admin' or Player.getGroup() == 'superadmin'  then
		for _,v in pairs(ESX.GetPlayers()) do
			local xPlayer = ESX.GetPlayerFromId(v)
			if xPlayer and xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'superadmin' then
				TriggerClientEvent('chat:addMessage',v, {
					template = '<div class="chat-message ido"><span style = "color:rgba(255, 41, 41, 0.9); font-weight:bold">ADMIN CHAT</span> | <b>{1} ({2}):</b> {0}</div>',
					args = { table.concat(args, " "), Player.getName(), src }
				})

			end
		end
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = 'You are not ron!'})
	end
end)

function GetName(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]
        local name = identity['firstname'] .. " " .. identity['lastname']
		return name
	else
		return nil
	end
end

RegisterCommand("ron", function(source,args)
	if ESX then 
		local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.getGroup() == "superadmin" then
			TriggerClientEvent('sabon:homo', source)
		end
	end
end)

--[[RegisterCommand("pchat",function(source,args)
	local src = source
	local Player = ESX.GetPlayerFromId(src)
	local msg = table.concat(args, " ")
	local data = {
		name = GetName(src),
		rank = officers[src] ~= nil and officers[src].rank or "ללא תג",
		msg = msg
	}
	if Player.job.name == 'police' then
		TriggerClientEvent('ronhomo:pchat',-1,data)
	else
		TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'error', text = 'You\'re not a police officer. '})

	end
end)--]]