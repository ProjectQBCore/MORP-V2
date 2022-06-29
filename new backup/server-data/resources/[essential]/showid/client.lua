RegisterNetEvent("showid:event")
local showid = false
local blips = {}
CreateThread(function()
    while true do
        Wait(showid and 0 or 250)
        if showid then
            local pos2 = GetEntityCoords(PlayerPedId())
            for a, b in ipairs(GetActivePlayers()) do
                local player = GetPlayerPed(b)
                local pos = GetOffsetFromEntityInWorldCoords(player,0.0,0.0,1.0) 
                if Vdist2(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2500 then
                    Draw3DText(pos.x, pos.y, pos.z, GetPlayerName(b) .. " ["..GetPlayerServerId(b).."]")
                end

                -- if player ~= PlayerPedId() then
                --     local blip = GetBlipFromEntity(player)
                --     if not DoesBlipExist(blip) then
                --         blip = AddBlipForEntity(player)
                --         SetBlipSprite(blip, 1)
                --         SetBlipRotation(blip, math.ceil(GetEntityHeading(player)))
                --         SetBlipNameToPlayerName(blip, tonumber(b))
                --         SetBlipScale(blip, 0.75)
                --         SetBlipAsShortRange(blip, true)
                --         table.insert(blips, blip)
                --     end
                -- end
            end
        end
        if not showid then 
            for _, blip in pairs(blips) do
                RemoveBlip(tonumber(blip))
            end
        end
    end
end)

AddEventHandler("showid:event", function()
    showid = not showid
end)

function Draw3DText(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 300
    DrawRect(_x,_y+0.0120, factor, 0.023, 0, 0, 0, 68)
end


local godmode = false
RegisterNetEvent('ronhomo:godmode')
AddEventHandler('ronhomo:godmode', function()
    godmode = not godmode
    exports['mythic_notify']:SendAlert('inform', "Godmode is " ..((godmode) and "Enabled" or "Disabled"),"inform",5000)
    SetEntityInvincible(PlayerPedId(),godmode)
end)

RegisterNetEvent('ron:heal')
AddEventHandler('ron:heal', function()
    SetEntityHealth(GetPlayerPed(-1), 200)
    TriggerEvent('esx_status:add', 'thirst', 10000000)
    TriggerEvent('esx_status:add', 'hunger', 10000000)
end)


--[[RegisterNetEvent('ronhomo:pchat')
AddEventHandler('ronhomo:pchat', function(data)
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
		TriggerEvent('chat:addMessage', {
			template = '<div class="chat-message blue"><b>{1} ({2}):</b> {0}</div>',
			args = { data.msg, data.name, data.rank }
		})
	end
end)--]]

local ron = true
RegisterNetEvent('sabon:homo')
AddEventHandler('sabon:homo',function()
    ron = not ron 
    SetEntityVisible(PlayerPedId(), ron)
end)

