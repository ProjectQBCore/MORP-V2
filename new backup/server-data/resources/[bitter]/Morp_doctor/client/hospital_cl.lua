---------- VARIABLES ----------
local treatment = false
local timer = false
local blips = {
 --   {name="Hospital", id=61, x = 338.85, y = -1394.56, z = 31.51, color = 1, heading=49.404, scale=0.7 },
    {name="Hospital", id=61, x = -449.67, y = -340.83, z = 33.50, color = 1, heading=82.17, scale=0.7 },
    {name="Hospital", id=61, x = 306.25, y = -1454.23, z = 29.0, color= 1, heading=4.8, scale=0.7},
    {name="Hospital", id=61, x = -874.79931640625, y = -307.5654296875, z = 38.580024719238, color= 1, heading=350.95, scale=0.7},
    {name="Hospital", id=61, x = -496.97717285156, y = -336.14242553711, z = 33.501697540283, color= 1, heading=253.92, scale=0.7},
    {name="Hospital", id=61, x = 1839.5194091797, y = 3672.591796875, z = 33.276710510254, color= 1, heading=214.90, scale=0.7},
    {name="Hospital", id=61, x = -263.51, y = 6312.7, z = 31.44, color= 1, heading=305.0, scale=0.7},
}
---------- FONCTIONS ----------
function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end
function ShowInfo(text, state)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)DisplayHelpTextFromStringLabel(0, state, 0, -1)
end
---------- CITIZEN ----------
Citizen.CreateThread(function()
    RequestModel(GetHashKey("u_m_y_pogo_01"))
    while not HasModelLoaded(GetHashKey("u_m_y_pogo_01")) do
        Wait(1)
    end
    for _, item in pairs(blips) do
        local pedId = CreatePed(4, 0xd47303ac, item.x, item.y, item.z, item.heading, false, true)
        SetPedCombatAttributes(pedId, 46, true)
        SetPedFleeAttributes(pedId, 0, 0)
        SetBlockingOfNonTemporaryEvents(pedId, true)
        SetEntityAsMissionEntity(pedId, true, true)
        SetEntityInvincible(pedId, true)
        FreezeEntityPosition(pedId, true)
    end
end)
Citizen.CreateThread(function()
    while true do
        local player1 = GetPlayerPed(-1)
        Citizen.Wait(0)
        for _, item in pairs(blips) do
            if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 20 then
                DrawMarker(0, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 0, 155, 255, 200, 0, 0, 0, 0)
                if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x,item.y,item.z, true) <= 2 then
                    ShowInfo("Press ~INPUT_VEH_HORN~ to be treated ~r~(~h~~g~1500 $~r~)", 0)
                    if (IsControlJustPressed(1,38)) and (GetEntityHealth(GetPlayerPed(-1)) < 200) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 2) then      
						FreezeEntityPosition(player1, true)
                        exports['mythic_notify']:DoHudText('inform', 'The doctor will treat you, please be patient')
                        treatment = true
                    end
                end
            end
            if (IsControlJustPressed(1,38)) and (GetEntityHealth(GetPlayerPed(-1)) == 200) and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 2) then
				exports['mythic_notify']:DoHudText('inform', 'You dont need treatment!')
            end
            if treatment == true then
                Citizen.Wait(15000)
                timer = true
            end
            if treatment == true and timer == true and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 2) then
                TriggerServerEvent('erp-hospital:price')
                local player = PlayerPedId()
                if IsPedDeadOrDying(player) then
                    local playerPos = GetEntityCoords(player, true)
                    NetworkResurrectLocalPlayer(playerPos, true, true, false)
                end
                SetEntityHealth(player, GetEntityMaxHealth(player))
                ClearPedBloodDamage(player)
                SetPlayerSprint(PlayerId(), true)
                TriggerEvent('mythic_hospital:client:RemoveBleed')
                TriggerEvent('mythic_hospital:client:ResetLimbs')
                TriggerEvent('esx_ambulancejob:revive')
                FreezeEntityPosition(player1, false)
				exports['mythic_notify']:DoHudText('success', 'The Doctor treated you')
                treatment = false
                timer = false
            end
            if treatment == true and timer == true and (GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) > 2) then
				exports['mythic_notify']:DoHudText('inform', 'The doctor was unable to treat you because you moved')
                FreezeEntityPosition(player1, false)
                treatment = false
                timer = false
            end
        end
    end
end)

-- NEW DOCTOR AND AFK

AddEventHandler('esx:onPlayerDeath', function(data)
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            local playerPed = GetPlayerPed(-1)
            if IsEntityDead(playerPed) then
                if IsControlJustReleased(0, 47) then
                    ESX.TriggerServerCallback('adharsh:doctor', function(CopsConnected)
                        if Config.doctor >= CopsConnected then
                            player = GetPlayerPed(-1)
                            Citizen.Wait(3000)
                            TriggerEvent('showNotify',"I Am Dr.Maya V. Please Wait 3 minute's Ill Be There Soon !", source)
                            Citizen.Wait(60000)
                            if IsEntityDead(playerPed) then
                                TriggerEvent('showNotify',"I Am 2 minute's Away From You !", source)
                            end
                            Citizen.Wait(60000)
                            if IsEntityDead(playerPed) then
                                TriggerEvent('showNotify',"I Am Almost There, Just Wait 1 minute !", source)
                            end
                            Citizen.Wait(60000)
                            if IsEntityDead(playerPed) then
                                TriggerEvent('esx_ambulancejob:revive', player)
                            end
                        end
                    end)
                    break
                end
            end
        end
    end)
end)

-- AFK
local afkTimeout = 1200 -- AFK kick time limit in seconds
local timer = 0
local currentPosition  = nil
local previousPosition = nil
local currentHeading   = nil
local previousHeading  = nil
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		playerPed = PlayerPedId()
		if playerPed then
			currentPosition = GetEntityCoords(playerPed, true)
			currentHeading  = GetEntityHeading(playerPed)
			if currentPosition == previousPosition and currentHeading == previousHeading then
				if timer > 0 then
					if timer == math.ceil(afkTimeout / 4) then
						TriggerEvent('chat:addMessage', { args = { _U('afk'), _U('afk_warning', timer) } })
					end
					timer = timer - 1
				else
					TriggerServerEvent('afkkick:kickplayer')
				end
			else
				timer = afkTimeout
			end
			-- (always) update variables
			previousPosition = currentPosition
			previousHeading  = currentHeading
		end
	end
end)