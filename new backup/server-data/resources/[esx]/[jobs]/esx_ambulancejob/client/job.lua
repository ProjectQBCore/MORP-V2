local CurrentAction, CurrentActionMsg, CurrentActionData = nil, '', {}
local HasAlreadyEnteredMarker, LastHospital, LastPart, LastPartNum
local IsBusy = false
local spawnedVehicles, isInShopMenu = {}, false

function FastTravel(coords, heading)
	local playerPed = PlayerPedId()

	DoScreenFadeOut(800)

	while not IsScreenFadedOut() do
		Citizen.Wait(500)
	end

	ESX.Game.Teleport(playerPed, coords, function()
		DoScreenFadeIn(800)

		if heading then
			SetEntityHeading(playerPed, heading)
		end
	end)
end

liquid = false

-- Draw markers & Marker logic
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerCoords = GetEntityCoords(PlayerPedId())
		local letSleep, isInMarker, hasExited = true, false, false
		local currentHospital, currentPart, currentPartNum
		local pos = GetEntityCoords(GetPlayerPed(-1))
		for hospitalNum,hospital in pairs(Config.Hospitals) do 
		for k,v in ipairs(hospital.callmed) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)
                    local ped = PlayerPedId()
					if distance < 1 then
						DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Call medic")
						if IsControlJustPressed(1,38) and not liquid then
                           -- SetEntityHealth(ped, 0)
							ExecuteCommand("101")
							liquid = true
							Wait(10000)
							liquid = false
						end
					elseif distance < 3 then
						DrawText3D(v[1], v[2], v[3], 'Medic')
					end
				end
		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'ambulance' then
			

				-- Pharmacies
				for k,v in ipairs(hospital.Pharmacies) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					if distance < 1.5 then
						DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Pharmacy")
						if IsControlJustPressed(0, 38) then
							TriggerEvent('inventory:shop', 'PD Pharmacy')
						end
					elseif distance < 4 then
						DrawText3D(v[1], v[2], v[3], 'Pharmacy')
					end

				end

				for k,v in ipairs(hospital.Menu) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					if distance < 1 then
						DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Menu")
						if IsControlJustPressed(1,38) then
							OpenMenu()
						end
					elseif distance < 3 then
						DrawText3D(v[1], v[2], v[3], 'Menu')
					end
				end


					for k,v in ipairs(hospital.personal) do
                    if (GetDistanceBetweenCoords(pos, v[1], v[2], v[3], true) < 4.5) then
                        if true then
                            if (GetDistanceBetweenCoords(pos, v[1], v[2], v[3], true) < 1.5) then
                                DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Personal Stash")
                                if IsControlJustReleased(0, Keys["E"]) then
                                    TriggerServerEvent('ems:personalStash')
                                end
                            elseif (GetDistanceBetweenCoords(pos, v[1], v[2], v[3], true) < 2.5) then
                                DrawText3D(v[1], v[2], v[3], "Personal Stash")
                            end  
                        end
                    end
                end
				
				
				


                for k,v in ipairs(hospital.helicopter) do
                    if (GetDistanceBetweenCoords(pos, v.x, v.y, v.z, true) < 7.5) then
                            DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 0, 0, 222, false, false, false, true, false, false, false)
                            if (GetDistanceBetweenCoords(pos, v.x, v.y, v.z, true) < 7) then
                                if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                    DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Store the helicopter")
                                elseif (GetDistanceBetweenCoords(pos, v.x, v.y, v.z, true) < 1.5) then
                                    DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Helicopters")
                                end
                                if IsControlJustReleased(0, Keys["E"]) then
                                    if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                                        local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
                                        ESX.Game.DeleteVehicle(veh)
                                        local hashVehicule = GetEntityModel(veh)
                                        local VehName = GetDisplayNameFromVehicleModel(hashVehicule)
                                        TriggerServerEvent('police:logs', GetPlayerName(PlayerId()) .. "(" .. GetPlayerServerId(PlayerId()) .. ") " .. "Stored " .. VehName)
                                    elseif (GetDistanceBetweenCoords(pos, v.x, v.y, v.z, true) < 1.5) then
                                        local coords = hospital.helicopter[k]

                                        ESX.Game.SpawnVehicle(Config.Helicopter, vector3(coords.x, coords.y, coords.z), coords.h, function(veh)
                                            SetVehicleNumberPlateText(veh, "ZULU"..tostring(math.random(1000, 9999)))
                                            SetEntityHeading(veh, coords.h)
                                            closeMenuFull()
                                            TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
                                            SetVehicleEngineOn(veh, true, true)
                                            local hashVehicule = GetEntityModel(veh)
                                            local VehName = GetDisplayNameFromVehicleModel(hashVehicule)
                                            TriggerServerEvent('police:logs', GetPlayerName(PlayerId()) .. "(" .. GetPlayerServerId(PlayerId()) .. ") " .. "Taked out " .. VehName)
											TriggerServerEvent('garage:addKeys', GetVehicleNumberPlateText(veh))
                                        end)
                                    end
                                end
                            end  
                        end
                    end


				-- Vehicle Spawners
				for k,v in ipairs(hospital.Vehicles) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					DrawMarker(2, v[1], v[2], v[3], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 0, 0, 222, false, false, false, true, false, false, false)
					
					if distance < 1.5 then

						if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
							DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Store the vehicle")
						 else
							DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Vehicles")
						 end

						if IsControlJustPressed(0, 38) then
							if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
								local veh = GetVehiclePedIsIn(GetPlayerPed(-1))
								 ESX.Game.DeleteVehicle(veh)
								 local hashVehicule = GetEntityModel(veh)
								 local VehName = GetDisplayNameFromVehicleModel(hashVehicule)
								 TriggerServerEvent('police:logs', GetPlayerName(PlayerId()) .. "(" .. GetPlayerServerId(PlayerId()) .. ") " .. "Stored a vehicle")
							 else
								 MenuGarage()
								 currentGarage = k
								 Menu.hidden = not Menu.hidden
							 end
						end
						Menu.renderGUI()
					elseif distance < 4 then
						DrawText3D(v[1], v[2], v[3], 'Vehicles')
					end

				end

				for k,v in ipairs(hospital.Clothing) do
					local distance = GetDistanceBetweenCoords(playerCoords, v, true)

					if distance < 1.5 then
						DrawText3D(v[1], v[2], v[3], "~g~E~w~ - Clothing")
						if IsControlJustPressed(0, 38) then
							local elements = {}

							if RestoreOutfit then
								table.insert(elements, { label = "Restore Outfit", outfit = RestoreOutfit })
							end

							for k,v in pairs(Config.Outfits) do
								if GetHashKey(k) == GetEntityModel(PlayerPedId()) then
									for i=1, #v do
										local outfit = v[i]
										table.insert(elements, { label = outfit.label, outfit = outfit.data })
									end
								end
							end

							if #elements == 0 then
								table.insert(elements, { label = "There is no outfits." })
							end

							ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'clothing', {
								title    = 'Clothing',
								align    = 'top-left',
								elements = elements
							}, function(data, menu)
								menu.close()
								local plyPed = PlayerPedId()

								if not RestoreOutfit then
									RestoreOutfit = {}

									for k,v in pairs(Config.Components) do
										if v.type == 'prop' then
											RestoreOutfit[k] = { index = GetPedPropIndex(plyPed, v.component), texture = GetPedPropTextureIndex(v.component) }
										else
											RestoreOutfit[k] = { index = GetPedDrawableVariation(plyPed, v.component), texture = GetPedTextureVariation(plyPed, v.component) }
										end
									end
								end

								if data.current.outfit then
									for k,v in pairs(data.current.outfit) do
										local part = Config.Components[k]

										if part then
											if part.type == 'component' then
												SetPedComponentVariation(plyPed, part.component, v.index,v.texture)
											elseif part.type == 'prop' then
												SetPedPropIndex(plyPed, part.component, v.index,v.texture)
											end
										end
									end
									
									if data.current.label == "Restore Outfit" then
										RestoreOutfit = nil
									end
								end

							end, function(data, menu)
								menu.close()
							end)
						end
					elseif distance < 4 then
						DrawText3D(v[1], v[2], v[3], 'Clothing')
					end

				end



				function OpenMenu()
					if ESX.PlayerData.job.grade_name == 'boss' then
					local elements = {
						{ label = 'Storage', v = 'storage' },
					}
				
					if ESX.PlayerData.job.grade_name == 'boss' then
						table.insert(elements,{ label = 'Boss Menu', v = 'boss' })
					end
				  
					  ESX.UI.Menu.Open(
						'default', GetCurrentResourceName(), 'ambulance_menu',
						{
						  title    = 'ambulance',
						  align    = 'top-left',
						  elements = elements,
						},
						function(data, menu)
							if data.current.v == 'boss' then
								TriggerEvent('esx_society:openBossMenu', 'ambulance', function(data, menu)
									menu.close()
								end, {wash = false})
							elseif data.current.v == 'storage' then
								menu.close()
								TriggerEvent('inventory:stash', 'Ambulance Boss')
							end
				  
						end,
						function(data, menu)
						  menu.close()
						end
					  )
				  
					end
				  end

				-- Fast Travels
				for k,v in ipairs(hospital.FastTravels) do
					local distance = Vdist2(GetEntityCoords(PlayerPedId()), v.From)

					if distance < 1.5 then

						DrawText3D(v.From[1], v.From[2], v.From[3], "~g~E~w~ - Enter")
						if IsControlJustPressed(0, 38) then
							SetEntityCoords(PlayerPedId(), v.To.coords)
							SetEntityHeading(PlayerPedId(), v.To.heading)

						end
					elseif distance < 4 then
						DrawText3D(v.From[1], v.From[2], v.From[3], "Enter")
					end


				end
			--end
		end


	end
	end
