ESX = nil
local canDoJob = true
local PlayerData = {}
local tasking = false
local drugStorePed, salecount, rnd, blip, deliveryPed, oxyTimer = 0, 0, 0, 0, 0, 0
local daytime, nighttime = false, false
local cashPayment = 420
local MissionCount = 0
local OxyMissionComplete, RolexMissionComplete, goodsDealer, firstdeal = false, false, false, false
local isBusy = false
local showText = true 
local timedOut = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

local oxyVehicle = 0
local dropoffpoints = {
	[1] =  { ['x'] = 483.17,['y'] = -1827.35,['z'] = 27.86,['h'] = 135.87, ['info'] = ' East Side 1' },
	[2] =  { ['x'] = 475.87,['y'] = -1798.45,['z'] = 28.49,['h'] = 229.85, ['info'] = ' East Side 2' },
	[3] =  { ['x'] = 503.54,['y'] = -1765.06,['z'] = 28.51,['h'] = 67.61, ['info'] = ' East Side 3' },
	[4] =  { ['x'] = 512.0,['y'] = -1842.13,['z'] = 27.9,['h'] = 138.1, ['info'] = ' East Side 4' },
	[5] =  { ['x'] = 466.89,['y'] = -1852.81,['z'] = 27.72,['h'] = 310.97, ['info'] = ' East Side 5' },
	[6] =  { ['x'] = 431.33,['y'] = -1882.85,['z'] = 26.85,['h'] = 39.7, ['info'] = ' East Side 6' },
	[7] =  { ['x'] = 410.64,['y'] = -1908.57,['z'] = 25.46,['h'] = 80.03, ['info'] = ' East Side 7' },
	[8] =  { ['x'] = 192.93,['y'] = -2027.95,['z'] = 18.29,['h'] = 251.25, ['info'] = ' East Side 8' },
	[9] =  { ['x'] = 184.05,['y'] = -2004.77,['z'] = 18.31,['h'] = 49.81, ['info'] = ' East Side 9' },
	[10] =  { ['x'] = 212.4,['y'] = -1971.66,['z'] = 20.31,['h'] = 63.83, ['info'] = ' East Side 10' },
	[11] =  { ['x'] = 266.85,['y'] = -1964.41,['z'] = 23.0,['h'] = 49.59, ['info'] = ' East Side 11' },
	[12] =  { ['x'] = 313.05,['y'] = -1918.57,['z'] = 25.65,['h'] = 315.88, ['info'] = ' East Side 12' },
	[13] =  { ['x'] = 282.63,['y'] = -1948.96,['z'] = 24.39,['h'] = 40.21, ['info'] = ' East Side 13' },
	[14] =  { ['x'] = 250.44,['y'] = -1995.9,['z'] = 20.32,['h'] = 324.5, ['info'] = ' East Side 14' },
	[15] =  { ['x'] = 270.54,['y'] = -1706.13,['z'] = 29.31,['h'] = 46.82, ['info'] = ' Central 1' },
	[16] =  { ['x'] = 167.78,['y'] = -1635.0,['z'] = 29.3,['h'] = 22.04, ['info'] = ' Central 2' },
	[17] =  { ['x'] = 175.98,['y'] = -1542.48,['z'] = 29.27,['h'] = 316.21, ['info'] = ' Central 3' },
	[18] =  { ['x'] = -99.69,['y'] = -1577.74,['z'] = 31.73,['h'] = 231.66, ['info'] = ' Central 4' },
	[19] =  { ['x'] = -171.68,['y'] = -1659.11,['z'] = 33.47,['h'] = 85.41, ['info'] = ' Central 5' },
	[20] =  { ['x'] = -209.75,['y'] = -1632.29,['z'] = 33.9,['h'] = 177.99, ['info'] = ' Central 6' },
	[21] =  { ['x'] = -262.65,['y'] = -1580.04,['z'] = 31.86,['h'] = 251.02, ['info'] = ' Central 7' },
	[22] =  { ['x'] = -182.0,['y'] = -1433.79,['z'] = 31.31,['h'] = 210.92, ['info'] = ' Central 8' },
	[23] =  { ['x'] = -83.37,['y'] = -1415.39,['z'] = 29.33,['h'] = 180.98, ['info'] = ' Central 9' },
	[24] =  { ['x'] = -39.13,['y'] = -1473.67,['z'] = 31.65,['h'] = 5.17, ['info'] = ' Central 10' },
	[25] =  { ['x'] = 45.16,['y'] = -1475.65,['z'] = 29.36,['h'] = 136.92, ['info'] = ' Central 11' },
	[26] =  { ['x'] = 158.52,['y'] = -1496.02,['z'] = 29.27,['h'] = 133.49, ['info'] = ' Central 12' },
	[27] =  { ['x'] = 43.58,['y'] = -1599.87,['z'] = 29.61,['h'] = 50.3, ['info'] = ' Central 13' },
	[28] =  { ['x'] = 8.71,['y'] = -1662.77,['z'] = 29.31,['h'] = 318.63, ['info'] = ' Central 14' },
	[29] =  { ['x'] = -726.92,['y'] = -854.64,['z'] = 22.8,['h'] = 2.0, ['info'] = ' West 1' },
	[30] =  { ['x'] = -713.09,['y'] = -886.66,['z'] = 23.81,['h'] = 357.65, ['info'] = ' West 2' },
	[31] =  { ['x'] = -591.45,['y'] = -891.2,['z'] = 25.95,['h'] = 91.53, ['info'] = ' West 3' },
	[32] =  { ['x'] = -683.59,['y'] = -945.62,['z'] = 20.85,['h'] = 180.74, ['info'] = ' West 4' },
	[33] =  { ['x'] = -765.92,['y'] = -920.94,['z'] = 18.94,['h'] = 180.44, ['info'] = ' West 5' },
	[34] =  { ['x'] = -807.45,['y'] = -957.09,['z'] = 15.29,['h'] = 340.4, ['info'] = ' West 6' },
	[35] =  { ['x'] = -822.88,['y'] = -973.96,['z'] = 14.72,['h'] = 126.28, ['info'] = ' West 7' },
	[36] =  { ['x'] = -657.53,['y'] = -729.91,['z'] = 27.84,['h'] = 309.58, ['info'] = ' West 8' },
	[37] =  { ['x'] = -618.39,['y'] = -750.71,['z'] = 26.66,['h'] = 85.6, ['info'] = ' West 9' },
	[38] =  { ['x'] = -548.36,['y'] = -854.53,['z'] = 28.82,['h'] = 352.84, ['info'] = ' West 10' },
	[39] =  { ['x'] = -518.18,['y'] = -804.65,['z'] = 30.8,['h'] = 267.32, ['info'] = ' West 11' },
	[40] =  { ['x'] = -509.05,['y'] = -737.77,['z'] = 32.6,['h'] = 174.97, ['info'] = ' West 12' },
	[41] =  { ['x'] = -567.5,['y'] = -717.77,['z'] = 33.43,['h'] = 268.02, ['info'] = ' West 13' },
	[42] =  { ['x'] = -654.89,['y'] = -732.13,['z'] = 27.56,['h'] = 309.15, ['info'] = ' West 14' },
}

