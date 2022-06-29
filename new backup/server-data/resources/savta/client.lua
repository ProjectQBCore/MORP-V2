QBCore = nil

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(10)
        if QBCore == nil then
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(200)
        end
    end
end)

Config = {
    PedCoords = {x = 2439.81, y = 4961.11, z = 45.88, h = 83.03, r = 1.0},
	PedWorking = {x = 2438.27, y = 4960.94, z = 45.83, h = 142.68, r = 1.0},
	Player = {x = 2437.86, y = 4960.49, z = 47.27, h = 225.11, r = 1.0},
	Playerisback = {x = 2438.75, y = 4961.5, z = 46.81, h =219.62, r = 1.0},
	Loadingbar = 10000
}   

ron = true

CreateThread(function()
    savtav = CreateSavta()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        if GetDistanceBetweenCoords(coords,vector3(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z)) < 1.4 then 
            DrawText3Ds(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z+1.2, "~g~ E ~s~ - Check in") 
            if ron then
                if IsControlJustPressed(0, 38) then 
                    ron = false
                    savta()
                    Wait(10000)
                    ron = true
                end 
            end
        elseif GetDistanceBetweenCoords(coords,vector3(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z)) < 4 then 
        DrawText3Ds(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z+1.2, "Check in") 
        end  
    end        
end)


function savta()
    if ESX then 
        ESX.TriggerServerCallback('ron:price', function(canAfford)
             if ESX and canAfford then 
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)
                if GetEntityHealth(ped) < 201 then 
				    
                    exports['mythic_notify']:SendAlert('inform', 'Starting To Treatment...', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                    -- SetEntityInvincible(GetPlayerPed(-1), true)
					-- SetEntityVisible(GetPlayerPed(-1), false)
					if IsEntityDead(ped) then
					TriggerEvent('esx_ambulancejob:revive', ped)
					end
                    Wait(500)
                    DoScreenFadeOut(1000)
                    Wait(1000)
                    SetEntityAlpha(savtav, 0)
					SavtaHovadad()
                    SetEntityCoords(ped, Config.Player.x, Config.Player.y, Config.Player.z, false, false, false, true)
                    SetEntityHeading(ped, Config.Player.h)
					
                    SetEntityHealth(ped, 200)
                    TriggerEvent('esx_status:set', 'hunger', 1000000)
                    TriggerEvent('esx_status:set', 'thirst', 1000000)
                    DoScreenFadeIn(1000)
                    savtaanim()
                    loadingbar()
                    Wait(10000)
                    DoScreenFadeOut(1000)
                    Wait(1000)
                    DoScreenFadeIn(1000)
                    SetEntityInvincible(GetPlayerPed(-1), false)
					-- SetEntityVisible(GetPlayerPed(-1), true)
                    SetEntityCoords(ped, Config.Playerisback.x, Config.Playerisback.y, Config.Playerisback.z, false, false, false, true)
                    SetEntityHeading(ped, Config.Playerisback.h)
                    SetEntityAlpha(savtav, 255)
				else
				exports['mythic_notify']:SendAlert('inform', 'You dont even look hurt my boy', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
				Wait(400)
                end
            else
                exports['mythic_notify']:SendAlert('inform', 'You dont have enough money', { ['background-color'] = '#3D59B7', ['color'] = '#ffffff' })
                Wait(400)
            end
        end)
    end
end   

function loadingbar()
    exports['progressbar']:Progress({
        name = "firstaid_action",
        duration = Config.Loadingbar,
        label = "Treatment",
        useWhileDead = true,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
    },
    }, function(status)
    end)
end
 
function IsVaildJob(job)
    for _,v in pairs(Config.Jobs) do
        if v.job == job then
            return true
        end
    end

    return false
end

function CreateSavta()
    DeleteEntity(ped)
    local hashKey = `cs_mrs_thornhill`
    local pedType = 5
	local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    RequestModel(hashKey)
    while not HasModelLoaded(hashKey) do Wait(100) end
    local ped = CreatePed(pedType,hashKey,Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z, Config.PedCoords.h, 0, 0)
	FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    PlaceObjectOnGroundProperly(ped)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityCanBeDamaged(ped,false)
    return ped 
end

function SavtaHovadad()

    local hashKey = `cs_mrs_thornhill`
    local pedType = 5
	local ped = PlayerPedId()
        local coords = GetEntityCoords(ped123)
    RequestModel(hashKey)
    while not HasModelLoaded(hashKey) do
        RequestModel(hashKey)
        Wait(100)
    end
    local ped123 = CreatePed(pedType,hashKey,Config.PedWorking.x, Config.PedWorking.y, Config.PedWorking.z, Config.PedWorking.h, 0, 0)
	FreezeEntityPosition(ped123, true)
    SetEntityInvincible(ped123, true)
    PlaceObjectOnGroundProperly(ped123)
    SetBlockingOfNonTemporaryEvents(ped123, true)
    SetEntityCanBeDamaged(ped123,false)
    if not IsAnimated then
	    prop_name = prop_name or 'prop_ld_health_pack'
		IsAnimated = true
		Citizen.CreateThread(function()
		    local x,y,z = table.unpack(GetEntityCoords(ped123))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(ped123, 18905)
			AttachEntityToEntity(prop, ped123, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
            ESX.Streaming.RequestAnimDict('anim@amb@business@weed@weed_sorting_seated@', function()
                ClearPedTasks(ped123)
				TaskPlayAnim(ped123, 'anim@amb@business@weed@weed_sorting_seated@', 'sorter_right_sort_v3_sorter02', 8.0, -8, -1, 49, 0, 0, 0, 0)
				Wait(Config.Loadingbar)
				IsAnimated = false
				ClearPedSecondaryTask(ped123)
                DeleteEntity(ped123)
                DeleteEntity(prop)
			end)
		end)

	end
    
end

  
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
end

function savtaanim()
    local ped = PlayerPedId()
    ClearPedTasks(ped)
    TaskPlayAnim(ped, "anim@gangops@morgue@table@", "body_search",  2.0, 2.0, -1, 1, 0, false, false, false)
end

local ron = false
RegisterCommand('rongever', function()
    ron = not ron 
    local ped = PlayerPedId()
    SetEntityInvincible(ped, ron)
end)