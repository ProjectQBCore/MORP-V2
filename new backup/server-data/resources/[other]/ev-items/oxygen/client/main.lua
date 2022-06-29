oxyOn = false
attachedProp = 0
attachedProp2 = 0
oxygenTank = 25.0
Citizen.CreateThread(function()

	while true do
		Wait(1)
		if oxygenTank > 0 and IsPedSwimmingUnderWater(PlayerPedId()) then
			SetPedDiesInWater(PlayerPedId(), false)
			if oxygenTank > 25.0 then
				oxygenTank = oxygenTank - 0.001
			else
				oxygenTank = oxygenTank - 0.01
			end
		elseif IsPedSwimmingUnderWater(PlayerPedId()) then
			oxygenTank = oxygenTank - 0.01
			SetPedDiesInWater(PlayerPedId(), true)
		end

		if not IsPedSwimmingUnderWater( PlayerPedId() ) and oxygenTank < 25.0 then
			oxygenTank = oxygenTank + 0.01
			if oxygenTank > 25.0 then
				oxygenTank = 25.0
			end
		end

		if oxygenTank > 25.0 and not oxyOn then
			oxyOn = true
			attachProp("p_s_scuba_tank_s", 24818, -0.25, -0.25, 0.0, 180.0, 90.0, 0.0)
			attachProp2("p_s_scuba_mask_s", 12844, 0.0, 0.0, 0.0, 180.0, 90.0, 0.0)
		elseif oxyOn and oxygenTank <= 25.0 then
			oxyOn = false
			removeAttachedProp()
			removeAttachedProp2()
		end
		if not oxyOn then
			Wait(1000)
		end
	end
end)

function removeAttachedProp()
	DeleteEntity(attachedProp)
	attachedProp = 0
end

function removeAttachedProp2()
	DeleteEntity(attachedProp2)
	attachedProp2 = 0
end

function attachProp(attachModelSent,boneNumberSent,x,y,z,xR,yR,zR)
	removeAttachedProp()
	attachModel = GetHashKey(attachModelSent)
	boneNumber = boneNumberSent 
	local bone = GetPedBoneIndex(PlayerPedId(), boneNumberSent)
	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Citizen.Wait(100)
	end
	attachedProp = CreateObject(attachModel, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedProp, PlayerPedId(), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
	SetModelAsNoLongerNeeded(attachModel)
end

function attachProp2(attachModelSent,boneNumberSent,x,y,z,xR,yR,zR)
	removeAttachedProp2()
	attachModel = GetHashKey(attachModelSent)
	boneNumber = boneNumberSent
	local bone = GetPedBoneIndex(PlayerPedId(), boneNumberSent)
	RequestModel(attachModel)
	while not HasModelLoaded(attachModel) do
		Citizen.Wait(100)
	end
	attachedProp2 = CreateObject(attachModel, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedProp2, PlayerPedId(), bone, x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
	SetModelAsNoLongerNeeded(attachModel)
end

RegisterNetEvent('oxygenmask:start')
AddEventHandler('oxygenmask:start', function()
	oxygenTank = 100.0
end)