local OxyDropOffs = {
	[1] =  { ['x'] = 1983.84,['y'] = 3063.02,['z'] = 47.19,['h'] = 309.12, ['info'] = ' 1' },
	[2] =  { ['x'] = 1958.01,['y'] = 3739.43,['z'] = 32.39,['h'] = 114.6, ['info'] = ' 2' },
	[3] =  { ['x'] = 1971.21,['y'] = 3741.71,['z'] = 32.33,['h'] = 211.38, ['info'] = ' 3' },
	[4] =  { ['x'] = 1997.01,['y'] = 3777.79,['z'] = 32.24,['h'] = 213.46, ['info'] = ' 4' },
	[5] =  { ['x'] = 1776.25,['y'] = 3644.02,['z'] = 34.51,['h'] = 22.07, ['info'] = ' 5' },
	[6] =  { ['x'] = 1407.26,['y'] = 3602.08,['z'] = 35.0,['h'] = 196.03, ['info'] = ' 6' },
	[7] =  { ['x'] = 1732.84,['y'] = 3844.72,['z'] = 34.87,['h'] = 197.98, ['info'] = ' 7' },
	[8] =  { ['x'] = 1883.93,['y'] = 3891.56,['z'] = 33.06,['h'] = 101.74, ['info'] = ' 8' },
	[9] =  { ['x'] = 1664.96,['y'] = 4771.26,['z'] = 42.0,['h'] = 215.27, ['info'] = ' 9' },
	[10] =  { ['x'] = 1680.66,['y'] = 4836.48,['z'] = 42.18,['h'] = 115.28, ['info'] = ' 10' },
	[11] =  { ['x'] = 1656.53,['y'] = 4883.09,['z'] = 42.0,['h'] = 273.68, ['info'] = ' 11' },
	[12] =  { ['x'] = 1693.39,['y'] = 4922.68,['z'] = 42.24,['h'] = 66.38, ['info'] = ' 12' },
	[13] =  { ['x'] = -330.57,['y'] = 6221.79,['z'] = 31.49,['h'] = 221.93, ['info'] = ' 13' },
	[14] =  { ['x'] = -330.82,['y'] = 6153.0,['z'] = 32.32,['h'] = 39.85, ['info'] = ' 14' },
	[15] =  { ['x'] = -137.01,['y'] = 6284.25,['z'] = 31.49,['h'] = 222.15, ['info'] = ' 15' },
	[16] =  { ['x'] = -101.02,['y'] = 6345.31,['z'] = 31.58,['h'] = 219.06, ['info'] = ' 16' },
	[17] =  { ['x'] = 136.12,['y'] = 6638.45,['z'] = 31.76,['h'] = 217.11, ['info'] = ' 17' },

	[1] =  { ['x'] = -377.5,['y'] = 277.05,['z'] = 84.8,['h'] = 30.17, ['info'] = ' 1' },
	[2] =  { ['x'] = -395.2,['y'] = 205.61,['z'] = 83.61,['h'] = 81.62, ['info'] = ' 2' },
	[3] =  { ['x'] = -501.24,['y'] = -55.76,['z'] = 40.04,['h'] = 246.27, ['info'] = ' 3' },
	[4] =  { ['x'] = 479.25,['y'] = 74.13,['z'] = 96.97,['h'] = 331.37, ['info'] = ' 4' },
	[5] =  { ['x'] = 394.67,['y'] = 263.72,['z'] = 103.03,['h'] = 152.47, ['info'] = ' 5' },
	[6] =  { ['x'] = 368.8,['y'] = 323.94,['z'] = 103.59,['h'] = 161.19, ['info'] = ' 6' },
	[7] =  { ['x'] = -347.01,['y'] = -791.39,['z'] = 33.96,['h'] = 359.60, ['info'] = ' La Puerta Car Park' },
	[8] =  { ['x'] = 337.48,['y'] = -182.44,['z'] = 58.13,['h'] = 164.88, ['info'] = ' Behind Pink Cage' },
	[9] =  { ['x'] = 75.94,['y'] = -762.09,['z'] = 31.66,['h'] = 156.23, ['info'] = ' Bridge by Legion' },	
	[10] =  { ['x'] = -28.69,['y'] = -369.54,['z'] = 39.57,['h'] = 254.69, ['info'] = ' Corner of Alta Street' },
	[11] =  { ['x'] = -819.47,['y'] = -636.35,['z'] = 27.92,['h'] = 161.31, ['info'] = ' Corner of San Andreas Avenue' },	
	[12] =  { ['x'] = -524.03,['y'] = -329.31,['z'] = 35.16,['h'] = 121.80, ['info'] = ' Corner of Rockford Drive' },
	[13] =  { ['x'] = -1441.14,['y'] = -291.00,['z'] = 45.44,['h'] = 131.94, ['info'] = ' Corner of North Rockford Drive' },
	[14] =  { ['x'] = -198.62,['y'] = 133.24,['z'] = 69.66,['h'] = 167.46, ['info'] = ' 7' },
	[15] =  { ['x'] = -119.32,['y'] = 209.02,['z'] = 93.13,['h'] = 179.47, ['info'] = ' 8' },
	[16] =  { ['x'] = 137.39,['y'] = 168.07,['z'] = 104.98,['h'] = 248.0, ['info'] = ' 9' },
	[17] =  { ['x'] = 106.22,['y'] = 161.61,['z'] = 104.55,['h'] = 334.66, ['info'] = ' 10' },
	[18] =  { ['x'] = -216.7,['y'] = 312.32,['z'] = 96.95,['h'] = 264.62, ['info'] = ' 11' },					
}

