local secondarySearchInventory = {
    type = 'player',
    owner = '',
    seize = true
}
local secondaryStealInventory = {
    type = 'player',
    owner = '',
    steal = true
}


RegisterNetEvent('inventory:openPlayerInventory')
AddEventHandler('inventory:openPlayerInventory', function(id)
    ESX.TriggerServerCallback('inventory:getIdentifier', function(identifier)
        secondarySearchInventory.owner = identifier
        openInventory(secondarySearchInventory)
    end, id)
end)

RegisterNetEvent('inventory:openForAdmin')
AddEventHandler('inventory:openForAdmin', function(identifier)
    secondarySearchInventory.owner = identifier
    openInventory(secondarySearchInventory)
end)

RegisterNetEvent('inventory:search')
AddEventHandler('inventory:search', function()
    local player = ESX.GetPlayerData()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local searchPlayerPed = GetPlayerPed(closestPlayer)
        ESX.TriggerServerCallback('inventory:getIdentifier', function(identifier)
            secondarySearchInventory.owner = identifier
            openInventory(secondarySearchInventory)
        end, GetPlayerServerId(closestPlayer))
    end
end)

RegisterNetEvent('inventory:steal')
AddEventHandler('inventory:steal', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local searchPlayerPed = GetPlayerPed(closestPlayer)
        if IsEntityPlayingAnim(searchPlayerPed, 'random@mugging3', 'handsup_standing_base', 3) then
            ESX.TriggerServerCallback('inventory:getIdentifier', function(identifier)
                secondaryStealInventory.owner = identifier
                openInventory(secondaryStealInventory)
            end, GetPlayerServerId(closestPlayer))
        end
    end
end)

RegisterNetEvent('inventory:loot')
AddEventHandler('inventory:loot', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local searchPlayerPed = GetPlayerPed(closestPlayer)
        if (IsEntityDead(searchPlayerPed)) or IsEntityPlayingAnim ( searchPlayerPed, "dead", "dead_a", 3) then
            ESX.TriggerServerCallback('inventory:getIdentifier', function(identifier)
                secondaryStealInventory.owner = identifier
                openInventory(secondaryStealInventory)
            end, GetPlayerServerId(closestPlayer))
        end
    end
end)

RegisterNUICallback('StealCash', function(data)
    TriggerServerEvent('inventory:StealCash', data)
end)
RegisterNUICallback('SeizeCash', function(data)
    TriggerServerEvent('inventory:SeizeCash', data)
end)