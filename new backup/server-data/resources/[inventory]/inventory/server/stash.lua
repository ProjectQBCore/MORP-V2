Citizen.CreateThread(function()
    TriggerEvent('inventory:RegisterInventory', {
        name = 'stash',
        label = _U('stash'),
        slots = 60
    })
end)