local drugLocs = {
	[1] =  { ['x'] = 55555555.56,['y'] = 555555.25,['z'] = 55555555.32,['h'] = 5555555.06, ['info'] = ' Central', ["gang"] = "ballas", ["ent"] = 0 },
}
  
local pillWorker = { x = 296.34, y = -142.09, z = 67.77, h = 165.74, ['info'] = ' Pill Worker' }

local carpick = {
    [1] = "felon",
    [2] = "kuruma",
    [3] = "sultan",
    [4] = "granger",
    [5] = "tailgater",
}
local carspawns = {
	[1] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 1' },
	[2] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 2' },
	[3] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 3' },
	[4] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 4' },
	[5] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 5' },
	[6] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 6' },
	[7] =  { x = 284.82, y = -135.38, z = 67.33, h = 68.76, ['info'] = ' Spawn 7' },
}      
   

function CreateOxyVehicle()
	if DoesEntityExist(oxyVehicle) then
	    SetVehicleHasBeenOwnedByPlayer(oxyVehicle,false)
		SetEntityAsNoLongerNeeded(oxyVehicle)
		DeleteEntity(oxyVehicle)
	end

    local car = GetHashKey(carpick[math.random(#carpick)])
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #carspawns do
	    local caisseo = GetClosestVehicle(carspawns[i]["x"], carspawns[i]["y"], carspawns[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end
    oxyVehicle = CreateVehicle(car, carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], carspawns[spawnpoint]["h"], true, false)
    local plt = GetVehicleNumberPlateText(oxyVehicle)
	SetVehicleHasBeenOwnedByPlayer(oxyVehicle,true)
	local vehicleProps = ESX.Game.GetVehicleProperties(oxyVehicle)
	TriggerEvent('keys:addNew',oxyVehicle ,GetVehicleNumberPlateText(oxyVehicle))

    while true do
    	Citizen.Wait(1)
		DrawText3Ds(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], "Your Delivery Car (Stolen).")
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"],true) < 8.0 then
			return
		end
    end
end

function CreateOxyPed()
    local hashKey = GetHashKey('a_m_y_stwhi_01')
    local pedType = 5

    RequestModel(hashKey)
    while not HasModelLoaded(hashKey) do
        RequestModel(hashKey)
        Citizen.Wait(100)
    end

	deliveryPed = CreatePed(pedType, hashKey, OxyDropOffs[rnd]["x"],OxyDropOffs[rnd]["y"],OxyDropOffs[rnd]["z"], OxyDropOffs[rnd]["h"], true, true)
    ClearPedTasks(deliveryPed)
    ClearPedSecondaryTask(deliveryPed)
    SetEntityAsMissionEntity(deliveryPed, true,true)
    SetBlockingOfNonTemporaryEvents(deliveryPed, true)
    SetPedFleeAttributes(deliveryPed, 0, 0)
    SetPedCombatAttributes(deliveryPed, 17, 1)
    SetPedSeeingRange(deliveryPed, 0.0)
    SetPedHearingRange(deliveryPed, 0.0)
    SetPedAlertness(deliveryPed, 0)
    SetPedKeepTask(deliveryPed, true)
end

function CreateDrugPed()
    local hashKey = GetHashKey('g_m_y_salvagoon_01')
    local pedType = 5

    RequestModel(hashKey)
    while not HasModelLoaded(hashKey) do
        RequestModel(hashKey)
        Citizen.Wait(100)
    end

	deliveryPed = CreatePed(pedType, hashKey, dropoffpoints[rnd]["x"],dropoffpoints[rnd]["y"],dropoffpoints[rnd]["z"], dropoffpoints[rnd]["h"], true, true)
    NetworkGetEntityFromNetworkId(deliveryPed)
    ClearPedTasks(deliveryPed)
    ClearPedSecondaryTask(deliveryPed)
    TaskSetBlockingOfNonTemporaryEvents(deliveryPed, true)
    SetPedFleeAttributes(deliveryPed, 0, 0)
    SetPedCombatAttributes(deliveryPed, 17, 1)
    SetPedSeeingRange(deliveryPed, 0.0)
    SetPedHearingRange(deliveryPed, 0.0)
    SetPedAlertness(deliveryPed, 0)
    SetPedKeepTask(deliveryPed, true)
    SetEntityAsMissionEntity(deliveryPed,true,true)
end

function DeleteCreatedPed()
	--print("Deleting Ped?")
	if DoesEntityExist(deliveryPed) then 
		SetPedKeepTask(deliveryPed, false)
		TaskSetBlockingOfNonTemporaryEvents(deliveryPed, false)
		ClearPedTasks(deliveryPed)
		TaskWanderStandard(deliveryPed, 10.0, 10)
		SetPedAsNoLongerNeeded(deliveryPed)
		SetEntityAsMissionEntity(deliveryPed,false,true)
		Citizen.Wait(20000)
		DeletePed(deliveryPed)
		isBusy = false
	end	
	isBusy = false
end

function DeleteBlip()
	if DoesBlipExist(blip) then
		RemoveBlip(blip)
	end
end

function CreateBlip()
	if DoesBlipExist(blip) then 
	  RemoveBlip(blip)
	end 


	if OxyRun then
		blip = AddBlipForCoord(OxyDropOffs[rnd]["x"],OxyDropOffs[rnd]["y"],OxyDropOffs[rnd]["z"])
	else
		blip = AddBlipForCoord(dropoffpoints[rnd]["x"],dropoffpoints[rnd]["y"],dropoffpoints[rnd]["z"])
	end
    
    SetBlipSprite(blip, 514)
    SetBlipScale(blip, 1.0)
    SetBlipAsShortRange(blip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Drop Off")
    EndTextCommandSetBlipName(blip)
end

function loadAnimDict( dict )
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end 

function giveAnim()
    if (DoesEntityExist(deliveryPed) and not IsEntityDead(deliveryPed)) then 
        loadAnimDict("mp_safehouselost@")
        if (IsEntityPlayingAnim(deliveryPed, "mp_safehouselost@", "package_dropoff", 3)) then 
            TaskPlayAnim(deliveryPed, "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0)
        else
            TaskPlayAnim(deliveryPed, "mp_safehouselost@", "package_dropoff", 8.0, 1.0, -1, 16, 0, 0, 0, 0)
        end     
    end
end

function oxyAnim()
    Citizen.Wait(200)
    RequestAnimDict("mp_suicide")
    while not HasAnimDictLoaded("mp_suicide") do
        Citizen.Wait(0)
    end

    TaskPlayAnim(GetPlayerPed(-1), "mp_suicide", "pill", 8.0, 8.0, 1.0, 48,-1, 0, 0, 0)
    Citizen.Wait(2800)      
    ClearPedTasks(GetPlayerPed(-1)) 
end

function HasEnoughItemMissionFlags()
	tasking = false
end

function DoDropOff(currentItem)
	cashPayment = math.random(Config.MoneyReward[1],Config.MoneyReward[2])
	local success = true
	Citizen.Wait(math.random(1000,2000))
	PlayAmbientSpeech1(deliveryPed, "Chat_State", "Speech_Params_Force")

	local counter = math.random(50,200)
	while counter > 0 do
		local crds = GetEntityCoords(deliveryPed)
		counter = counter - 1
		Citizen.Wait(1)
	end

	if success then
		local counter = math.random(100,300)
		while counter > 0 do
			local crds = GetEntityCoords(deliveryPed)
			counter = counter - 1
			Citizen.Wait(1)
		end
		giveAnim()
	end

	local crds = GetEntityCoords(deliveryPed)
	local crds2 = GetEntityCoords(GetPlayerPed(-1))

	if GetDistanceBetweenCoords(crds,crds2) > 5.0 or not DoesEntityExist(deliveryPed) or IsEntityDead(deliveryPed) then
		success = false
	end

	salecount = salecount + 1

	if OxyRun then
		runType = 'OxyRun' 
	elseif goodsDealer then 
		runType = 'StolenGoodsRun'
	end

	if success then
		PlayAmbientSpeech1(deliveryPed, "Generic_Thanks", "Speech_Params_Force_Shouted_Critical")
		daytime = canDoJob
		 TriggerServerEvent('delivery:MissionComplete', cashPayment, 'oxy')
	end

	if success then
		Citizen.Wait(2000)
		if OxyRun then
			if salecount < Config.MaxOxy then 
				TriggerEvent('notification', 'I got the call in, delivery was on point, go await the next one!', 1)
			elseif salecount == Config.MaxOxy then 
				TriggerEvent('notification', 'I got the call in, delivery was on point, thats all I have for now!', 1)
				tasking = false
				OxyRun = false
				cleanupCar() 
			end
		end
	end
	DeleteBlip()
	DeleteCreatedPed()
end

function cleanupCar()
	if DoesEntityExist(oxyVehicle) then
		TriggerEvent('notification','Dump the vehicle when your done, my guys will repo it', 1)
	    SetVehicleHasBeenOwnedByPlayer(oxyVehicle,false)
		SetEntityAsNoLongerNeeded(oxyVehicle)
		SetEntityAsMissionEntity(oxyVehicle, false, true)		
	end
end

RegisterNetEvent('daytime')
AddEventHandler("daytime",function(state)
    daytime = state
    if daytime then
		if OxyRun then 
			TriggerEvent('notification','Its got too late, my contacts have packed up and gone home.', 2)
	    	OxyRun = false 
	    	OxyMissionComplete = false	
    	elseif goodsDealer then
			RolexMissionComplete = false
    	end
    	tasking = false
    	MissionCount = 0
		DeleteCreatedPed()
		DeleteBlip()    	
    end

end)

RegisterNetEvent('nighttime')
AddEventHandler("nighttime",function(state)
    nighttime = state
	if nighttime then 
		if OxyRun then 
			OxyRun = false
			OxyMissionComplete = false
			tasking = false
			DeleteCreatedPed()
			DeleteBlip()			
			TriggerEvent('notification','Its too dark, my sellers have left and gone home', 2)
		end
    end 
end)

function DrawText3Ds(x,y,z, text)
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

RegisterNetEvent("oxydelivery:client")
AddEventHandler("oxydelivery:client", function()
	if tasking then
		return
	end
	timedOut = Config.TimeOut
	rnd = math.random(1,#OxyDropOffs)
	CreateBlip()
	local pedCreated = false
	tasking = true
	local toolong = 60000
	while tasking do
		Citizen.Wait(1)
		local plycoords = GetEntityCoords(GetPlayerPed(-1))
		local dstcheck = GetDistanceBetweenCoords(plycoords,OxyDropOffs[rnd]["x"],OxyDropOffs[rnd]["y"],OxyDropOffs[rnd]["z"]) 
		local oxyVehCoords = GetEntityCoords(oxyVehicle)
		local dstcheck2 = GetDistanceBetweenCoords(plycoords,oxyVehCoords) 

		local veh = GetVehiclePedIsIn(GetPlayerPed(-1),false)
		if dstcheck < 40.0 and not pedCreated and (oxyVehicle == veh or dstcheck2 < 15.0) then
			pedCreated = true
			DeleteCreatedPed()
			CreateOxyPed()
			TriggerEvent('notification', 'You are close to the drop off.' , 1)
		end

		toolong = toolong - 1
		if toolong < 0 then
		    SetVehicleHasBeenOwnedByPlayer(oxyVehicle,false)
			SetEntityAsNoLongerNeeded(oxyVehicle)
			tasking = false
			OxyRun = false
			TriggerEvent('notification', 'You are no longer selling Oxy due to taking too long to drop off.' , 1)
		end

		if dstcheck < 2.0 and pedCreated then
			local crds = GetEntityCoords(deliveryPed)
			
			if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
				TriggerEvent('notification', 'You cannot do this from inside your vehicle.' , 2)
				return
			end			

			if not isBusy then 
				DrawText3Ds(crds["x"],crds["y"],crds["z"], "[E]")  
			end
			if IsControlJustReleased(0,38) and not isBusy then
				isBusy = true
				if canDoJob then
					TaskTurnPedToFaceEntity(deliveryPed, GetPlayerPed(-1), 1.0)
					Citizen.Wait(1500)
					PlayAmbientSpeech1(deliveryPed, "Generic_Hi", "Speech_Params_Force")
					DoDropOff()
					finishTasking()
					Citizen.Wait(1000)
				end
			end
		end
	end
	DeleteCreatedPed()
	DeleteBlip()
end)

function NotEnough()
 tasking = false
 isBusy = false
 success = false	
end

function finishTasking()
 tasking = false
end

RegisterNetEvent('useOxy')
AddEventHandler('useOxy', function()
	oxyAnim()
	exports["taskbar"]:taskBar(2800,"Take Oxy")
     TriggerServerEvent("oxy:consumedProduct")
    TriggerEvent("healed:useOxy")
	if oxyTimer > 0 then
		oxyTimer = 36000
		return
	end
	oxyTimer = 36000
	while oxyTimer > 0 do
		oxyTimer = oxyTimer - 1
		if math.random(350) < 3 then
		    TriggerEvent("lowerthirst")
		end
		Citizen.Wait(100)
	end

end)

RegisterNetEvent('lowerthirst')
AddEventHandler('lowerthirst', function()
	TriggerEvent('esx_status:getStatus', 'thirst', function(status)
		mythirst = tostring(status.val)
		mythirst = mythirst - 1

		if mythirst < 0 then
			mythirst = 0
			return
		end

		TriggerEvent('esx_status:set', 'thirst', mythirst)
	end)
end)

function CleanUpArea()
    local playerped = GetPlayerPed(-1)
    local plycoords = GetEntityCoords(playerped)
    local handle, ObjectFound = FindFirstObject()
    local success
    repeat
        local pos = GetEntityCoords(ObjectFound)
        local distance = GetDistanceBetweenCoords(plycoords, pos, true)
        if distance < 10.0 and ObjectFound ~= playerped then
        	if IsEntityAPed(ObjectFound) then
        		if IsPedAPlayer(ObjectFound) then
        		else
        			DeleteObject(ObjectFound)
        		end
        	else
        		if not IsEntityAVehicle(ObjectFound) and not IsEntityAttached(ObjectFound) then
	        		DeleteObject(ObjectFound)
	        	end
        	end            
        end
        success, ObjectFound = FindNextObject(handle)
    until not success
    TriggerEvent('inbuilding', false)
    SetEntityAsNoLongerNeeded(drugStorePed)
    DeleteEntity(drugStorePed)
    EndFindObject(handle)
end

Citizen.CreateThread(function()
    while true do
	    Citizen.Wait(1)
	    local dropOff3 = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),pillWorker["x"],pillWorker["y"],pillWorker["z"],true)



		if dropOff3 < 2.0 and not OxyRun then
			if canDoJob then
				if not OxyMissionComplete then
					if timedOut == 0 then
						DrawText3Ds(pillWorker["x"],pillWorker["y"],pillWorker["z"], "[E] $" .. Config.OxyStart .. " - Delivery Job (Payment Cash + Oxy)")
						if IsControlJustReleased(0,38) then
							ESX.TriggerServerCallback('deliveries:canDoOxyMissions', function(canAfford)
								if canAfford then
									if goodsDealer then 
										DeleteCreatedPed()
										DeleteBlip()
										goodsDealer = false							
										tasking = false
									end								
									TriggerServerEvent("oxydelivery:startmissions")
									Citizen.Wait(1000)
								else
									TriggerEvent('notification', "You don't have enough money left!", 2)
									Citizen.Wait(5000)
								end
							end)
						end
					else
						local Time = string.format("%02d", math.floor((timedOut % 86400) / 3600)) .. ":" .. string.format("%02d", math.floor((timedOut % 3600) / 60))
						DrawText3Ds(pillWorker["x"],pillWorker["y"],pillWorker["z"], Time)
					end
				else
					DrawText3Ds(pillWorker["x"],pillWorker["y"],pillWorker["z"], "No jobs at the moment.") 
				end							
			end			
		end	

    	if dropOff3 > 2.5 then
	    	Citizen.Wait(1000)
	    end

	    for i = 1, #drugLocs do
	    	if DoesEntityExist( drugLocs[i]["ent"] ) then
				if IsEntityDead( drugLocs[i]["ent"] ) then
					SetEntityAsNoLongerNeeded(drugLocs[i]["ent"])
					DeleteEntity( drugLocs[i]["ent"] )
				end
			end
		end
    end
end)

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(1)

		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),868.99,-2026.77,37.0,true) < 1.5 then
			DrawText3Ds(868.99,-2026.77,37.0, "[E] - Sell 30x Oxy")
			if IsControlJustReleased(0,38) then
				TriggerServerEvent("oxydelivery:sellOxy", 30, math.random(600,900))
			end
		elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),-1512.76,1517.05,115.29,true) < 1.5 then
			DrawText3Ds(-1512.76,1517.05,115.29, "[E] - Sell 150x Cocaine / Meth")
			if IsControlJustReleased(0,38) then
				TriggerServerEvent("oxydelivery:sellDrugs", 150, math.random(2200,2700))
			end
		elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),-1112.28,-1578.48,8.68,true) < 1.5 then
			DrawText3Ds(-1112.28,-1578.48,8.68, "[E] - Sell 150x Joints")
			if IsControlJustReleased(0,38) then
				TriggerServerEvent("oxydelivery:sellJoints", 150, math.random(1700,2200))
			end
		elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),2376.1325683594, 3081.7663574219, 48.152912139893,true) < 1.5 then
			DrawText3Ds(2376.1325683594, 3081.7663574219, 48.152912139893, "[E] - Sell 100x Electronics")
			if IsControlJustReleased(0,38) then
				TriggerServerEvent("oxydelivery:sellElectronics", 100, 20000)
			end
		else
			Wait(500)
		end

    end
