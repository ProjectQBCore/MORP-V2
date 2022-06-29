local ESX = nil
local fixingvehicle = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


RegisterNetEvent('heavyVest')
AddEventHandler('heavyVest', function()
	local playerPed = GetPlayerPed(-1)
	exports['taskbar']:taskBar(8000, "Heavy Armor")
	SetPedArmour(playerPed, 100)
	TriggerEvent('notification', 'You have used bulletproof armor.', 1)
	TriggerServerEvent('RemoveItem', 'vest')
end)

RegisterNetEvent('PDheavyVest')
AddEventHandler('PDheavyVest', function()
	local playerPed = GetPlayerPed(-1)
	exports['taskbar']:taskBar(8000, "PD Heavy Armor")
	SetPedArmour(playerPed, 100)
	TriggerEvent('notification', 'You have used bulletproof armor.', 1)
	TriggerServerEvent('RemoveItem', 'policevest')
end)

RegisterNetEvent('veh:repairing')
AddEventHandler('veh:repairing', function(itemid)
    local playerped = PlayerPedId()
    local coordA = GetEntityCoords(playerped, 1)
    local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 100.0, 0.0)
    local targetVehicle = ESX.Game.GetClosestVehicle(coordA)

    local advanced = false
    if itemid == "advrepairkit" then
        advanced = true
    end

    if targetVehicle ~= 0 then

        local d1,d2 = GetModelDimensions(GetEntityModel(targetVehicle))
        local moveto = GetOffsetFromEntityInWorldCoords(targetVehicle, 0.0,d2["y"]+0.5,0.0)
        local dist = #(vector3(moveto["x"],moveto["y"],moveto["z"]) - GetEntityCoords(PlayerPedId()))
        local count = 1000

        while dist > 1.0 and count > 0 do
            dist = #(vector3(moveto["x"],moveto["y"],moveto["z"]) - GetEntityCoords(PlayerPedId()))
            Citizen.Wait(1)
            count = count - 1
            DrawText3Ds(moveto["x"],moveto["y"],moveto["z"],"Move here to repair.")
        end

        if reapiring then return end
        reapiring = true
        
        local timeout = 20

        NetworkRequestControlOfEntity(targetVehicle)

        while not NetworkHasControlOfEntity(targetVehicle) and timeout > 0 do 
            NetworkRequestControlOfEntity(targetVehicle)
            Citizen.Wait(100)
            timeout = timeout -1
        end


        if dist < 1.0 then
            TriggerEvent("animation:repair",targetVehicle)
            fixingvehicle = true

            local repairlength = 1000

            if advanced then
                repairlength = ((3500 - (GetVehicleEngineHealth(targetVehicle) * 1.5) - (GetVehicleBodyHealth(targetVehicle)) / 2) * 2.5) + 2000
            else
                repairlength = ((3500 - (GetVehicleEngineHealth(targetVehicle) * 1.5) - (GetVehicleBodyHealth(targetVehicle)) / 2) * 1.5) + 2000
            end

            local finished = exports["taskbar"]:taskBar(repairlength,"Repairing")
            if finished == 100 then
                

                    TriggerEvent('veh.randomDegredation',30,targetVehicle,3)

					if advanced then
						--SetVehicleFixed(targetVehicle)
                        TriggerEvent("veh:repairing","avrepairkit", 1)
                        SetVehicleEngineHealth(targetVehicle, 900.0)
                        SetVehicleBodyHealth(targetVehicle, 945.0)

                    else
                        TriggerEvent("veh:repairing","repairkit",1)
						SetVehicleFixed(targetVehicle)
                        SetVehicleEngineHealth(targetVehicle, 200.0)
                        SetVehicleBodyHealth(targetVehicle, 945.0)
                        SetVehicleEngineHealth(targetVehicle, 600.0)
                        SetVehicleBodyHealth(targetVehicle, 800.0)
                    end                    

                for i = 0, 5 do
                    SetVehicleTyreFixed(targetVehicle, i) 
                end
            end
			ClearPedTasks(playerped)

			if itemid ~= nil then
				TriggerServerEvent('RemoveItem', 'avrepairkit')
			end

        end
        fixingvehicle = false
    end
    reapiring = false
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)

end

RegisterNetEvent('animation:repair')
AddEventHandler('animation:repair', function(veh)
    SetVehicleDoorOpen(veh, 4, 0, 0)
    RequestAnimDict("mini@repair")
    while not HasAnimDictLoaded("mini@repair") do
        Citizen.Wait(0)
    end

    TaskTurnPedToFaceEntity(PlayerPedId(), veh, 1.0)
    Citizen.Wait(10)

    while fixingvehicle do
        local anim3 = IsEntityPlayingAnim(PlayerPedId(), "mini@repair", "fixing_a_player", 3)
        if not anim3 then
            TaskPlayAnim(PlayerPedId(), "mini@repair", "fixing_a_player", 8.0, -8, -1, 16, 0, 0, 0, 0)
        end
        Citizen.Wait(1)
    end
    SetVehicleDoorShut(veh, 4, 1, 1)
end)


RegisterNetEvent('parachute:use')
AddEventHandler('parachute:use',function()
  if not HasPedGotWeapon(GetPlayerPed(-1), GetHashKey("GADGET_PARACHUTE"), false) then
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("GADGET_PARACHUTE"), 150, true, true)
 	  TriggerServerEvent('parachute:remove')
  else
 	  TriggerEvent('notification', "You already have a parachute.", 2)
  end
end)