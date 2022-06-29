local takeJob = {x=-406.355,y=1086.247,z=327.705}
local bossUI = {x=-422.862,y=1073.85,z=327.692}

ESX = nil
local PlayerData = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)
	local specialContact = {
		name       = 'Court',
		number     = 'courtjob',
		base64Icon = 'https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/256x256/plain/scales.png'
	}

	TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer

  Citizen.CreateThread(function()
  	while true do
  		Citizen.Wait(0)

  		if(PlayerData.job ~= nil and PlayerData.job.name == "court") then
  			DrawMarker(1,takeJob.x,takeJob.y,takeJob.z-1,0,0,0,0,0,0,2.001,2.0001,0.5001,0,155,255,200,0,0,0,0)

  			if(GetDistanceBetweenCoords(takeJob.x,takeJob.y,takeJob.z,  GetEntityCoords(GetPlayerPed(-1)), true) < 3) then 
  				Info("Press ~g~E~w~ to open your locker.")
  				if(IsControlJustPressed(1, 38)) then
  					openTakeService()
  				end
  			end
  		end
  	end
  end)

  if(PlayerData.job.grade_name == "boss" and PlayerData.job.name == "court") then
  	createSocietyMenu(bossUI.x,bossUI.y,bossUI.z,"court", "court")
  end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function Info(text, loop)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, loop, 1, 0)
end

function createSocietyMenu(x,y,z,name, menuName)
Citizen.CreateThread(function()
	local menuShowed = false
	while true do
		Citizen.Wait(10)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),x,y,z, true)
		DrawMarker(1,x,y,z-1,0,0,0,0,0,0,2.001,2.0001,0.5001,0,155,255,200,0,0,0,0)
		if(distance > 3 and menuShowed) then
			ESX.UI.Menu.CloseAll()
		end

		if(distance<3) then
			if(menuShowed) then
				Info("Press ~g~E~w~ to ~r~to close~w~.")
			else
				Info("Press ~g~E~w~ to ~g~to access~w~ the funds of the company.")
			end

			if(IsControlJustPressed(1, 38)) then
				menuShowed = not menuShowed

				if(menuShowed) then
					--print(name)
					renderMenu(name, menuName)
				else
					ESX.UI.Menu.CloseAll()
				end
			end
		end
	end
end)
end

function renderMenu(name, menuName)
	local _name = name
	local elements = {}

  	table.insert(elements, {label = 'withdraw society company', value = 'withdraw_society_money'})
  	table.insert(elements, {label = 'deposit money',        value = 'deposit_money'})
  	table.insert(elements, {label = 'wash money',        value = 'wash_money'})

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'police', {
			title    = menuName,
			align    = 'bottom-right',
			elements = elements
		}, function(data, menu)

			if data.current.value == 'withdraw_society_money' then

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount', {
						title = 'amount of withdrawal',
						align = 'bottom-right'
					}, function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil or amount < 0 then
							ESX.ShowNotification('invalid amount')
						else
							menu.close()
							--print(_name)
							TriggerServerEvent('esx_society:withdrawMoney', _name, amount)
						end
					end, function(data, menu)
						menu.close()
					end)
			end

			if data.current.value == 'deposit_money' then

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount', {
						title = 'deposit amount',
						align = 'bottom-right'
					}, function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil or amount < 0 then
							ESX.ShowNotification('invalid amount')
						else
							menu.close()
							TriggerServerEvent('esx_society:depositMoney', _name, amount)
						end
					end, function(data, menu)
						menu.close()
					end)
			end

			if data.current.value == 'wash_money' then

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'wash_money_amount', {
						title = 'Wash money',
						align = 'bottom-right'
					}, function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil or amount < 0 then
							ESX.ShowNotification('invalid amount')
						else
							menu.close()
							TriggerServerEvent('esx_society:washMoney', _name, amount)
						end
					end, function(data, menu)
						menu.close()
					end)
			end
		end, function(data, menu)

			menu.close()
		end)
end

function openTakeService()
  local elements = {
    {label = "citizen wear", value = 'citizen_wear'},
    {label = "lawyer wear", value = 'court_wear'}
  }

  ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'cloakroom', {
        title    = 'Service plug',
        align    = 'bottom-right',
        elements = elements,
        }, function(data, menu)

      menu.close()

      --Taken from SuperCoolNinja
      if data.current.value == 'citizen_wear' then
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
          local model = nil

          if skin.sex == 0 then
            model = GetHashKey("mp_m_freemode_01")
          else
            model = GetHashKey("mp_f_freemode_01")
          end

          RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(1)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)

          TriggerEvent('skinchanger:loadSkin', skin)
          TriggerEvent('esx:restoreLoadout')
        end)
      end

      if data.current.value == 'court_wear' then

        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

          if skin.sex == 0 then
            TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
          else
            TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
          end
           setComponentByGrade(skin.sex)
        end)
      end
    end, function(data, menu)

      menu.close()
    end)
end
