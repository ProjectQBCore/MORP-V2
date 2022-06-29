secondInventory = nil
currentMaxWeight = 250
currentWeight = 0
currentOtherMaxWeight = 250
currentOtherWeight = 0

RegisterNUICallback('MoveToEmpty', function(data, cb)
    TriggerServerEvent('inventory:MoveToEmpty', data)
    TriggerEvent('inventory:MoveToEmpty', data)
    cb('OK')
end)

RegisterNUICallback('EmptySplitStack', function(data, cb)
    TriggerServerEvent('inventory:EmptySplitStack', data)
    TriggerEvent('inventory:EmptySplitStack', data)
    cb('OK')
end)

RegisterNUICallback('SplitStack', function(data, cb)
    TriggerServerEvent('inventory:SplitStack', data)
    TriggerEvent('inventory:SplitStack', data)
    cb('OK')
end)

RegisterNUICallback('CombineStack', function(data, cb)
    TriggerServerEvent('inventory:CombineStack', data)
    TriggerEvent('inventory:CombineStack', data)
    cb('OK')
end)

RegisterNUICallback('TopoffStack', function(data, cb)
    TriggerServerEvent('inventory:TopoffStack', data)
    TriggerEvent('inventory:TopoffStack', data)
    cb('OK')
end)

RegisterNUICallback('SwapItems', function(data, cb)
    TriggerServerEvent('inventory:SwapItems', data)
    TriggerEvent('inventory:SwapItems', data)
    cb('OK')
end)

RegisterNUICallback('GiveItem', function(data, cb)
    TriggerServerEvent('inventory:GiveItem', data)
    cb('OK')
end)

RegisterNUICallback('GiveCash', function(data, cb)
    TriggerServerEvent('inventory:GiveCash', data)
    cb('OK')
end)

RegisterNUICallback('CashStore', function(data, cb)
    TriggerServerEvent('inventory:CashStore', data)
    cb('OK')
end)

RegisterNUICallback('CashTake', function(data, cb)
    TriggerServerEvent('inventory:CashTake', data)
    cb('OK')
end)

RegisterNUICallback('GetNearPlayers', function(data, cb)
    if data.action == 'give' then
        SendNUIMessage({
            action = "nearPlayersGive",
            players = GetNeareastPlayers(),
            originItem = data.originItem
        })
    end
    if data.action == 'pay' then
        SendNUIMessage({
            action = "nearPlayersPay",
            players = GetNeareastPlayers(),
            originItem = data.originItem
        })
    end
    cb('OK')
end)

function GetNeareastPlayers()
    local playerPed = PlayerPedId()
    local players, nearbyPlayer = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 2.0)

    local players_clean = {}
    local found_players = false

    for i = 1, #players, 1 do
        if players[i] ~= PlayerId() then
            found_players = true
            table.insert(players_clean, { name = GetPlayerName(players[i]), id = GetPlayerServerId(players[i]) })
        end
    end
    return players_clean
end

RegisterNetEvent('inventory:refreshInventory')
AddEventHandler('inventory:refreshInventory', function()
    Citizen.Wait(250)
    refreshPlayerInventory()
    if secondInventory ~= nil then
        refreshSecondaryInventory()
    end
    SendNUIMessage({
        action = "unlock"
    })
end)

function refreshPlayerInventory()
    ESX.TriggerServerCallback('inventory:getPlayerInventory', function(data)
        if data == nil then return closeInventory() end
        currentWeight = GetInventoryWeight(data.inventory)
        TriggerServerEvent('inventory:updateWeight', { max = currentMaxWeight, weight = currentWeight})
        TriggerEvent('inventory:updateWeight', { max = currentMaxWeight, weight = currentWeight})
        
        
        
        SendNUIMessage({
            action = "setStreet",
            street = GetStreetNameFromHashKey(GetStreetNameAtCoord(GetEntityCoords(PlayerPedId()).x, GetEntityCoords(PlayerPedId()).y, GetEntityCoords(PlayerPedId()).z)),
        })

        SendNUIMessage({
            action = "updateWeight",
            MaxWeight = currentMaxWeight,
            Weight = GetInventoryWeight(data.inventory)
        })

        SendNUIMessage({  action = "setItems", itemList = data.inventory, invOwner = data.invId, invTier = data.invTier, money = { cash = data.cash, bank = data.bank, black_money = data.black_money } })


        TriggerServerEvent('inventory:openInventory', { type = 'player', owner = ESX.GetPlayerData().identifier })
    end, 'player', ESX.GetPlayerData().identifier)
end

