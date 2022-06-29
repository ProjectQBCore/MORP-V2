
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('afkkick:kickplayer')
AddEventHandler('afkkick:kickplayer', function()
	DropPlayer(source, 'You were afk to long time......')
end)

RegisterCommand("skin", function(source,args)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" then
		TriggerClientEvent('qb-clothing:client:openMenu',(tonumber(args[1]) and tonumber(args[1]) or source))
	end
end)

RegisterCommand('show', function(source, args)

local src = source
local xPlayer = ESX.GetPlayerFromId(src)
        local type = "toggle"
if xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "admin" then
        TriggerClientEvent("ShowNames", src, type)
end

end)