ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local robbableItems = {
    [1] =  {chance = 2, id = 'samsung_s8', name = 'Samsung S8', quantity = 1}, 
    [3] =  {chance = 5, id = 'disc_ammo_pistol', name = 'Pistol Ammo', quantity = 1}, 
    [4] =  {chance = 4, id = 'repairkit', name = 'Repair Kit', quantity = 1}, 
    [5] =  {chance = 7, id = 'WEAPON_HATCHET', name = 'Hatchet', quantity = 1}, 
    [6] =  {chance = 9, id = 'WEAPON_BAT', name = 'Bat', quantity = 1}, 
    [7] =  {chance = 2, id = 'sunglasses', name = 'Sunglasses', quantity = 1}, 
    [8] =  {chance = 2, id = 'apple_iphone', name = 'Apple iPhone', quantity = 1}, 
    [9] =  {chance = 5, id = 'phone', name = 'Phone', quantity = 1}, 
    [10] =  {chance = 2, id = 'nokia_phone', name = 'Nokia Phone', quantity = 1}, 
    [11] =  {chance = 3, id = 'ring', name = 'Ring', quantity = 1}, 
    [12] =  {chance = 1, id = 'camera', name = 'Camera', quantity = 1}, 
    [13] = {chance = 1, id = 'gameboy', name = 'Gameboy', quantity = 1}, 
    [14] = {chance = 2, id = 'casio_watch', name = 'Casio Watch', quantity = 1}, 
    [15] = {chance = 2, id = 'white_pearl', name = 'White Pearl', quantity = 1}, 
    [16] = {chance = 1, id = 'psp', name = 'PSP', quantity = 1}, 
    [17] = {chance = 2, id = '2ct_gold_chain', name = '2CT Gold Chain', quantity = 1},
    [18] = {chance = 3, id = '5ct_gold_chain', name = '5CT Gold Chain', quantity = 1},
    [19] = {chance = 4, id = '8ct_gold_chain', name = '8CT Gold Chain', quantity = 1},
    [20] = {chance = 4, id = '10ct_gold_chain', name = '10CT Gold Chain', quantity = 1},
    [21] = {chance = 5, id = 'pearl_necklace', name = 'Pearl Necklace', quantity = 1},
    [22] = {chance = 6, id = 'weed_packaged', name = 'Weed Packaged', quantity = 1},
    [24] = {chance = 5, id = 'electronics', name = 'Electronics', quantity = 1},
    [25] = {chance = 1, id = 'breadboard', name = 'Breadboard', quantity = 1},
    [26] = {chance = 7, id = 'pacificidcard', name = 'Pacific ID Card', quantity = 1},
    [27] = {chance = 6, id = 'oxycutter', name = 'Oxy Cutter', quantity = 1},
}

ESX.RegisterUsableItem('advancedlockpick', function(source) --Hammer high time to unlock but 100% call cops
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('ev-houseRobbery:attempt', source, xPlayer.getInventoryItem('advancedlockpick').count)
    PerformHttpRequest('https://discord.com/api/webhooks/838441624467669014/0w-Rdo7flOZ_41QTYlLYT7pThxgbsJWyYzbjNwMl2YDej-X8dox_Cb6lH_vFDvMTMCCg', function(err, text, headers) end, 'POST', json.encode({username = "House Robberies Log", content = "__**" .. GetPlayerName(source) .. "**__ used Advanced Lockpick: **" .. source .. "** **on a House** "}), { ['Content-Type'] = 'application/json' })
end)
   
RegisterServerEvent('ev-houseRobbery:removeLockpick')
AddEventHandler('ev-houseRobbery:removeLockpick', function()
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('advancedlockpick', 1)
    TriggerClientEvent('notification', source, 'Your lockpick has bent out of shape')
end)
   
RegisterServerEvent('ev-houseRobbery:giveMoney')
AddEventHandler('ev-houseRobbery:giveMoney', function()
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cash = math.random(100, 500)
    xPlayer.addMoney(cash)
    TriggerClientEvent('notification', source, 'You have found $'..cash)
    PerformHttpRequest('https://discord.com/api/webhooks/838441761616560148/zk8ak_qsOxB8GFpFucK-YhtFrtpUW_q8M-EsTiS7Uly_ryobGfh4icD9xqCVWpkM4k2S', function(err, text, headers) end, 'POST', json.encode({username = "House Robberies Log", content = "__**" .. GetPlayerName(source) .. "**__ Got Money: **" .. cash .. "** **.** "}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('ev-houseRobbery:searchItem')
AddEventHandler('ev-houseRobbery:searchItem', function()
    local source = tonumber(source)
    local item = {}
    local xPlayer = ESX.GetPlayerFromId(source)
    local gotID = {}

    for i=1, math.random(1, 2) do
        item = robbableItems[math.random(1, #robbableItems)]
        if math.random(1, 10) >= item.chance then
            if tonumber(item.id) == 0 and not gotID[item.id] then
                gotID[item.id] = true
                item.quantity = math.random(50,400)
                xPlayer.addMoney(item.quantity)
                TriggerClientEvent('notification', source, 'You found $'..item.quantity)
            elseif item.isWeapon and not gotID[item.id] then
                gotID[item.id] = true
                xPlayer.addWeapon(item.id, 50)
                TriggerClientEvent('notification', source, 'You found a '..item.name)
                PerformHttpRequest('https://discord.com/api/webhooks/838441968462725147/j2VScyrWhAYDB14nAOq-aYY8j1ph5L9LarccmfWDmlOCwu5K6Ti9tmNzYx4Pudc18Ze4', function(err, text, headers) end, 'POST', json.encode({username = "House Robberies Log", content = "__**" .. GetPlayerName(source) .. "**__ Found: **" .. item.isWeapon .. "** **.** "}), { ['Content-Type'] = 'application/json' })
            elseif not gotID[item.id] then
                gotID[item.id] = true
                xPlayer.addInventoryItem(item.id, item.quantity)
                TriggerClientEvent('notification', source, 'You have found '..item.quantity..'x '..item.name)
                PerformHttpRequest('https://discord.com/api/webhooks/838442035034849292/2lc0Cgvs5j1SoX7UlIxjeswuqtFAhkIkIysQ9BpDJ49-eWYvXVb23JjUPEI97BCN0gG7', function(err, text, headers) end, 'POST', json.encode({username = "House Robberies Log", content = "__**" .. GetPlayerName(source) .. "**__ Found: **" .. item.id .. "** **.** "}), { ['Content-Type'] = 'application/json' })
            end
        end
    end
end)
   

RegisterServerEvent("robbery:SellItem")
AddEventHandler("robbery:SellItem", function(amountToSell,totalSellPrice,itemName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemLabel = ESX.GetItemLabel(itemName)
	if xPlayer.getInventoryItem(itemName).count >= amountToSell then
		xPlayer.addMoney(totalSellPrice)
		xPlayer.removeInventoryItem(itemName, amountToSell)
		TriggerClientEvent("notification",source,"You sold "..amountToSell.."x "..itemLabel.." for $"..totalSellPrice .. ".")
	else
		TriggerClientEvent("notification",source,"You dont have enough items.", 2)
	end
end)