end)


RegisterNetEvent("oxydelivery:startDealing")
AddEventHandler("oxydelivery:startDealing", function()
TriggerEvent('notification', 'Your GPS will be updated with locations soon.', 1)
 salecount = 0
 OxyRun = true
 firstdeal = true
 CreateOxyVehicle()
end)

RegisterNetEvent("oxydelivery:jobDone")
AddEventHandler("oxydelivery:jobDone", function(stats)
 OxyMissionComplete = stats
end) 

Citizen.CreateThread(function()
	while true do
		Wait(1)
		if OxyRun then
			if GetVehicleEngineHealth(oxyVehicle) < 800.0 then	
				OxyRun = false
				tasking = false
				TriggerEvent('notification', "Dude! You fucked my car up, luckily its insured, I cancelled your run though, asshole!",2)
			else
				if tasking then
			        Citizen.Wait(30000)
			    else
			    	if salecount < Config.MaxOxy then 
				        TriggerEvent("oxydelivery:client")  
					elseif salecount == Config.MaxOxy then
					    OxyRun = false
					    OxyMissionComplete = true
					end
				end
			end
	    end
    end
end)

CreateThread(function()
	while true do
		Wait(1)
		if timedOut > 0 then
			timedOut = timedOut - 1
		end
	end
end)