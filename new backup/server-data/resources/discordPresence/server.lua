ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


function getIdentity(source)
	local sourceXPlayer = ESX.GetPlayerFromId(source)
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = sourceXPlayer.identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group']
		}
	else
		return nil
	end
end

--[[
function GetPlayers()
    local players = {}
    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            players[#players + 1] = i
        end
    end
    return players
end
]]

RegisterServerEvent('GetActivePlayers')
AddEventHandler('GetActivePlayers', function()
    local count = GetNumPlayerIndices()
    -- Callback to client
    TriggerClientEvent('GetActivePlayers:CB', source, count)
end)

RegisterServerEvent('discord:server:setName')
AddEventHandler('discord:server:setName', function()
	local _source = source
    local name = getIdentity(source)
	local _playerName = name.firstname .. " " .. name.lastname
    TriggerClientEvent('discord:client:setPresence',_source,_playerName)
end)