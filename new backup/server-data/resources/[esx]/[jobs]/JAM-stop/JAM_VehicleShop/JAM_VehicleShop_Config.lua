JAM.VehicleShop = {}
local JVS = JAM.VehicleShop
JVS.ESX = JAM.ESX

JVS.DrawTextDist = 4.0
JVS.MenuUseDist = 3.0
JVS.SpawnVehDist = 50.0
JVS.VehRetDist = 5.0

JVS.CarDealerJobLabel = "cardealer"
JVS.DealerMarkerPos = vector3(116.92, -140.51, 54.85)

-- Why vector4's, you ask?
-- X, Y, Z, Heading.

JVS.PurchasedCarPos = vector4(143.2, -145.0, 54.85, 338.07)
JVS.PurchasedUtilPos = vector4(143.2, -145.0, 54.85, 338.07)

JVS.SmallSpawnVeh = 'futo'
JVS.SmallSpawnPos = vector4(-52.08, -1095.08, 25.98, 203.66)

JVS.LargeSpawnVeh = 'towtruck'
JVS.LargeSpawnPos = vector4(0, 0, 0, 159.95)

JVS.DisplayPositions = {
	[1] = vector4(134.11, -160.3, 54.79, 158.47),
--	[2] = vector4(-43.58, -1098.32, 25.98, 237.50),
	[3] = vector4(126.68, -156.9, 54.79, 152.42),
	[4] = vector4(142.14, -163.17, 54.79, 155.19),
	[5] = vector4(118.24, -153.91, 60.76, 135.34),
	[6] = vector4(114.06, -146.57, 60.76, 120.03),
}

JVS.Blips = {
	CityShop = {
		Zone = "EV Motors",
		Sprite = 225,
		Scale = 0.5,
		Display = 4,
		Color = 67,
		Pos = { x = 114.06, y = -146.57, z = 60.76 },
	},
}
