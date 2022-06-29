ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

showNames = false

local afkTimeout = 1800 
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
						TriggerEvent('chat:addMessage', 'Time left before being kicked for AFK:', timer)
					end
					timer = timer - 1
				else
					TriggerServerEvent('afkkick:kickplayer')
				end
			else
				timer = afkTimeout
			end
			previousPosition = currentPosition
			previousHeading  = currentHeading
		end
	end
end)

function DrawText3D(x, y, z, text, lines)
    -- Amount of lines default 1
    if lines == nil then
        lines = 1
    end

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
    DrawRect(0.0, 0.0+0.0125 * lines, 0.017+ factor, 0.03 * lines, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function GetPlayersFromCoords(coords, distance)
    local players = GetPlayers()
    local closePlayers = {}

    if coords == nil then
		coords = GetEntityCoords(GetPlayerPed(-1))
    end
    if distance == nil then
        distance = 5.0
    end
    for _, player in pairs(players) do
		local target = GetPlayerPed(player)
		local targetCoords = GetEntityCoords(target)
		local targetdistance = GetDistanceBetweenCoords(targetCoords, coords.x, coords.y, coords.z, true)
		if targetdistance <= distance then
			table.insert(closePlayers, player)
		end
    end
    
    return closePlayers
end

--[[------------------------------------------------------------------------
    Remove Reticle on ADS (Third Person) Resource created by TheLukasGran
------------------------------------------------------------------------]]--
local scopedWeapons = 
{
    100416529,  -- WEAPON_SNIPERRIFLE
    205991906,  -- WEAPON_HEAVYSNIPER
    3342088282  -- WEAPON_MARKSMANRIFLE
}

function HashInTable( hash )
    for k, v in pairs( scopedWeapons ) do 
        if ( hash == v ) then 
            return true 
        end 
    end 

    return false 
end 

function ManageReticle()
    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
        local _, hash = GetCurrentPedWeapon( ped, true )

        if ( GetFollowPedCamViewMode() ~= 4 and IsPlayerFreeAiming() and not HashInTable( hash ) ) then 
            HideHudComponentThisFrame( 14 )
        end 
    end 
end 

Citizen.CreateThread( function()
    while true do 
	
		HideHudComponentThisFrame( 14 )		
		Citizen.Wait( 0 )

    end 
end )

Citizen.CreateThread(function()
    while true do

        if showNames then
            for _, player in pairs(GetPlayersFromCoords(GetEntityCoords(GetPlayerPed(-1)), 10.0)) do
                local PlayerId = GetPlayerServerId(player)
                local PlayerPed = GetPlayerPed(player)
                local PlayerName = GetPlayerName(player)
                local PlayerCoords = GetEntityCoords(PlayerPed)

                DrawText3D(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z + 1.0, '['..PlayerId..'] '..PlayerName)
            end
        else
            Citizen.Wait(1000)
        end

        Citizen.Wait(3)
    end
end)

RegisterNetEvent('ShowNames')
AddEventHandler('ShowNames', function(type)
 if type == 'toggle' then
        if Enabled then
            Enabled = false
            print("close")
			showNames = true
        else
            Enabled = true
            showNames = false
        end
end
end)