function refreshSecondaryInventory()
    ESX.TriggerServerCallback('inventory:getSecondaryInventory', function(data)
        if data == nil then return closeInventory() end

        currentOtherWeight = GetInventoryWeight(data.inventory)
        SendNUIMessage({
            action = "updateOtherWeight",
            MaxWeight = currentOtherMaxWeight,
            Weight = GetInventoryWeight(data.inventory)
        })


        SendNUIMessage(
                { action = "setSecondInventoryItems",
                    itemList = data.inventory,
                    invOwner = data.invId,
                    invTier = data.invTier,
                    money = {
                        cash = data.cash,
                        black_money = data.black_money
                    }
                }
        )



        SendNUIMessage(
                {
                    action = "show",
                    type = 'secondary'
                }
        )
        TriggerServerEvent('inventory:openInventory', secondInventory)
    end, secondInventory.type, secondInventory.owner)
end

function closeInventory()
    TriggerScreenblurFadeOut(200)
    SetTimecycleModifier('default')
    if not IsPedInAnyVehicle(PlayerPedId()) then TriggerEvent('InventoryAnim') end
    isInInventory = false
    SendNUIMessage({ action = "hide", type = 'primary' })
    SetNuiFocus(false, false)
    TriggerServerEvent('inventory:closeInventory', {
        type = 'player',
        owner = ESX.GetPlayerData().identifier
    })
    if secondInventory ~= nil then
        TriggerServerEvent('inventory:closeInventory', secondInventory)
    end
end

RegisterNetEvent('inventory:openInventory')
AddEventHandler('inventory:openInventory', function(sI)
    openInventory(sI)
end)

function openInventory(secondInventoryData)
    isInInventory = true
    refreshPlayerInventory()
    TriggerScreenblurFadeIn(200)
    SetTimecycleModifier('hud_def_blur')

    if (secondInventoryData == nil or secondInventoryData.type ~= 'trunk') and not IsPedInAnyVehicle(PlayerPedId()) then 
        TriggerEvent('InventoryAnim') 
    end
    
    SendNUIMessage({
        action = "display",
        type = "normal",
    })

    if secondInventoryData ~= nil then
        secondInventory = secondInventoryData
        refreshSecondaryInventory()
        SendNUIMessage({
            action = "display",
            type = 'secondary'
        })


        if secondInventoryData.seize then
            SendNUIMessage({
                action = "showSteal"
            })
        elseif secondInventoryData.steal then
            SendNUIMessage({
                action = "showSteal"
            })
        end

    end
    SetNuiFocus(true, true)
end

RegisterNetEvent("inventory:MoveToEmpty")
AddEventHandler("inventory:MoveToEmpty", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

RegisterNetEvent("inventory:EmptySplitStack")
AddEventHandler("inventory:EmptySplitStack", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

RegisterNetEvent("inventory:TopoffStack")
AddEventHandler("inventory:TopoffStack", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

RegisterNetEvent("inventory:SplitStack")
AddEventHandler("inventory:SplitStack", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

RegisterNetEvent("inventory:CombineStack")
AddEventHandler("inventory:CombineStack", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

RegisterNetEvent("inventory:SwapItems")
AddEventHandler("inventory:SwapItems", function(data)
    playPickupOrDropAnimation(data)
    playStealOrSearchAnimation(data)
end)

function playPickupOrDropAnimation(data)
    if data.originTier.name == 'drop' or data.destinationTier.name == 'drop' then

        RequestAnimDict("pickup_object")
        while not HasAnimDictLoaded("pickup_object") do
            Citizen.Wait(7)
        end
        TaskPlayAnim(GetPlayerPed(-1), "pickup_object" ,"pickup_low" ,8.0, -8.0, -1, 1, 0, false, false, false )
        Citizen.Wait(2000)
        ClearPedTasks(GetPlayerPed(-1))
    end
end

function playStealOrSearchAnimation(data)
    if data.originTier.name == 'player' and data.destinationTier.name == 'player' then
        local playerPed = GetPlayerPed(-1)
        if not IsEntityPlayingAnim(playerPed, 'random@mugging4', 'agitated_loop_a', 3) then
            ESX.Streaming.RequestAnimDict('random@mugging4', function()
                --- TaskPlayAnim(playerPed, 'random@mugging4', 'agitated_loop_a', 8.0, -8, -1, 48, 0, 0, 0, 0)
            end)
        end
    end
end

function GetInventoryWeight(inventory)
    local weight = 0
    if inventory ~= nil then

        for k,v in pairs(inventory) do
            local itemWeight = Config.ItemsWeight[v.itemId] or 0
            local qty = v.qty or 0
            local totalItemWeight = itemWeight * qty
            weight = weight + totalItemWeight

        end

    else
        weight = 0
    end

    return weight
end
