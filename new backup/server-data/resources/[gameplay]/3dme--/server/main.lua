Config = {}

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("me", function(source , args , rawCommand)
    args = table.concat(args, ' ')
    TriggerClientEvent('me:event', -1, source, args, 0)
    TriggerEvent('SenderMe', args)
    local srs = source
    local playerId = source
    exports.JD_logs:discord('[Me] **'.. GetPlayerName(source) ..'** '.. table.concat(args, " ") ..'\n**PlayerID:**'.. source ..'**\nSteamID:** '.. GetPlayerIdentifiers(source)[1] ..'', '1952511', 'me')
end)

RegisterCommand("do", function(source , args , rawCommand)
    args = table.concat(args, ' ')
    TriggerClientEvent('me:event', -1, source, args, 1)
end)
