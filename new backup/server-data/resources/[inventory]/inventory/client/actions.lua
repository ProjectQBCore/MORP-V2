isHotKeyCoolDown = false
RegisterNUICallback('UseItem', function(data)
    if isWeapon(data.item.id) then
        currentWeaponSlot = data.slot
    end
    TriggerServerEvent('inventory:notifyImpendingRemoval', data.item, 1)
    TriggerServerEvent("esx:useItem", data.item.id)
    TriggerEvent('inventory:refreshInventory')

    if isWeapon(data.item.id) then
        data.item.msg = _U('holster')
    else
        data.item.msg = _U('used')
    end
    data.item.qty = 1
    TriggerEvent('inventory:showItemUse', {
        data.item
    })
end)

local keys = {
    157, 158, 160, 164
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        BlockWeaponWheelThisFrame()
        HideHudComponentThisFrame(19)
        HideHudComponentThisFrame(20)
        HideHudComponentThisFrame(17)
        DisableControlAction(0, 37, true) --Disable Tab
        for k, v in pairs(keys) do
            if IsDisabledControlJustReleased(0, v) then
                UseItem(k)
            end
        end
        if IsDisabledControlJustReleased(0, 37) then
            ESX.TriggerServerCallback('inventory:GetItemsInSlotsDisplay', function(items)
                SendNUIMessage({
                    action = 'showActionBar',
                    items = items
                })
            end)
        end
    end
end)

function UseItem(slot)
    if isHotKeyCoolDown then
        return
    end
    Citizen.CreateThread(function()
        isHotKeyCoolDown = true
        Citizen.Wait(Config.HotKeyCooldown)
        isHotKeyCoolDown = false
    end)
    ESX.TriggerServerCallback('inventory:UseItemFromSlot', function(item)
        if item then
            if isWeapon(item.id) then
                currentWeaponSlot = slot
            end
            TriggerServerEvent('inventory:notifyImpendingRemoval', item, 1)
            TriggerServerEvent("esx:useItem", item.id)
            
            if isWeapon(item.id) then
                item.msg = _U('holster')
            else
                item.msg = _U('used')
            end
            item.qty = 1
            TriggerEvent('inventory:showItemUse', {
                item,
            })
        end
    end
    , slot)
end

RegisterNetEvent('inventory:showItemUse')
AddEventHandler('inventory:showItemUse', function(items)
    local data = {}
    for k, v in pairs(items) do
        table.insert(data, {
            item = {
                label = v.label,
                itemId = v.id
            },
            qty = v.qty,
            message = v.msg
        })
    end
    SendNUIMessage({
        action = 'itemUsed',
        alerts = data
    })
end)
