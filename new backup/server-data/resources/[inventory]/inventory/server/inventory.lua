local openInventory = {}


loadedInventories = {}

RegisterServerEvent('inventory:openInventory')
AddEventHandler('inventory:openInventory', function(inventory)
    if openInventory[inventory.owner] == nil then
        openInventory[inventory.owner] = {}
    end
    openInventory[inventory.owner][source] = true
end)

RegisterServerEvent('inventory:closeInventory')
AddEventHandler('inventory:closeInventory', function(inventory)
    if openInventory[inventory.owner] == nil then
        openInventory[inventory.owner] = {}
    end
    if openInventory[inventory.owner][source] then
        openInventory[inventory.owner][source] = nil
    end
end)

function closeAllOpenInventoriesForSource(source)
    for k, inv in pairs(openInventory) do
        openInventory[k][source] = nil
    end
end

RegisterServerEvent('inventory:refreshInventory')
AddEventHandler('inventory:refreshInventory', function(owner)
    if openInventory[owner] == nil then
        openInventory[owner] = {}
    end

    for k, v in pairs(openInventory[owner]) do
        TriggerClientEvent('inventory:refreshInventory', k)
    end
end)


RegisterServerEvent("inventory:MoveToEmpty")
AddEventHandler("inventory:MoveToEmpty", function(data)
    local source = source
    handleWeaponRemoval(data, source)
    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            inventory[tostring(data.destinationSlot)] = inventory[tostring(data.originSlot)]
            inventory[tostring(data.originSlot)] = nil
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]

        if data.originTier.name == 'shop' then
            local player = ESX.GetPlayerFromIdentifier(data.destinationOwner)
            if player.getMoney() >= data.originItem.price * data.originItem.qty then
                player.removeMoney(data.originItem.price * data.originItem.qty)
            else
                TriggerClientEvent('inventory:refreshInventory', source)
                TriggerClientEvent('inventory:refreshInventory', data.target)
                return
            end
        end

        if data.destinationTier.name == 'shop' then
            TriggerEvent('inventory:refreshInventory', data.originOwner)
            TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            return
        end

        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                destinationInventory[tostring(data.destinationSlot)] = originInventory[tostring(data.originSlot)]
                originInventory[tostring(data.originSlot)] = nil

                if data.originTier.name == 'player' then
                    data.originItem.block = true
                    local ownerPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.originItem.qty, ownerPlayer.source)
                    ownerPlayer.removeInventoryItem(data.originItem.id, data.originItem.qty)
                end

                if data.destinationTier.name == 'player' then
                    data.originItem.block = true
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.originItem.qty, destinationPlayer.source)
                    destinationPlayer.addInventoryItem(data.originItem.id, data.originItem.qty)
                end
                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:SwapItems")
AddEventHandler("inventory:SwapItems", function(data)
    local source = source

    handleWeaponRemoval(data, source)
    if data.originTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    if data.destinationTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            local tempItem = inventory[tostring(data.originSlot)]
            inventory[tostring(data.originSlot)] = inventory[tostring(data.destinationSlot)]
            inventory[tostring(data.destinationSlot)] = tempItem
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                local tempItem = originInventory[tostring(data.originSlot)]
                originInventory[tostring(data.originSlot)] = destinationInventory[tostring(data.destinationSlot)]
                destinationInventory[tostring(data.destinationSlot)] = tempItem

                if data.originTier.name == 'player' then
                    data.originItem.block = true
                    data.destinationItem.block = true
                    local originPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.originItem.qty, originPlayer.source)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.destinationItem, data.destinationItem.qty, originPlayer.source)
                    originPlayer.addInventoryItem(data.originItem.id, data.originItem.qty)
                    originPlayer.removeInventoryItem(data.destinationItem.id, data.destinationItem.qty)
                end

                if data.destinationTier.name == 'player' then
                    data.originItem.block = true
                    data.destinationItem.block = true
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.originItem.qty, destinationPlayer.source)
                    TriggerEvent('inventory:notifyImpendingAddition', data.destinationItem, data.destinationItem.qty, destinationPlayer.source)
                    destinationPlayer.removeInventoryItem(data.originItem.id, data.originItem.qty)
                    destinationPlayer.addInventoryItem(data.destinationItem.id, data.destinationItem.qty)
                end

                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:CombineStack")