end)

function MenuGarage()
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    Menu.addButton("Vehicles", "VehicleList", nil)
    Menu.addButton("Close Menu", "closeMenuFull", nil) 
    TriggerServerEvent('police:logs', GetPlayerName(PlayerId()) .. "(" .. GetPlayerServerId(PlayerId()) .. ") " .. "Opened police garage menu")
end

function closeMenuFull()
    Menu.hidden = true
    currentGarage = nil
    ClearMenu()
end

function VehicleList(isDown)
    ped = GetPlayerPed(-1);
    MenuTitle = "Vehicles:"
    ClearMenu()
    for k, v in pairs(Config.Vehicles) do
        if ESX.PlayerData.job.grade == v.grade or ESX.PlayerData.job.grade > v.grade then
            Menu.addButton(v.label, "TakeOutVehicle", v.name, "Garage", " Motor: 100%", " Body: 100%", " Fuel: 100%")
        end
    end
        
    Menu.addButton("Back", "MenuGarage",nil)
end

function TakeOutVehicle(vehicleInfo)
    ClearMenu()
    ESX.Game.SpawnVehicle(vehicleInfo, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), function(vehicle)
        TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
        local hashVehicule = GetEntityModel(vehicle)
		local VehName = GetDisplayNameFromVehicleModel(hashVehicule)
        TriggerServerEvent('police:logs', GetPlayerName(PlayerId()) .. '(' .. GetPlayerServerId(PlayerId()) .. ') ' .. 'Taked out "' .. VehName .. '"')
		TriggerServerEvent('garage:addKeys', GetVehicleNumberPlateText(vehicle))
    end)


