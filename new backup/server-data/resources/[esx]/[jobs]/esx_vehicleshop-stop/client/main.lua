
local ESX = nil

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
AddEventHandler('esx:setJob', function (job)
	ESX.PlayerData.job = job
end)

-- Display markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local coords = GetEntityCoords(PlayerPedId())

		for k,v in pairs(Config.Zones) do
			if ((k == "Boss" and IsCarDealer(true)) or (k ~= "Boss" and IsCarDealer(false))) and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 2 then

				DrawText3Ds(v.Pos.x, v.Pos.y, v.Pos.z, v.Text)
				if IsControlJustPressed(0, 38) then
					if k == 'Boss' then
						TriggerEvent('esx_society:openBossMenu', 'cardealer', function(data2, menu2)
							menu2.close()
						end)
					elseif k == 'Stash' then
						TriggerEvent('inventory:stash', 'Car Dealer')
					end
				end
			end
		end
	end
end)

function DrawText3Ds(x, y, z, text)
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

function IsCarDealer(boss)
	return (ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer') and (ESX.PlayerData.job.grade_name == 'boss' or not boss or boss == nil)
end