AddEventHandler("inventory:CombineStack", function(data)
    local source = source

    handleWeaponRemoval(data, source)
    if data.originTier.name == 'shop' then
        local player = ESX.GetPlayerFromIdentifier(data.destinationOwner)
        if player.getMoney() >= data.originItem.price * data.originQty then
            player.removeMoney(data.originItem.price * data.originQty)
        else
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
            return
        end
    end

    if data.destinationTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            inventory[tostring(data.originSlot)] = nil
            inventory[tostring(data.destinationSlot)].count = data.destinationQty
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                originInventory[tostring(data.originSlot)] = nil
                destinationInventory[tostring(data.destinationSlot)].count = data.destinationQty

                if data.originTier.name == 'player' then
                    data.originItem.block = true
                    local originPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.originItem.qty, originPlayer.source)
                    originPlayer.removeInventoryItem(data.originItem.id, data.originItem.qty)
                end

                if data.destinationTier.name == 'player' then
                    data.originItem.block = true
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.originItem.qty, destinationPlayer.source)
                    destinationPlayer.addInventoryItem(data.originItem.id, data.originItem.qty)
                end

                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:TopoffStack")
AddEventHandler("inventory:TopoffStack", function(data)
    local source = source

    handleWeaponRemoval(data, source)
    if data.originTier.name == 'shop' then
        local player = ESX.GetPlayerFromIdentifier(data.destinationOwner)
        if player.getMoney() >= data.originItem.price * data.originQty then
            player.removeMoney(data.originItem.price * data.originQty)
        else
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
            return
        end
    end

    if data.destinationTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            inventory[tostring(data.originSlot)].count = data.originItem.qty
            inventory[tostring(data.destinationSlot)].count = data.destinationItem.qty
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                originInventory[tostring(data.originSlot)].count = data.originItem.qty
                destinationInventory[tostring(data.destinationSlot)].count = data.destinationItem.qty

                if data.originTier.name == 'player' then
                    data.originItem.block = true
                    local originPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.originItem.qty, originPlayer.source)
                    originPlayer.removeInventoryItem(data.originItem.id, data.originItem.qty)
                end

                if data.destinationTier.name == 'player' then
                    data.originItem.block = true
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.originItem.qty, destinationPlayer.source)
                    destinationPlayer.addInventoryItem(data.originItem.id, data.originItem.qty)
                end

                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:EmptySplitStack")
AddEventHandler("inventory:EmptySplitStack", function(data)

    handleWeaponRemoval(data, source)
    if data.originTier.name == 'shop' then
        local player = ESX.GetPlayerFromIdentifier(data.destinationOwner)
        if player.getMoney() >= data.originItem.price * data.moveQty then
            player.removeMoney(data.originItem.price * data.moveQty)
        else
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
            return
        end
    end

    if data.destinationTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    local source = source
    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            inventory[tostring(data.originSlot)].count = inventory[tostring(data.originSlot)].count - data.moveQty
            local item = inventory[tostring(data.originSlot)]
            inventory[tostring(data.destinationSlot)] = {
                name = item.name,
                count = data.moveQty
            }
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                originInventory[tostring(data.originSlot)].count = originInventory[tostring(data.originSlot)].count - data.moveQty
                local item = originInventory[tostring(data.originSlot)]
                destinationInventory[tostring(data.destinationSlot)] = {
                    name = item.name,
                    count = data.moveQty
                }

                if data.originTier.name == 'player' then
                    local originPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    data.originItem.block = true
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.moveQty, originPlayer.source)
                    originPlayer.removeInventoryItem(data.originItem.id, data.moveQty)
                end

                if data.destinationTier.name == 'player' then
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    data.originItem.block = true
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.moveQty, destinationPlayer.source)
                    destinationPlayer.addInventoryItem(data.originItem.id, data.moveQty)
                end
                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:SplitStack")
