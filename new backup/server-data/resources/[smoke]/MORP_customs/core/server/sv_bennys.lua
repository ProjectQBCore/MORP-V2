esx = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('trp-customs:updateVehicle')
AddEventHandler('trp-customs:updateVehicle', function(vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT vehicle FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = vehicleProps.plate
	}, function(result)
		if result[1] then
			local vehicle = json.decode(result[1].vehicle)

			if vehicleProps.model == vehicle.model then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE plate = @plate', {
					['@plate'] = vehicleProps.plate,
					['@vehicle'] = json.encode(vehicleProps)
				})
			else
				print(('MORP_customs: %s attempted to upgrade vehicle with mismatching vehicle model!'):format(xPlayer.identifier))
			end
		end
	end)
end)

RegisterServerEvent('trp-customs:updateRepairCost')
AddEventHandler('trp-customs:updateRepairCost', function(cost)
    repaircost = cost
end)

RegisterServerEvent('trp-customs:attemptPurchase')
AddEventHandler('trp-customs:attemptPurchase', function(type, upgradeLevel)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local money = xPlayer.getMoney()
    local price = 0
    
    if type == "turbo" then
        price = vehicleCustomisationPrices.turbo.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "performance" then
        price = vehicleCustomisationPrices.performance.prices[upgradeLevel]
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "cosmetics" then
        price = vehicleCustomisationPrices.cosmetics.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "respray" then
        price = vehicleCustomisationPrices.respray.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "wheelsmoke" then
        price = vehicleCustomisationPrices.wheelsmoke.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "customwheels" then
        price = vehicleCustomisationPrices.customwheels.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "wheels" then
        price = vehicleCustomisationPrices.wheels.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "neonside" then
        price = vehicleCustomisationPrices.neonside.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "repair" then
        price = repaircost
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "windowtint" then
        price = vehicleCustomisationPrices.windowtint.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "neoncolours" then
        price = vehicleCustomisationPrices.neoncolours.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "headlights" then
        price = vehicleCustomisationPrices.headlights.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "xenoncolours" then
        price = vehicleCustomisationPrices.xenoncolours.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    elseif type == "oldlivery" then
        price = vehicleCustomisationPrices.oldlivery.price
        if money >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent("np-bennys:purchaseSuccessful", -1)
        else
            TriggerClientEvent("np-bennys:purchaseFailed", -1)
        end
    end
end)
