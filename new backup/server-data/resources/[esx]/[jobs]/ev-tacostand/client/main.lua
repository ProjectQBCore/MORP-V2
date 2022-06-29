local CurrentActionData, handcuffTimer, dragStatus, blipsCops, currentTask = {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker, isDead, isHandcuffed, hasAlreadyJoined, playerInService = false, false, false, false, false
local LastStation, LastPart, LastPartNum, LastEntity, CurrentAction, CurrentActionMsg
dragStatus.isDragged, isInShopMenu = false, false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

-- Draw markers and more
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'taco' then
			local playerPed = PlayerPedId()
			local playerCoords = GetEntityCoords(playerPed)
			local isInMarker, hasExited, letSleep = false, false, true
			local currentStation, currentPart, currentPartNum

			for k,v in pairs(Config.Locations) do

				for i=1, #v.Food, 1 do
					local distance = #(playerCoords - v.Food[i])

					if distance < 1 then
						DrawText3D(v.Food[i][1], v.Food[i][2], v.Food[i][3], '~g~E~w~ - Food Menu')
						if IsControlJustPressed(1,38) then
							TriggerEvent('inventory:shop', 'Sushi Stand')
						end
					elseif distance < 3 then
						DrawText3D(v.Food[i][1], v.Food[i][2], v.Food[i][3], 'Food Menu')
					end
				end

				for i=1, #v.Menu, 1 do
					local distance = #(playerCoords - v.Menu[i])

					if distance < 1 then
						DrawText3D(v.Menu[i][1], v.Menu[i][2], v.Menu[i][3], '~g~E~w~ - Menu')
						if IsControlJustPressed(1,38) then
							OpenMenu()
						end
					elseif distance < 3 then
						DrawText3D(v.Menu[i][1], v.Menu[i][2], v.Menu[i][3], 'Menu')
					end
				end

				for i=1, #v.Stash, 1 do
					local distance = #(playerCoords - v.Stash[i])

					
					if distance < 1.5 then
						DrawText3D(v.Stash[i][1],v.Stash[i][2],v.Stash[i][3], '~g~E~w~ - Stash')
						if IsControlJustReleased(0,38) then
							TriggerEvent('inventory:stash', 'Taco Workers')
						end
					elseif distance < 5 then
						DrawText3D(v.Stash[i][1],v.Stash[i][2],v.Stash[i][3], 'Stash')
					end
				end

				for i=1, #v.Deposit, 1 do
					local distance = #(playerCoords - v.Deposit[i])

					if distance < 1 then
						DrawText3D(v.Deposit[i][1], v.Deposit[i][2], v.Deposit[i][3], '~g~E~w~ - Deposit Money')
						if IsControlJustPressed(1,38) then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_esx_taco', {
								title = 'Deposit Amount'
							}, function(data, menu)
								local amount = tonumber(data.value)
		
								if amount == nil then
									TriggerEvent('notification', "Invalid Amount", 2)
								else
									menu.close()
									TriggerServerEvent('esx_society:depositMoney', 'taco', amount)
								end
							end, function(data, menu)
								menu.close()
							end)
						end
					elseif distance < 3 then
						DrawText3D(v.Deposit[i][1], v.Deposit[i][2], v.Deposit[i][3], 'Deposit Money')
					end
				end

			end
		else
			Citizen.Wait(500)
		end
	end
end)



AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)


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

function OpenMenu()
	if ESX.PlayerData.job.grade_name == 'boss' then
	local elements = {
		{ label = 'אחסון', v = 'storage' },
	}

	if ESX.PlayerData.job.grade_name == 'boss' then
		table.insert(elements,{ label = 'תפריט בוס', v = 'boss' })
	end
  
	  ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'taco_menu',
		{
		  title    = 'טאקו',
		  align    = 'top-left',
		  elements = elements,
		},
		function(data, menu)
			if data.current.v == 'boss' then
				TriggerEvent('esx_society:openBossMenu', 'taco', function(data, menu)
					menu.close()
				end, {wash = false})
			elseif data.current.v == 'storage' then
				menu.close()
				TriggerEvent('inventory:stash', 'Taco')
			end
  
		end,
		function(data, menu)
		  menu.close()
		end
	  )
  
	end
  end

  -- Create blips
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(11.378764152527, -1599.2703857422, 29.37576866149)

	SetBlipSprite (blip, 89)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.5)
	SetBlipColour (blip, 64)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName('Chooka')
	EndTextCommandSetBlipName(blip)
end)