AddEventHandler("inventory:SplitStack", function(data)
    local source = source
    handleWeaponRemoval(data, source)

    if data.originTier.name == 'shop' then
        local player = ESX.GetPlayerFromIdentifier(data.destinationOwner)
        if player.getMoney() >= data.originItem.price * data.moveQty then
            player.removeMoney(data.originItem.price * data.moveQty)
        else
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
            return
        end
    end

    if data.destinationTier.name == 'shop' then
        TriggerEvent('inventory:refreshInventory', data.originOwner)
        TriggerEvent('inventory:refreshInventory', data.destinationOwner)
        return
    end

    if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
        local originInvHandler = InvType[data.originTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(inventory)
            inventory[tostring(data.originSlot)].count = inventory[tostring(data.originSlot)].count - data.moveQty
            inventory[tostring(data.destinationSlot)].count = inventory[tostring(data.destinationSlot)].count + data.moveQty
            TriggerEvent('inventory:refreshInventory', data.originOwner)
        end)
    else
        local originInvHandler = InvType[data.originTier.name]
        local destinationInvHandler = InvType[data.destinationTier.name]
        originInvHandler.applyToInventory(data.originOwner, function(originInventory)
            destinationInvHandler.applyToInventory(data.destinationOwner, function(destinationInventory)
                originInventory[tostring(data.originSlot)].count = originInventory[tostring(data.originSlot)].count - data.moveQty
                destinationInventory[tostring(data.destinationSlot)].count = destinationInventory[tostring(data.destinationSlot)].count + data.moveQty

                if data.originTier.name == 'player' then
                    data.originItem.block = true
                    local originPlayer = ESX.GetPlayerFromIdentifier(data.originOwner)
                    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.moveQty, originPlayer.source)
                    originPlayer.removeInventoryItem(data.originItem.id, data.moveQty)
                end

                if data.destinationTier.name == 'player' then
                    data.originItem.block = true
                    local destinationPlayer = ESX.GetPlayerFromIdentifier(data.destinationOwner)
                    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.moveQty, destinationPlayer.source)
                    destinationPlayer.addInventoryItem(data.originItem.id, data.moveQty)
                end
                TriggerEvent('inventory:refreshInventory', data.originOwner)
                TriggerEvent('inventory:refreshInventory', data.destinationOwner)
            end)
        end)
    end
end)

RegisterServerEvent("inventory:GiveItem")
AddEventHandler("inventory:GiveItem", function(data)

    if isWeapon(data.originItem.id) then
        TriggerClientEvent('inventory:removeCurrentWeapon', source)
    end

    TriggerEvent('inventory:notifyImpendingRemoval', data.originItem, data.count, source)
    TriggerEvent('inventory:notifyImpendingAddition', data.originItem, data.count, data.target)
    local targetPlayer = ESX.GetPlayerFromId(data.target)
    targetPlayer.addInventoryItem(data.originItem.id, data.count)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    sourcePlayer.removeInventoryItem(data.originItem.id, data.count)
    TriggerClientEvent('inventory:refreshInventory', source)
    TriggerClientEvent('inventory:refreshInventory', data.target)
end)

RegisterServerEvent("inventory:GiveCash")
AddEventHandler("inventory:GiveCash", function(data)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    if data.item == 'cash' then
        if sourcePlayer.getMoney() >= data.count then
            sourcePlayer.removeMoney(data.count)
            local targetPlayer = ESX.GetPlayerFromId(data.target)
            targetPlayer.addMoney(data.count)
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
        end

    elseif data.item == 'black_money' then
        if sourcePlayer.getAccount('black_money').money >= data.count then
            sourcePlayer.removeAccountMoney('black_money', data.count)
            local targetPlayer = ESX.GetPlayerFromId(data.target)
            targetPlayer.addAccountMoney('black_money', data.count)
            TriggerClientEvent('inventory:refreshInventory', source)
            TriggerClientEvent('inventory:refreshInventory', data.target)
        end
    end
end)

RegisterServerEvent("inventory:CashStore")
AddEventHandler("inventory:CashStore", function(data)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    if data.item == 'cash' then
        if sourcePlayer.getMoney() >= data.count then
            sourcePlayer.removeMoney(data.count)
            local invHandler = InvType[data.destinationTier.name]
            invHandler.applyToInventory(data.owner, function(inventory)
                if inventory['cash'] == nil then
                    inventory['cash'] = 0
                end
                inventory['cash'] = inventory['cash'] + data.count
                TriggerEvent('inventory:refreshInventory', sourcePlayer.identifier)
                TriggerEvent('inventory:refreshInventory', data.owner)
            end)
        end
    elseif data.item == 'black_money' then
        if sourcePlayer.getAccount('black_money').money >= data.count then
            sourcePlayer.removeAccountMoney('black_money', data.count)
            local invHandler = InvType[data.destinationTier.name]
            invHandler.applyToInventory(data.owner, function(inventory)
                if inventory['black_money'] == nil then
                    inventory['black_money'] = 0
                end
                inventory['black_money'] = inventory['black_money'] + data.count
                TriggerEvent('inventory:refreshInventory', sourcePlayer.identifier)
                TriggerEvent('inventory:refreshInventory', data.owner)
            end)
        end
    end
end)

