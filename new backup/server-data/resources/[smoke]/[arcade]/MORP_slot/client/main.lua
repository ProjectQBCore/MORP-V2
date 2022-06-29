--discord shop : https://discord.gg/3wwzfmf---
--discord leaks : https://discord.gg/39mJqPU--
----------------------SP#5201------------------
local input = {["E"] = 38,["DOWN"] = 173,["TOP"] = 27,["NENTER"] =  201}
ESX                           = nil
local PlayerData                = {}



Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(1)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)


Citizen.CreateThread(function()
SetNuiFocus(false, false)
end)


RegisterNetEvent('errormessage2')
AddEventHandler('errormessage2', function()
PlaySound(-1, "CHECKPOINT_MISSED", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
end)


RegisterNetEvent('spinit2')
AddEventHandler('spinit2', function()
	PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
	
	SendNUIMessage({
			canspin = true
		})
	Citizen.Wait(100)
	
		SendNUIMessage({
			canspin = false
		})

end)


RegisterNUICallback('close', function(data, cb)

	SetNuiFocus(false, false)
	SendNUIMessage({
		show = false
	})
	cb("ok")
	PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
	
end)




RegisterNUICallback('payforplayer', function(winnings, cb)
	PlaySound(-1, "ROBBERY_MONEY_TOTAL", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1)
	TriggerServerEvent('payforplayer2',winnings)
end)


RegisterNUICallback('playerpays', function(bet, cb)
	TriggerServerEvent('playerpays2',bet)
end)

local moneymachine_slot = {
	{ ['x'] = 944.78, ['y'] = 46.19, ['z'] = 71.43 },
	{ ['x'] = 942.57, ['y'] = 47.68, ['z'] = 71.43 },
	{ ['x'] = 943.27, ['y'] = 50.12, ['z'] = 71.43 },
	{ ['x'] = 945.97, ['y'] = 50.32, ['z'] = 71.43 },
	
	{ ['x'] = 946.88, ['y'] = 47.87, ['z'] = 71.43 },
	{ ['x'] = 948.51, ['y'] = 52.04, ['z'] = 71.43 },
	{ ['x'] = 951.31, ['y'] = 52.3, ['z'] = 71.43 },
	{ ['x'] = 950.17, ['y'] = 71.43, ['z'] = 71.43 },
	
	{ ['x'] = 951.55, ['y'] = 53.89, ['z'] = 71.43 },
	{ ['x'] = 952.07, ['y'] = 52.89, ['z'] = 71.43 },
	{ ['x'] = 952.71, ['y'] = 52.03, ['z'] = 71.43 },
	{ ['x'] = 953.58, ['y'] = 51.03, ['z'] = 71.43 },
	
	{ ['x'] = 954.68, ['y'] = 50.8, ['z'] = 71.43 },
	{ ['x'] = 955.82, ['y'] = 50.67, ['z'] = 71.43 },
	{ ['x'] = 956.82, ['y'] = 50.71, ['z'] = 71.43 },
	{ ['x'] = 950.18, ['y'] = 48.25, ['z'] = 71.43 },
	
	{ ['x'] = 941.23, ['y'] = 49.69, ['z'] = 71.43 },
	{ ['x'] = 944.15, ['y'] = 51.71, ['z'] = 71.43 },
	{ ['x'] = 944.56, ['y'] = 52.52, ['z'] = 71.43 },
	{ ['x'] = 956.82, ['y'] = 46.66, ['z'] = 71.43 },
}



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(moneymachine_slot) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 20.0)then
				DrawMarker(29, v.x, v.y, v.z - 0, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 0, 325, 165, 165, 0,0, 0,0)
				if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 1.0)then
						DisplayHelpText("Press ~INPUT_CONTEXT~   ~y~to play")
					if IsControlJustPressed(1,input["E"]) then
						SendNUIMessage({
							show = true
						})
						SetNuiFocus(true,true)
						PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
					end
				end
			end
		end
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

