
RegisterNetEvent('inventory:stash')
AddEventHandler('inventory:stash', function(ow)
    local Stash = { type = 'stash', owner = ow }
    openInventory(Stash)
end)