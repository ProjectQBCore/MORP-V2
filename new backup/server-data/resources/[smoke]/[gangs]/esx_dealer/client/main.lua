isDead, ESX, blip = false, nil, nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	RefreshBlip()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job

	RefreshBlip()
end)

function DrawText3D(x,y,z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


-- Draw markers and more
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'dealer' then
			local playerPed = PlayerPedId()
			local playerCoords = GetEntityCoords(playerPed)
			local isInMarker, hasExited = false, false
			local currentStation, currentPart, currentPartNum

			for k,v in pairs(Config.Locations) do

				for i=1, #v.Armories, 1 do
					local distance = #(playerCoords - v.Armories[i])

					if distance < 1.5 then
						DrawText3D(v.Armories[i][1],v.Armories[i][2],v.Armories[i][3], '[E] - Shop')
						if IsControlJustReleased(0,38) then
							TriggerEvent('inventory:shop', "WeaponDealer Shop")
						end
					elseif distance < 5 then
						DrawText3D(v.Armories[i][1],v.Armories[i][2],v.Armories[i][3], 'Shop')
					end
				end

								
				for i=1, #v.Stash, 1 do
					local distance = #(playerCoords - v.Stash[i])

					
					if distance < 1.5 then
						DrawText3D(v.Stash[i][1],v.Stash[i][2],v.Stash[i][3], '[E] - Stash')
						if IsControlJustReleased(0,38) then
							TriggerEvent('inventory:stash', 'Dealer')
						end
					elseif distance < 5 then
						DrawText3D(v.Stash[i][1],v.Stash[i][2],v.Stash[i][3], 'Stash')
					end
				end

				for i=1, #v.DrugsLocker, 1 do
					local distance = #(playerCoords - v.DrugsLocker[i])

					
					if distance < 1.5 then
						DrawText3D(v.DrugsLocker[i][1],v.DrugsLocker[i][2],v.DrugsLocker[i][3], '[E] - Drugs Locker')
						if IsControlJustReleased(0,38) then
							TriggerEvent('inventory:stash', 'Dealer Drugs Locker')
						end
					elseif distance < 5 then
						DrawText3D(v.DrugsLocker[i][1],v.DrugsLocker[i][2],v.DrugsLocker[i][3], 'Drugs Locker')
					end
				end

				for i=1, #v.Vehicles, 1 do
					local distance = #(playerCoords - v.Vehicles[i])

					
					if distance < 1.5 then
						if IsPedInAnyVehicle(PlayerPedId()) then
							DrawText3D(v.Vehicles[i][1],v.Vehicles[i][2],v.Vehicles[i][3], '[E] - Store Vehicle')
						else
							DrawText3D(v.Vehicles[i][1],v.Vehicles[i][2],v.Vehicles[i][3], '[E] - Spawn Vehicle')
						end

						if IsControlJustReleased(0,38) then
							if IsPedInAnyVehicle(PlayerPedId()) then
								local vehicle = GetVehiclePedIsIn(PlayerPedId())
								ESX.Game.DeleteVehicle(vehicle)
							else
								local coords = GetEntityCoords(PlayerPedId())
								ESX.Game.SpawnVehicle('rs318', vector3(coords[1], coords[2], coords[3]), GetEntityHeading(PlayerPedId()), function(vehicle)
									TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
									TriggerServerEvent('garage:addKeys', GetVehicleNumberPlateText(vehicle))
								end)
							end
						end
					elseif distance < 5 then
						if IsPedInAnyVehicle(PlayerPedId()) then
							DrawText3D(v.Vehicles[i][1],v.Vehicles[i][2],v.Vehicles[i][3], 'Store Vehicle')
						else
							DrawText3D(v.Vehicles[i][1],v.Vehicles[i][2],v.Vehicles[i][3], 'Spawn Vehicle')
						end
					end
				end

				if ESX.PlayerData.job.grade_name == 'boss' then
					for i=1, #v.BossActions, 1 do
						local distance = #(playerCoords - v.BossActions[i])

						if distance < 1.5 then
							DrawText3D(v.BossActions[i][1],v.BossActions[i][2],v.BossActions[i][3], '[E] - Boss Menu')
							if IsControlJustReleased(0,38) then
								TriggerEvent('esx_society:openBossMenu', 'dealer', function(data, menu)
									menu.close()
								end, { wash = false })
							end
						elseif distance < 5 then
							DrawText3D(v.BossActions[i][1],v.BossActions[i][2],v.BossActions[i][3], 'Boss Menu')
						end

					end
				end
			end

		else
			Citizen.Wait(500)
		end
	end
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

function IsdealerVehicle(veh)
	for k,v in pairs(Config.Cars) do
		if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == v.name then
			return true
		elseif string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(veh))) == string.lower(v.name) then
			return true
		end
	end

	return false
end


function RefreshBlip()

	if blip and DoesBlipExist(blip) then
		RemoveBlip(blip)
	end

	CreateThread(function()
		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'dealer' then
			blip = AddBlipForCoord(-1882.4534534, 2065.7964564564, 142.175435345)

			SetBlipSprite (blip, 40)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 0.7)
	
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentSubstringPlayerName('Safe House')
			EndTextCommandSetBlipName(blip)
		end
	end)

end