RegisterServerEvent("inventory:CashTake")
AddEventHandler("inventory:CashTake", function(data)
    local sourcePlayer = ESX.GetPlayerFromId(source)
    if data.item == 'cash' then
        local invHandler = InvType[data.destinationTier.name]
        invHandler.applyToInventory(data.owner, function(inventory)
            if inventory['cash'] == nil then
                inventory['cash'] = 0
            end
            if inventory['cash'] >= data.count then
                inventory['cash'] = inventory['cash'] - data.count
                if inventory['cash'] == 0 then
                    inventory['cash'] = nil
                end
                sourcePlayer.addMoney(data.count)
            end
            TriggerEvent('inventory:refreshInventory', sourcePlayer.identifier)
            TriggerEvent('inventory:refreshInventory', data.owner)
        end)
    elseif data.item == 'black_money' then
        local invHandler = InvType[data.destinationTier.name]
        invHandler.applyToInventory(data.owner, function(inventory)
            if inventory['black_money'] == nil then
                inventory['black_money'] = 0
            end
            if inventory['black_money'] >= data.count then
                inventory['black_money'] = inventory['black_money'] - data.count
                if inventory['black_money'] == 0 then
                    inventory['black_money'] = nil
                end
                sourcePlayer.addAccountMoney('black_money', data.count)
            end
            TriggerEvent('inventory:refreshInventory', sourcePlayer.identifier)
            TriggerEvent('inventory:refreshInventory', data.owner)
        end)
    end
end)

function removeItemFromSlot(inventory, slot, count)
    if inventory[tostring(slot)].count - count > 0 then
        inventory[tostring(slot)].count = inventory[tostring(slot)].count - count
        return
    else
        inventory[tostring(slot)] = nil
        return
    end
end

function removeItemFromInventory(item, count, inventory)
    for k, v in pairs(inventory) do
        if v.name == item.name then
            if v.count - count < 0 then
                local tempCount = inventory[k].count
                inventory[k] = nil
                count = count - tempCount
            elseif v.count - count > 0 then
                inventory[k].count = inventory[k].count - count
                return
            elseif v.count - count == 0 then
                inventory[k] = nil
                return
            else
                print('Missing Remove condition')
            end
        end
    end
end

function addToInventory(item, type, inventory)
    local max = getItemDataProperty(item.name, 'max') or 100
    local toAdd = item.count
    toAdd = AttemptMerge(item, inventory, toAdd, max)
    while toAdd > 0 do
        if toAdd > 0 then
            toAdd = AddToEmpty(item, type, inventory, toAdd, max)
        else
            toAdd = 0
        end
    end
end

function AttemptMerge(item, inventory, count)
    local max = getItemDataProperty(item.name, 'max') or 100
    for k, v in pairs(inventory) do
        if v.name == item.name then
            if v.count + count > max then
                local tempCount = max - inventory[k].count
                inventory[tostring(k)].count = max
                count = count - tempCount
            elseif v.count + count <= max then
                inventory[tostring(k)].count = v.count + count
                return 0
            else
                print('Missing MERGE condition')
            end
        end
    end
    return count
end

function AddToEmpty(item, type, inventory, count)
    local max = getItemDataProperty(item.name, 'max') or 100
    for i = 1, InvType[type].slots, 1 do
        if inventory[tostring(i)] == nil then
            if count > max then
                inventory[tostring(i)] = item
                inventory[tostring(i)].count = max
                return count - max
            else
                inventory[tostring(i)] = item
                inventory[tostring(i)].count = count
                return 0
            end
        end
    end
    return 0
end

function createDisplayItem(item, esxItem, slot, price, type)
    local max = getItemDataProperty(esxItem.name, 'max') or 50

    return {
        id = esxItem.name,
        itemId = esxItem.name,
        qty = item.count,
        slot = slot,
        label = esxItem.label,
        type = type or 'item',
        max = max,
        stackable = true,
        unique = esxItem.rare,
        usable = esxItem.usable,
        giveable = true,
        description = getItemDataProperty(esxItem.name, 'description'),
        weight = Config.ItemsWeight[esxItem.name] or 0,
        metadata = {},
        staticMeta = {},
        canRemove = esxItem.canRemove,
        price = price or 0,
        needs = false,
    }
end

function createItem(name, count)
    return { name = name, count = count }
end

ESX.RegisterServerCallback('inventory:getSecondaryInventory', function(source, cb, type, identifier)
    if InvType[type] == nil then print('ERROR FINDING INVENTORY TYPE:' .. type) return end
    InvType[type].getDisplayInventory(identifier, cb, source)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5 * 60 * 1000)
        saveInventories()
    end
end)

RegisterCommand('saveInventories', function(src, args, raw)
    if src == 0 then
        saveInventories()
    end
end)