end

function DrawText3D(x, y, z, text)
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


RegisterNetEvent('esx_ambulancejob:putInVehicle')
AddEventHandler('esx_ambulancejob:putInVehicle', function()
	local playerPed = PlayerPedId()
	local coords    = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords, 5.0) then
		local vehicle = GetClosestVehicle(coords, 5.0, 0, 71)

		if DoesEntityExist(vehicle) then
			local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

			for i=maxSeats - 1, 0, -1 do
				if IsVehicleSeatFree(vehicle, i) then
					freeSeat = i
					break
				end
			end

			if freeSeat then
				TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
			end
		end
	end
end)

function WarpPedInClosestVehicle(ped)
	local coords = GetEntityCoords(ped)

	local vehicle, distance = ESX.Game.GetClosestVehicle(coords)

	if distance ~= -1 and distance <= 5.0 then
		local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)

		for i=maxSeats - 1, 0, -1 do
			if IsVehicleSeatFree(vehicle, i) then
				freeSeat = i
				break
			end
		end

		if freeSeat then
			TaskWarpPedIntoVehicle(ped, vehicle, freeSeat)
		end
	else
		ESX.ShowNotification(_U('no_vehicles'))
	end
end

RegisterNetEvent('esx_ambulancejob:heal')
AddEventHandler('esx_ambulancejob:heal', function(healType, quiet)
	local playerPed = PlayerPedId()
	local maxHealth = GetEntityMaxHealth(playerPed)

	if healType == 'small' then
		local health = GetEntityHealth(playerPed)
		local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 8))
		SetEntityHealth(playerPed, newHealth)
	elseif healType == 'big' then
		SetEntityHealth(playerPed, maxHealth)
	end

	if not quiet then
		ESX.ShowNotification(_U('healed'))
	end
end)
