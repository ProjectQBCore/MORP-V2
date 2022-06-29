function VehiclesMenu()
	local dealer = {}
	for k,v in pairs(Config.Cars) do
  
	  table.insert(dealer,{
		label = v.label,
		name  = v.name,
	  })
	end
  
	  ESX.UI.Menu.CloseAll()
  
	  ESX.UI.Menu.Open(
		  'default', GetCurrentResourceName(), 'dealer_vehicles',
		  {
			  title  = 'Vehicles Menu',
			  dealer = dealer
		  },
		  function(data, menu)

			local spawnPoint = Config.VehicleSpawnPoint
			local vehicleProps = data.current.name

		if ESX.Game.IsSpawnPointClear(spawnPoint.coords, 2) then
			ESX.Game.SpawnVehicle(vehicleProps, spawnPoint.coords, spawnPoint.heading, function(vehicle)
			  ESX.Game.SetVehicleProperties(vehicle, vehicleProps)

			  if Config.EnableVehicleCustomColor then
			  SetVehicleCustomPrimaryColour(vehicle, Config.VehicleColor.r, Config.VehicleColor.g, Config.VehicleColor.b)
			  SetVehicleCustomSecondaryColour(vehicle, Config.VehicleColor.r, Config.VehicleColor.g, Config.VehicleColor.b)
			  end
			end)
			TriggerEvent('notification', 'You have spawned a vehicle.', 1)
			ESX.UI.Menu.CloseAll()
		else
			TriggerEvent('notification', 'Please clear the spawn point.', 2)
		end



		  end,
		  function(data, menu)
			  menu.close()
		  end
	  )
  end