function saveInventories()
    for type, inventories in pairs(loadedInventories) do
        for identifier, inventory in pairs(inventories) do
            if inventory ~= nil then
                if table.length(inventory) > 0 then
                    saveLoadedInventory(identifier, type, inventory)
                else
                    deleteInventory(identifier, type)
                end
            end
        end
    end
    RconPrint('[inventory][SAVED] All Inventories' .. "\n")
end

function saveInventory(identifier, type)
    saveLoadedInventory(identifier, type, loadedInventories[type][identifier])
end

function saveLoadedInventory(identifier, type, data)
    if table.length(data) > 0 then
        MySQL.Async.execute('UPDATE disc_inventory SET data = @data WHERE owner = @owner AND type = @type', {
            ['@owner'] = identifier,
            ['@type'] = type,
            ['@data'] = json.encode(data)
        }, function(result)
            if result == 0 then
                createInventory(identifier, type, data)
            end
            loadedInventories[type][identifier] = nil
            TriggerEvent('inventory:savedInventory', identifier, type, data)
        end)
    end
end

function createInventory(identifier, type, data)
    MySQL.Async.execute('INSERT INTO disc_inventory (owner, type, data) VALUES (@owner, @type, @data)', {
        ['@owner'] = identifier,
        ['@type'] = type,
        ['@data'] = json.encode(data)
    }, function()
        TriggerEvent('inventory:createdInventory', identifier, type, data)
    end)
end

function deleteInventory(identifier, type)
    MySQL.Async.execute('DELETE FROM disc_inventory WHERE owner = @owner AND type = @type', {
        ['@owner'] = identifier,
        ['@type'] = type
    }, function()
        TriggerEvent('inventory:deletedInventory', identifier, type)
    end)
end

function getDisplayInventory(identifier, type, cb, source)
    local player = ESX.GetPlayerFromId(source)
    InvType[type].getInventory(identifier, function(inventory)
        local itemsObject = {}

        for k, v in pairs(inventory) do
            if k ~= 'cash' and k ~= 'black_money' then
                local esxItem = player.getInventoryItem(v.name)
                local item = createDisplayItem(v, esxItem, tonumber(k))
                item.usable = false
                item.giveable = false
                item.canRemove = false
                table.insert(itemsObject, item)
            end
        end
        local inv
        if type == 'player' then
            local targetPlayer = ESX.GetPlayerFromIdentifier(identifier)
            inv = {
                invId = identifier,
                invTier = InvType[type],
                inventory = itemsObject,
                cash = targetPlayer.getMoney(),
                black_money = targetPlayer.getAccount('black_money').money
            }
        else
            inv = {
                invId = identifier,
                invTier = InvType[type],
                inventory = itemsObject,
                cash = inventory['cash'] or 0,
                black_money = inventory['black_money'] or 0
            }
        end
        cb(inv)
    end)
end

function getInventory(identifier, type, cb)
    if loadedInventories[type][identifier] ~= nil then
        cb(loadedInventories[type][identifier])
    else
        loadInventory(identifier, type, cb)
    end
end

function applyToInventory(identifier, type, f)
    if loadedInventories[type][identifier] ~= nil then
        f(loadedInventories[type][identifier])
    else
        loadInventory(identifier, type, function()
            applyToInventory(identifier, type, f)
        end)
    end
    if loadedInventories[type][identifier] and table.length(loadedInventories[type][identifier]) > 0 then
        TriggerEvent('inventory:modifiedInventory', identifier, type, loadedInventories[type][identifier])
    else
        TriggerEvent('inventory:modifiedInventory', identifier, type, nil)
    end
end

function loadInventory(identifier, type, cb)
    MySQL.Async.fetchAll('SELECT data FROM disc_inventory WHERE owner = @owner and type = @type', {
        ['@owner'] = identifier,
        ['@type'] = type
    }, function(result)
        if #result == 0 then
            loadedInventories[type][identifier] = {}
            cb({})
            return
        end
        inventory = json.decode(result[1].data)
        loadedInventories[type][identifier] = inventory
        cb(inventory)
        TriggerEvent('inventory:loadedInventory', identifier, type, inventory)
    end)
end

function handleWeaponRemoval(data, source)
    if isWeapon(data.originItem.id) then
        if data.originOwner == data.destinationOwner and data.originTier.name == data.destinationTier.name then
            if data.destinationSlot > 5 then
                TriggerClientEvent('inventory:removeCurrentWeapon', source)
            end
        else
            TriggerClientEvent('inventory:removeCurrentWeapon', source)
        end
    end
end
