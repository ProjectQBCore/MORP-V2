ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('delivery:hasItem', function(source, cb, item,count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item = xPlayer.getInventoryItem(item)

    cb(item.count >= count)
	
end)

RegisterServerEvent('delivery:completed')
AddEventHandler('delivery:completed', function(cash)
    local xPlayer = ESX.GetPlayerFromId(source)

    if cash then
        xPlayer.addMoney(cash)
    end
end)

RegisterServerEvent("delivery:removeItem")
AddEventHandler("delivery:removeItem", function(item,count)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('weed4g',count or 1)
end)

RegisterServerEvent("delivery:addItem")
AddEventHandler("delivery:addItem", function(item,count)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem(item, 1)
end)

RegisterServerEvent("weed:start")
AddEventHandler("weed:start", function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= 200 then
        if xPlayer.getInventoryItem('weed4g')["count"] >= 1 then
            TriggerClientEvent("weed:successStart", source)
        else
            TriggerClientEvent("notification", source,"You dont have enough weed.",2)
        end
    else
        TriggerClientEvent("notification", source,"You dont have enough money.",2)
    end
end)

local FoodTable = {
    [1] = { ["id"] = "sushiplate", ["name"] = "Sushi Plate" },
    [2] = { ["id"] = "sushirolls", ["name"] = "Sushi Rolls" },
    [3] = { ["id"] = "onigiri", ["name"] = "Onigiri" },
    [4] = { ["id"] = "fruittartlet", ["name"] = "Fruit Tartlet" },
    [5] = { ["id"] = "veggysalad", ["name"] = "Veggy Salad" },
    [6] = { ["id"] = "slushy", ["name"] = "Slushy" },
    [7] = { ["id"] = "icetea", ["name"] = "Ice Tea" },
}

RegisterServerEvent("delivery:status")
AddEventHandler("delivery:status", function(val)
    if val ~= nil then
        if val > 0 then
            TriggerClientEvent("delivery:deliverables", -1, 2, math.random(#FoodTable))
        else
            TriggerClientEvent("delivery:deliverables", -1, -1, math.random(#FoodTable))
        end
    end
end)

RegisterServerEvent('delivery:payment')
AddEventHandler('delivery:payment', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local payment = math.random(30,45)
	local rolls = xPlayer.getInventoryItem('rollcash')

    if rolls.count >= 5 then
        xPlayer.removeInventoryItem('rollcash', 5)
        payment = payment + 2500
        TriggerClientEvent("notification",src,"Thanks for the extra sauce!")
    else
        TriggerClientEvent("notification",src,"Thanks, no extra sauce though?!")
    end

    xPlayer.addMoney(payment)
end)
