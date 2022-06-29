local drops = {}

Citizen.CreateThread(function()
    TriggerEvent('inventory:RegisterInventory', {
        name = 'drop',
        label = _U('drop'),
        slots = 60
    })
end)

MySQL.ready(function()
    MySQL.Async.execute('DELETE FROM disc_inventory WHERE type = \'drop\'')
end)

function updateDrops()
    MySQL.Async.fetchAll('SELECT * FROM disc_inventory WHERE type = \'drop\'', {}, function(results)
        drops = {}
        for k, v in pairs(results) do
            drops[v.owner] = json.decode(v.data)
        end
        TriggerClientEvent('inventory:updateDrops', -1, drops)
    end)
end

Citizen.CreateThread(function()
    Citizen.Wait(5000)
    updateDrops()
end)

AddEventHandler('esx:playerLoaded', function(data)
    Citizen.Wait(0)
    updateDrops()
end)

RegisterServerEvent('inventory:modifiedInventory')
AddEventHandler('inventory:modifiedInventory', function(identifier, type, data)
    if type == 'drop' then
        drops[identifier] = data
        TriggerClientEvent('inventory:updateDrops', -1, drops)
    end
end)

RegisterServerEvent('inventory:savedInventory')
AddEventHandler('inventory:savedInventory', function(identifier, type, data)
    if type == 'drop' then
        drops[identifier] = data
        TriggerClientEvent('inventory:updateDrops', -1, drops)
    end
end)

RegisterServerEvent('inventory:createdInventory')
AddEventHandler('inventory:createdInventory', function(identifier, type, data)
    if type == 'drop' then
        drops[identifier] = data
        TriggerClientEvent('inventory:updateDrops', -1, drops)
    end
end)

RegisterServerEvent('inventory:deletedInventory')
AddEventHandler('inventory:deletedInventory', function(identifier, type)
    if type == 'drop' then
        drops[identifier] = nil
        TriggerClientEvent('inventory:updateDrops', -1, drops)
    end
end)
