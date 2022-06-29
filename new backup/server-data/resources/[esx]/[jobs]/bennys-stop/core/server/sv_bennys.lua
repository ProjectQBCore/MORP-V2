ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local repairCost = vehicleBaseRepairCost

RegisterServerEvent("bennys:updateRepairCost")
AddEventHandler("bennys:updateRepairCost", function(price)
    repairCost = price
end)

RegisterServerEvent("bennys:attemptPurchase")
AddEventHandler("bennys:attemptPurchase", function(type, upgradeLevel)
    local player = ESX.GetPlayerFromId(source)
    local price = 0

    if type then
        if type == 'repair' then
            price = repairCost
        elseif upgradeLevel then
            price = vehicleCustomisationPrices[type].prices[upgradeLevel]
        else
            price = vehicleCustomisationPrices[type].price
        end
    end

    if player.getMoney() >= price then
        TriggerClientEvent("bennys:purchaseSuccessful", source)
        player.removeMoney(price)
    else
        TriggerClientEvent("bennys:purchaseFailed", source)
    end
end)

RegisterServerEvent('bennys:refreshVehicle')
AddEventHandler('bennys:refreshVehicle', function(vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT vehicle FROM owned_vehicles WHERE plate = @plate', { ['@plate'] = vehicleProps.plate }, function(result)
		if result[1] then
			local vehicle = json.decode(result[1].vehicle)

			if vehicleProps.model == vehicle.model then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE plate = @plate', {
					['@plate'] = vehicleProps.plate,
					['@vehicle'] = json.encode(vehicleProps)
				})
			else
				print(('esx_lscustom: %s attempted to upgrade vehicle with mismatching vehicle model!'):format(xPlayer.identifier))
			end
		end
	end)
end)