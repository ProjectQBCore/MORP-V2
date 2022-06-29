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

RegisterNetEvent('use:cocaine')
AddEventHandler('use:cocaine', function()
    TaskItem("anim@amb@nightclub@peds@", "missfbi3_party_snort_coke_b_male3", 49, 5000, "Coke Gaming", "hadcocaine", true,'cocaine')
end)

RegisterNetEvent('use:meth')
AddEventHandler('use:meth', function()
    TaskItem("anim@amb@nightclub@peds@", "missfbi3_party_snort_coke_b_male3", 49, 5000, "Meth", "hadcocaine", true,'meth_packaged')
end)

RegisterNetEvent('drugs:weed_packaged')
AddEventHandler('drugs:weed_packaged', function()
    exports['progressbar']:Progress({
        name = "unique_action_name",
        duration = 8000,
        label = 'Converting...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal1car_1_ext_leadin",
            anim = "base_driver2",
            flags = 49,
        },
    }, function(cancelled)
        if not cancelled then
           TriggerServerEvent('drugs:addItem', 'joint', 5)
        else
            TriggerServerEvent('drugs:addItem', 'weed_packaged', 1)
            TriggerServerEvent('drugs:addItem', 'rollingpaper', 1)
        end
    end)
end)

RegisterNetEvent('drugs:cocaine_packaged')
AddEventHandler('drugs:cocaine_packaged', function()
    exports['progressbar']:Progress({
        name = "unique_action_name",
        duration = 10000,
        label = 'Converting...',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal1car_1_ext_leadin",
            anim = "base_driver2",
            flags = 49,
        },
    }, function(cancelled)
        if not cancelled then
           TriggerServerEvent('drugs:addItem', 'cocaine', 5)
        else
            TriggerServerEvent('drugs:addItem', 'cocaine_packaged', 1)
        end
    end)
end)


RegisterNetEvent('use:oxy')
AddEventHandler('use:oxy', function()
    TriggerEvent("animation:PlayAnimation","pill")

    ClearPedBloodDamage(PlayerPedId())
	TriggerEvent('mythic_hospital:client:RemoveBleed')

    local count = 30
    while count > 0 do
        Citizen.Wait(1000)
        count = count - 1
        SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + 1) 
    end
end)

RegisterNetEvent('use:joint')
AddEventHandler('use:joint', function()
    TriggerEvent("animation:PlayAnimation","weed")

    local finished = exports["taskbar"]:taskBar(7000,"Smoking Joint")
    if (finished == 100) then
        ClearPedSecondaryTask(PlayerPedId())

        local count = 30
        while count > 0 do
            Citizen.Wait(1000)
            count = count - 1
            SetPedArmour(GetPlayerPed(-1), GetPedArmour(GetPlayerPed(-1)) + 1) 
        end

    end
end)

RegisterNetEvent('hadcocaine')
AddEventHandler('hadcocaine', function()
    dstamina = 0

	if math.random(100) > 50 then
		Drugs1()
	else
		Drugs2()
	end

	dstamina = 200

    while dstamina > 0 do

        SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)

        Citizen.Wait(1000)
        RestorePlayerStamina(PlayerId(), 1.0)
        dstamina = dstamina - 1

        if IsPedRagdoll(PlayerPedId()) then
            SetPedToRagdoll(PlayerPedId(), math.random(5), math.random(5), 3, 0, 0, 0)
        end

	  	if math.random(500) < 3 then
	  		if math.random(100) > 50 then
	  			Drugs1()
	  		else
	  			Drugs2()
	  		end
		  	Citizen.Wait(math.random(30000))
		end

        if math.random(100) > 91 and IsPedRunning(PlayerPedId()) then
            SetPedToRagdoll(PlayerPedId(), math.random(1000), math.random(1000), 3, 0, 0, 0)
        end
        
    end

    dstamina = 0

    if IsPedRunning(PlayerPedId()) then
        SetPedToRagdoll(PlayerPedId(),1000,1000, 3, 0, 0, 0)
    end

    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
    RevertToStressMultiplier()

end)

function Drugs1()
	StartScreenEffect("DrugsMichaelAliensFightIn", 3.0, 0)
	Citizen.Wait(8000)
	StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
    Citizen.Wait(8000)
    StartScreenEffect("DrugsMichaelAliensFight", 3.0, 0)
	Citizen.Wait(8000)
	StartScreenEffect("DrugsMichaelAliensFightOut", 3.0, 0)
	StopScreenEffect("DrugsMichaelAliensFightIn")
	StopScreenEffect("DrugsMichaelAliensFight")
	StopScreenEffect("DrugsMichaelAliensFightOut")

end

function Drugs2()
	StartScreenEffect("DrugsTrevorClownsFightIn", 3.0, 0)
	Citizen.Wait(8000)
	StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
    Citizen.Wait(8000)
    StartScreenEffect("DrugsTrevorClownsFight", 3.0, 0)
	Citizen.Wait(8000)
	StartScreenEffect("DrugsTrevorClownsFightOut", 3.0, 0)
	StopScreenEffect("DrugsTrevorClownsFight")
	StopScreenEffect("DrugsTrevorClownsFightIn")
	StopScreenEffect("DrugsTrevorClownsFightOut")
end

function TaskItem(dictionary,animation,typeAnim,timer,message,func,remove,itemid)
    loadAnimDict( dictionary ) 
    TaskPlayAnim( PlayerPedId(), dictionary, animation, 8.0, 1.0, -1, typeAnim, 0, 0, 0, 0 )
    local timer = tonumber(timer)
    if timer > 0 then
        local finished = exports["taskbar"]:taskBar(timer,message,true)
        if finished == 100 or timer == 0 then
            TriggerEvent(func)
        end
    else
        TriggerEvent(func)
    end
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end