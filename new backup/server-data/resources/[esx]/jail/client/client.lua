local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil

local IsInMarker = false

local jailTime = 0

TriggerEvent('chat:addSuggestion', '/jail', 'Jail A Player', {
	{ name="id", help="The ID of the player" },
    { name="time", help="Minutes in jail" }
})

TriggerEvent('chat:addSuggestion', '/unjail', 'Un-Jail A Player', {
	{ name="id", help="The ID of the player" }
})

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(1)
	end

	while ESX.GetPlayerData() == nil do
		Wait(1)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	RefreshBlip()

	while true do
		Wait(1)
		local ply = PlayerPedId()
		local plyCoords = GetEntityCoords(ply)
		local foodD = Vdist2(plyCoords, 1775.8145751953, 2587.806640625, 45.712547302246)
		local pharmD = Vdist2(plyCoords, 1777.8935546875, 2589.1354980469, 45.723564147949)

		if foodD < 1.5 then
			DrawText3D(1775.8145751953, 2587.806640625, 45.712547302246, "[E] - Jail Food")
			if IsControlJustPressed(0, 38) then
				TriggerEvent('inventory:shop', 'Jail')
			end
		elseif foodD < 4 then
			DrawText3D(1775.8145751953, 2587.806640625, 45.712547302246, "Jail Food")
		elseif pharmD < 1.5 then
			DrawText3D(1777.8935546875, 2589.1354980469, 45.723564147949, "[E] - Pharmacy")
				if IsControlJustPressed(0, 38) then
				if ESX.GetPlayerData().job.name == 'police' then
					TriggerEvent('inventory:shop', 'PD Pharmacy')
				else
					TriggerEvent('inventory:shop', 'Pharmacy')
				end
			end
		elseif pharmD < 4 then
			DrawText3D(1777.8935546875, 2589.1354980469, 45.723564147949, "Pharmacy")
		end
	end
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
	ESX.PlayerData.job = job

	RefreshBlip()
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(newData)
	Citizen.Wait(10000)

	ESX.TriggerServerCallback("jail:retrieveJailTime", function(inJail, newJailTime)
		if inJail then

			jailTime = newJailTime

			JailLogin()
		end
	end)
end)

RegisterNetEvent("jail:jailPlayer")
AddEventHandler("jail:jailPlayer", function(newJailTime)
	jailTime = newJailTime

	Cutscene()
end)

RegisterNetEvent("jail:unJailPlayer")
AddEventHandler("jail:unJailPlayer", function()
	UnJail()
end)

function JailLogin()
	local random = math.random(1, #Config.JailPositions)
	local JailPosition = Config.JailPositions[random]
	SetEntityCoords(PlayerPedId(), JailPosition[1], JailPosition[2], JailPosition[3])
	SetEntityHeading(PlayerPedId(), JailPosition[4])
	TriggerEvent('notification', 'You went back to jail after sleep, good day!', 2)

	InJail()
end

function UnJail()
	jailTime = 0

	InJail()

	SetEntityCoords(PlayerPedId(),1848.0847167969, 2585.8989257813, 45.67204284668)
	SetEntityHeading(PlayerPedId(),267.74905395508)
	

	TriggerEvent('notification', 'You are released from the jail, good day!', 1)
end

function InJail()

	Citizen.CreateThread(function()

		while jailTime > 0 do

			jailTime = jailTime - 1

			TriggerEvent('notification', jailTime .. " minutes left.", 2)

			TriggerServerEvent("jail:updateJailTime", jailTime)

			if jailTime == 0 then
				UnJail()
				TriggerServerEvent("jail:updateJailTime", 0)
			end

			Citizen.Wait(60000)
		end

	end)

end

function RefreshBlip()

	if blip and DoesBlipExist(blip) then
		RemoveBlip(blip)
	end

	CreateThread(function()
		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
			blip = AddBlipForCoord(1845.69, 2585.8, 45.67)

			SetBlipSprite (blip, 60)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 0.7)
	
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentSubstringPlayerName('MORP Jail')
			EndTextCommandSetBlipName(blip)
		end
	end)

end
