ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local SafeCodes = {}

Citizen.CreateThread(function()
    while true do 
        SafeCodes = {
            [1] = math.random(1000, 9999),
            [2] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [3] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [4] = math.random(1000, 9999),
            [5] = math.random(1000, 9999),
            [6] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [7] = math.random(1000, 9999),
            [8] = math.random(1000, 9999),
            [9] = math.random(1000, 9999),
            [10] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [11] = math.random(1000, 9999),
            [12] = math.random(1000, 9999),
            [13] = math.random(1000, 9999),
            [14] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [15] = math.random(1000, 9999),
            [16] = math.random(1000, 9999),
            [17] = math.random(1000, 9999),
            [18] = {math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149), math.random(150.0, 359.0), math.random(1, 149)},
            [19] = math.random(1000, 9999),
        }
        Citizen.Wait((1000 * 60) * 40)
    end
end)

RegisterServerEvent('ev-storerobbery:server:takeMoney')
AddEventHandler('ev-storerobbery:server:takeMoney', function(register, isDone)
    local src   = source
    local Player = ESX.GetPlayerFromId(src)

    Player.addMoney(math.random(150, 250))

    local luck = math.random(1, 100)
    if luck <= 40 then
        Player.addInventoryItem("rollcash", math.random(2, 5))
    end

    if isDone then
        if math.random(1, 3) == 2 then
            local code = SafeCodes[Config.Registers[register].safeKey]
            TriggerClientEvent("notification",src,"Your safe security code: "..tostring(code))
        end
    end
end)

RegisterServerEvent('ev-storerobbery:server:setRegisterStatus')
AddEventHandler('ev-storerobbery:server:setRegisterStatus', function(register)
    TriggerClientEvent('ev-storerobbery:client:setRegisterStatus', -1, register, true)
    Config.Registers[register].robbed   = true
    Config.Registers[register].time     = Config.ResetTime
end)

RegisterServerEvent('ev-storerobbery:server:setSafeStatus')
AddEventHandler('ev-storerobbery:server:setSafeStatus', function(safe)
    TriggerClientEvent('ev-storerobbery:client:setSafeStatus', -1, safe, true)
    Config.Safes[safe].robbed = true
end)

RegisterServerEvent('ev-storerobbery:server:SafeReward')
AddEventHandler('ev-storerobbery:server:SafeReward', function(safe)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    Player.addMoney(math.random(1000, 3000))
    local luck = math.random(1, 100)
    if luck <= 50 then
        Player.addItem("rollcash", math.random(5, 10))
    end
end)

RegisterServerEvent('ev-storerobbery:server:callCops')
AddEventHandler('ev-storerobbery:server:callCops', function(type, safe, streetLabel, coords)
    TriggerClientEvent("ev-storerobbery:client:robberyCall", -1, type, safe, streetLabel, coords)
end)

Citizen.CreateThread(function()
    while true do
        for k, v in pairs(Config.Registers) do
            if Config.Registers[k].time > 0 and (Config.Registers[k].time - Config.TickInterval) >= 0 then
                Config.Registers[k].time = Config.Registers[k].time - Config.TickInterval
            else
                Config.Registers[k].time = 0
                Config.Registers[k].robbed = false
                TriggerClientEvent('ev-storerobbery:client:setRegisterStatus', -1, k, false)
            end
        end
        Citizen.Wait(Config.TickInterval)
    end
end)

ESX.RegisterServerCallback('ev-storerobbery:server:isCombinationRight', function(source, cb, safe)
    cb(SafeCodes[safe])
end)

ESX.RegisterServerCallback('ev-storerobbery:server:getRegisterStatus', function(source, cb)
    cb(Config.Registers)
end)

ESX.RegisterServerCallback('ev-storerobbery:server:getSafeStatus', function(source, cb)
    cb(Config.Safes)
end)

ESX.RegisterServerCallback('ev-storerobbery:server:getOfficers', function(source, cb)
    local amount = 0
    for k, v in pairs(ESX.GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(v)

        if xPlayer.job.name == 'police' then
            amount = amount + 1
        end
    end

    cb(amount)
end)

