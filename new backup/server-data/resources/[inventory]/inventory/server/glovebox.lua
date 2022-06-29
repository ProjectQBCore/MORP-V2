Citizen.CreateThread(function()
    TriggerEvent('inventory:RegisterInventory', {
        name = 'glovebox',
        label = _U('glove'),
        slots = 5
    })
end)
