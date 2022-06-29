RegisterCommand('search', function(source, args, raw)
    TriggerClientEvent('inventory:steal', source)
end)

RegisterCommand('loot', function(source, args, raw)
    TriggerClientEvent('inventory:loot', source)
end)

RegisterCommand('steal', function(source, args, raw)
    TriggerClientEvent('robPlayer', source)
end)

ESX.RegisterServerCallback('inventory:getIdentifier', function(source, cb, serverid)
    cb(ESX.GetPlayerFromId(serverid).identifier)
end)

RegisterServerEvent('inventory:StealCash')
AddEventHandler('inventory:StealCash', function(data)
    local player = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromIdentifier(data.target)
    if player and target then
        if Config.Steal.cash then
            player.addMoney(target.getMoney())
            target.setMoney(0)
        end
        if Config.Steal.black_money then
            player.addAccountMoney('black_money', target.getAccount('black_money').money)
            target.setAccountMoney('black_money', 0)
        end
        TriggerClientEvent('inventory:refreshInventory', source)
        TriggerClientEvent('inventory:refreshInventory', target.source)
    end
end)

RegisterServerEvent('inventory:SeizeCash')
AddEventHandler('inventory:SeizeCash', function(data)
    local player = ESX.GetPlayerFromId(source)
    local target = ESX.GetPlayerFromIdentifier(data.target)
    if player and target then
        if Config.Seize.cash then
            player.addMoney(target.getMoney())
            target.setMoney(0)
        end
        if Config.Seize.black_money then
            player.addAccountMoney('black_money', target.getAccount('black_money').money)
            target.setAccountMoney('black_money', 0)
        end
        TriggerClientEvent('inventory:refreshInventory', source)
        TriggerClientEvent('inventory:refreshInventory', target.source)
    end
end)

TriggerEvent('es:addGroupCommand', 'openinventory', "superadmin", function(source, args, user)
    local src = tonumber(args[1])
    TriggerClientEvent('inventory:openForAdmin', source ,GetPlayerIdentifiers(src)[1])
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)

TriggerEvent('es:addGroupCommand', 'openstash', "superadmin", function(source, args, user)

    TriggerClientEvent('inventory:stash',source, table.concat(args, " "))

end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)

TriggerEvent('es:addGroupCommand', 'openshop', "superadmin", function(source, args, user)
    TriggerClientEvent('inventory:shop', source , table.concat(args, " "))
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)