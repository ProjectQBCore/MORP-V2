-- CONFIG --
-- Blacklisted vehicle models
carblacklist = {
	"MENACER",
	"SCRAMJET",
	"TERRORBYTE",
	"CARACARA",
	"AVENGER",
	"THUSTER",
	"DELUXO",
    "insurgent",
	"CHERNOBOG",
	"BARRAGE",
	"AKULA",
	"LAZER",
	"HUNTER",
	"ARDENT",
	"NIGHTSHARK", 
	"DUNE2",
	"DUNE3",
	"RHINO",
	"TAMPA3",
	"HALFTRACK",
	"APC",
	"RUINER2000",
	"LIMO2",
	"HYDRA",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"STROMBERG",
	"RUINER2",
	"RCBANDITO",
	"OPPRESSOR2",
	"OPPRESSOR",
	"KHANJALI",
	"TITAN",
	"VISERIS",
}
-- CODE --
Citizen.CreateThread(function()
	while true do
		Wait(1)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(carblacklist) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 70))
			end
		end
	end
end)
function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)
		if isCarBlacklisted(carModel) then
			_DeleteEntity(car)
			sendForbiddenMessage("This vehicle is blacklisted!")
		end
	end
end
function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(carblacklist) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end