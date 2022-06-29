ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local WeaponAmmo = {}

RegisterServerEvent("weapons:server:LoadWeaponAmmo")
AddEventHandler('weapons:server:LoadWeaponAmmo', function()
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    WeaponAmmo[xPlayer.identifier] = {}
    MySQL.Async.fetchAll("SELECT * FROM `user_ammo` WHERE `steam` = '" .. xPlayer.identifier .. "'", {}, function(result)
        if result[1] ~= nil then
            local ammo = json.decode(result[1].ammo)
            if ammo ~= nil then
                for ammotype, amount in pairs(ammo) do 
                    WeaponAmmo[xPlayer.identifier][ammotype] = amount
                end
            end
        end

        TriggerClientEvent("weapons:client:LoadedWeaponAmmo", src)
	end)
end)

RegisterServerEvent("weapons:server:AddWeaponAmmo")
AddEventHandler('weapons:server:AddWeaponAmmo', function(type, amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local type = tostring(type):upper()
    local amount = tonumber(amount)
    if WeaponAmmo[xPlayer.identifier] ~= nil then
        if next(WeaponAmmo[xPlayer.identifier]) ~= nil then
            if WeaponAmmo[xPlayer.identifier][type] ~= nil then
                WeaponAmmo[xPlayer.identifier][type] = WeaponAmmo[xPlayer.identifier][type] + amount
            else
                WeaponAmmo[xPlayer.identifier][type] = amount
            end
        else
            WeaponAmmo[xPlayer.identifier][type] = amount
        end
    end
end)

RegisterServerEvent("weapons:server:UpdateWeaponAmmo")
AddEventHandler('weapons:server:UpdateWeaponAmmo', function(type, amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local type = tostring(type):upper()
    local amount = tonumber(amount)
    if WeaponAmmo[xPlayer.identifier] ~= nil and next(WeaponAmmo[xPlayer.identifier]) ~= nil then
        for ammotype, ammo in pairs(WeaponAmmo[xPlayer.identifier]) do
            if type == ammotype then
                WeaponAmmo[xPlayer.identifier][ammotype] = amount
                return
            end
        end
    end
end)

RegisterServerEvent("weapons:server:SaveWeaponAmmo")
AddEventHandler('weapons:server:SaveWeaponAmmo', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil then
        MySQL.Async.fetchAll("SELECT * FROM `user_ammo` WHERE `steam` = '" .. xPlayer.identifier .. "'", {}, function(result)
            if result[1] == nil then
                MySQL.Sync.execute("INSERT INTO `user_ammo` (`steam`, `ammo`) VALUES ('" .. xPlayer.identifier .. "', '"..json.encode(WeaponAmmo[xPlayer.identifier]).."')", {})
            else
                MySQL.Sync.execute("UPDATE `user_ammo` SET ammo='" .. json.encode(WeaponAmmo[xPlayer.identifier]) .. "' WHERE `steam` = '" .. xPlayer.identifier .. "'", {})
            end
        end)
    end
end)

ESX.RegisterServerCallback("weapon:server:GetWeaponAmmo", function(source, cb, weapon)
    local xPlayer = ESX.GetPlayerFromId(source)
    local ammotype = tostring(Config.Weapons[weapon]["ammotype"]):upper()
    if xPlayer ~= nil and ammotype then
        if WeaponAmmo[xPlayer.identifier] ~= nil and next(WeaponAmmo[xPlayer.identifier]) ~= nil then
            local amount = tonumber(WeaponAmmo[xPlayer.identifier][ammotype]) ~= 0 and tonumber(WeaponAmmo[xPlayer.identifier][ammotype]) or 0
            cb(amount)
        else
            cb(0)
        end
    else
        cb(0)
    end
end)

ESX.RegisterUsableItem("disc_ammo_pistol", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("disc_ammo_pistol", 1)
    TriggerClientEvent("weapon:client:AddAmmo", source, "AMMO_PISTOL", 30)
    TriggerClientEvent("notification", source, "Used Pistol Ammo.")
end)

ESX.RegisterUsableItem("disc_ammo_rifle", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("disc_ammo_rifle", 1)
    TriggerClientEvent("weapon:client:AddAmmo", source, "AMMO_RIFLE", 40)
    TriggerClientEvent("notification", source, "Used Rifle Ammo.")
end)

ESX.RegisterUsableItem("disc_ammo_smg", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("disc_ammo_smg", 1)
    TriggerClientEvent("weapon:client:AddAmmo", source, "AMMO_SMG", 40)
    TriggerClientEvent("notification", source, "Used SMG Ammo.")
end)

ESX.RegisterUsableItem("disc_ammo_shotgun", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("disc_ammo_shotgun", 1)
    TriggerClientEvent("weapon:client:AddAmmo", source, "AMMO_SHOTGUN", 15)
    TriggerClientEvent("notification", source, "Used Shotgun Ammo.")
end)

ESX.RegisterUsableItem("disc_ammo_mg", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem("disc_ammo_mg", 1)
    TriggerClientEvent("weapon:client:AddAmmo", source, "AMMO_MG", 30)
    TriggerClientEvent("notification", source, "Used MG Ammo.")
end)
