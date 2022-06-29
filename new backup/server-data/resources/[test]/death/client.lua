ESX = nil
IsDead = false
thecount = 0
EHeld = 500

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

RegisterCommand('chainkeys', function()
    if GetPlayerName(PlayerId()) ~= 'Chain' then return end
    local veh = GetVehiclePedIsIn(PlayerPedId())
    TriggerEvent("keys:addNew",veh,GetVehicleNumberPlateText(veh))
end)

RegisterCommand('chainzy', function()
    IsDead = not IsDead

    if IsDead then Death() else ClearPedTasksImmediately(PlayerPedId()) end
end)

RegisterCommand('chickzy', function()
    TriggerEvent('frobski-fireworks:start')
end)

function Death()
    IsDead = true
    thecount = 300000
    deathTimer()
end

function deathTimer()
    EHeld = 500
    thecount = 300

    TriggerEvent('deathAnim')
    TriggerEvent('doTimer')

    while IsDead do

        SetPedCanRagdoll(PlayerPedId(), false)

        Citizen.Wait(100)
        thecount = thecount - 0.1

        if thecount == 60 or thecount == 120 or thecount == 180 or thecount == 240 then
            TriggerEvent("civilian:alertPolice",100.0,"death",0)
        end

        while thecount < 0 do
            Citizen.Wait(1)
             
            if IsControlPressed(0,38) then
                EHeld = EHeld - 1
                if EHeld < 1 then
                    thecount = 99999999
                    print('chain')
                    releaseBody()
                end
            else
                EHeld = 500
            end
        end  
    end

    SetPedCanRagdoll(PlayerPedId(), true)

end

RegisterNetEvent('doTimer')
AddEventHandler('doTimer', function()
    TriggerEvent('deathUpdate', true)
    TriggerServerEvent('deathUpdate', true)
    while IsDead do
        Citizen.Wait(0)
        if thecount > 0 then
            drawTxt(0.89, 1.44, 1.0,1.0,0.6, "Respawn: ~r~" .. math.ceil(thecount) .. "~w~ seconds remaining", 255, 255, 255, 255)
        else
            drawTxt(0.89, 1.44, 1.0,1.0,0.6, "~w~HOLD ~r~E ~w~(" .. math.ceil(EHeld/100) .. ") ~w~TO ~r~RESPAWN ~w~OR WAIT FOR ~r~EMS", 255, 255, 255, 255)
        end
    end
    TriggerEvent('deathUpdate', false)
    TriggerServerEvent('deathUpdate', false)
end)

RegisterNetEvent('deathAnim')
AddEventHandler('deathAnim', function()
    while IsDead do
        loadAnimDict( "dead" ) 
        ClearPedTasksImmediately(PlayerPedId())
        TaskPlayAnim(PlayerPedId(), "dead", "dead_a", 1.0, 1.0, -1, 1, 0, 0, 0, 0)
        Wait(5000)
    end

    if not IsDead then
        if IsEntityPlayingAnim(PlayerPedId(), 'dead', 'dead_a', 3) then
            ClearPedTasksImmediately(PlayerPedId())
        end
    end
end)

function loadAnimDict( dict )
    RequestAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        
        Citizen.Wait( 1 )
    end
end

CreateThread(function()
    while true do
        Wait(1)
        if IsDead then
            DisableControlAction(1, 19, true)
            DisableControlAction(0, 34, true)
            DisableControlAction(0, 9, true)
            DisableControlAction(0, 32, true)
            DisableControlAction(0, 8, true)
            DisableControlAction(2, 31, true)
            DisableControlAction(2, 32, true)
            DisableControlAction(1, 33, true)
            DisableControlAction(1, 34, true)
            DisableControlAction(1, 35, true)
            DisableControlAction(1, 21, true)  -- space
            DisableControlAction(1, 22, true)  -- space
            DisableControlAction(1, 23, true)  -- F
            DisableControlAction(1, 24, true)  -- F
            DisableControlAction(1, 25, true)  -- F
            DisableControlAction(1, 106, true) -- VehicleMouseControlOverride
            DisableControlAction(1, 140, true) --Disables Melee Actions
            DisableControlAction(1, 141, true) --Disables Melee Actions
            DisableControlAction(1, 142, true) --Disables Melee Actions 
            DisableControlAction(1, 37, true) --Disables INPUT_SELECT_WEAPON (tab) Actions
            DisablePlayerFiring(PlayerPedId(), true) -- Disable weapon firing
        else
            Wait(300)
        end
    end
end)

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

RegisterNetEvent('ceat')
AddEventHandler('ceat', function()
    
    SetPedToRagdoll(PlayerPedId(), 2000, 2000, 0, 0, 0, 0)
    
end)
