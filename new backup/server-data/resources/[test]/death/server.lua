ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('deathUpdate')
AddEventHandler('deathUpdate', function(state)
    local steam = GetPlayerIdentifiers(source)[1]

	MySQL.Sync.execute('UPDATE users SET is_dead = @state WHERE identifier = @identifier', {
		['@identifier'] = steam,
		['@state'] = state
	})
end)
