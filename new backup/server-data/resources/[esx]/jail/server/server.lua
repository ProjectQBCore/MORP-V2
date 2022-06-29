ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("jail", function(src, args, raw)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer.job.name == "police" then

		local jailPlayer = args[1]
		local jailTime = tonumber(args[2])
		local jailReason = table.concat(args, " ",3)

		if GetPlayerName(jailPlayer) ~= nil then

			if jailTime ~= nil then
				JailPlayer(jailPlayer, jailTime)

				TriggerClientEvent('notification', src, GetPlayerName(jailPlayer) .. " Jailed for " .. jailTime .. " minutes", 1)

			else
				TriggerClientEvent('notification', src, 'This time is invalid', 2)
			end
		else
			TriggerClientEvent('notification', src, 'This ID is not online', 2)
		end
	end
end)

RegisterCommand("unjail", function(src, args)

	local xPlayer = ESX.GetPlayerFromId(src)

	if xPlayer["job"]["name"] == "police" then

		local jailPlayer = args[1]

		if GetPlayerName(jailPlayer) ~= nil then
			UnJail(jailPlayer)
		else
			TriggerClientEvent('notification', src, 'This ID is not online', 2)
		end
	else
		TriggerClientEvent('notification', src, 'You are not an officer', 2)
	end
end)

RegisterServerEvent("jail:jailPlayer")
AddEventHandler("jail:jailPlayer", function(targetSrc, jailTime, jailReason)
	local src = source
	local targetSrc = tonumber(targetSrc)

	JailPlayer(targetSrc, jailTime)

	if args[3] ~= nil then
		GetRPName(jailPlayer, function(Firstname, Lastname)
			TriggerClientEvent('chat:addMessage', -1, {
				template = "<div style='font-size: calc(2.1vw / 1.77777);display: inline-block;line-height: calc((2.7vw / 1.77777) * 1.2); background-color:rgba(0, 0, 0, 0.5); border-radius: 7px;'><la style='padding: 5px;'><a style='padding: 5px;'>{0}</a></la></div>",
				args = { ( '^*' .. 'Jail : ' .. GetPlayerName(jailPlayer) .. ' jailed for '  .. jailTime .. ' minutes.' ) }
			})
		end)
	end

	TriggerClientEvent('notification', src, GetPlayerName(targetSrc) .. " Jailed for " .. jailTime .. " minutes", 1)
end)

RegisterServerEvent("jail:unJailPlayer")
AddEventHandler("jail:unJailPlayer", function(targetIdentifier)
	local src = source
	local xPlayer = ESX.GetPlayerFromIdentifier(targetIdentifier)

	if xPlayer ~= nil then
		UnJail(xPlayer.source)
	else
		MySQL.Async.execute(
			"UPDATE users SET jail = @newJailTime WHERE identifier = @identifier",
			{
				['@identifier'] = targetIdentifier,
				['@newJailTime'] = 0
			}
		)
	end

	TriggerClientEvent('notification', src, xPlayer.name .. " Unjailed", 1)
end)

RegisterServerEvent("jail:updateJailTime")
AddEventHandler("jail:updateJailTime", function(newJailTime)
	local src = source

	EditJailTime(src, newJailTime)
end)


function JailPlayer(jailPlayer, jailTime)
	TriggerClientEvent("jail:jailPlayer", jailPlayer, jailTime)

	EditJailTime(jailPlayer, jailTime)
end

function UnJail(jailPlayer)
	TriggerClientEvent("jail:unJailPlayer", jailPlayer)

	EditJailTime(jailPlayer, 0)
end

function EditJailTime(source, jailTime)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier

	MySQL.Async.execute(
       "UPDATE users SET jail = @newJailTime WHERE identifier = @identifier",
        {
			['@identifier'] = Identifier,
			['@newJailTime'] = tonumber(jailTime)
		}
	)
end

function GetRPName(playerId, data)
	local Identifier = ESX.GetPlayerFromId(playerId).identifier

	MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		data(result[1].firstname, result[1].lastname)

	end)
end

ESX.RegisterServerCallback("jail:retrieveJailedPlayers", function(source, cb)
	
	local jailedPersons = {}

	MySQL.Async.fetchAll("SELECT firstname, lastname, jail, identifier FROM users WHERE jail > @jail", { ["@jail"] = 0 }, function(result)

		for i = 1, #result, 1 do
			table.insert(jailedPersons, { name = result[i].firstname .. " " .. result[i].lastname, jailTime = result[i].jail, identifier = result[i].identifier })
		end

		cb(jailedPersons)
	end)
end)

ESX.RegisterServerCallback("jail:retrieveJailTime", function(source, cb)

	local src = source

	local xPlayer = ESX.GetPlayerFromId(src)
	local Identifier = xPlayer.identifier


	MySQL.Async.fetchAll("SELECT jail FROM users WHERE identifier = @identifier", { ["@identifier"] = Identifier }, function(result)

		local JailTime = tonumber(result[1].jail)

		if JailTime > 0 then

			cb(true, JailTime)
		else
			cb(false, 0)
		end

	end)
end)