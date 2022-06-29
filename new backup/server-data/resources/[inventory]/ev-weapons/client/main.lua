
local ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

    ESX.PlayerData = ESX.GetPlayerData()
    
    TriggerServerEvent("weapons:server:LoadWeaponAmmo")
end)

RegisterNetEvent("weapons:client:LoadedWeaponAmmo")
AddEventHandler("weapons:client:LoadedWeaponAmmo", function()
    Citizen.CreateThread(function() 
        while true do
            TriggerServerEvent("weapons:server:SaveWeaponAmmo")
            Citizen.Wait((1000 * 60)*2)
        end
    end)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsPedShooting(GetPlayerPed(-1)) then
            local weapon = GetSelectedPedWeapon(GetPlayerPed(-1))
            local ammo = GetAmmoInPedWeapon(GetPlayerPed(-1), weapon)
            TriggerServerEvent("weapons:server:UpdateWeaponAmmo", Config.Weapons[weapon]["ammotype"], tonumber(ammo))
        end
    end 
end)

RegisterNetEvent('weapon:client:AddAmmo')
AddEventHandler('weapon:client:AddAmmo', function(type, amount)
    local weapon = GetSelectedPedWeapon(GetPlayerPed(-1))
    if Config.Weapons[weapon] ~= nil and Config.Weapons[weapon]["ammotype"] == type:upper() then
        local total = (GetAmmoInPedWeapon(GetPlayerPed(-1), weapon) + amount)
        local _, maxAmmo = GetMaxAmmo(GetPlayerPed(-1), weapon)

        if total < maxAmmo then
            TaskReloadWeapon(GetPlayerPed(-1))
            SetPedAmmo(GetPlayerPed(-1), weapon, total)
        else
            TriggerEvent('notification', "Max ammo.", 2)
        end
        
    end
    TriggerServerEvent("weapons:server:AddWeaponAmmo", type, amount)
    TriggerServerEvent("weapons:server:SaveWeaponAmmo")
end)
