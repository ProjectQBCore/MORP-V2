ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_garbagejob:server:PayShit')
AddEventHandler('esx_garbagejob:server:PayShit', function(money)
    local xPlayer = ESX.GetPlayerFromId(source)
    if money < 1 then
        TriggerClientEvent('notification', source, 'You have no salary!', 2)
    else
        xPlayer.addMoney(money)
        TriggerClientEvent('notification', source, 'You were got a total salary: $' .. money, 2)
    end
end)