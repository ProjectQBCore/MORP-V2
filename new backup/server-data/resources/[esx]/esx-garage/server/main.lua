ESX = nil

local cachedData = {}

TriggerEvent("esx:getSharedObject", function(library) ESX = library end)


ESX.RegisterServerCallback("garage:getVehicles", function(source, cb, garage)
	local player = ESX.GetPlayerFromId(source)

	if player then
		local sqlQuery = 'SELECT * FROM owned_vehicles WHERE owner = @cid'

		if garage then
			sqlQuery = 'SELECT * FROM owned_vehicles WHERE owner = @cid and garage = @garage'
		end

		MySQL.Async.fetchAll(sqlQuery, {
			["@cid"] = player["identifier"],
			["@garage"] = garage
		}, function(responses)
			local data = getPlayerVehiclesOut(player.identifier)
			cb({responses,data})
		end)
	else
		cb(false)
	end
end)

function getPlayerVehiclesOut(identifier,cb)
	local vehicles = {}
	local data = MySQL.Sync.fetchAll("SELECT * FROM owned_vehicles WHERE owner=@identifier",{['@identifier'] = identifier})	
	return data
end

ESX.RegisterServerCallback("garage:validateVehicle", function(source, callback, vehicleProps, garage)
	local player = ESX.GetPlayerFromId(source)

	if player then
		MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
			["@plate"] = vehicleProps["plate"]
		}, function(responses)
			if responses[1] then
				callback(true)
			else
				callback(false)
			end
		end)
	else
		callback(false)
	end
end)

ESX.RegisterServerCallback('garage:checkMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local bills = MySQL.Sync.fetchAll('SELECT * FROM billing WHERE identifier = @identifier',{['@identifier'] = xPlayer.identifier})
	local totalBills = 0

	for i=1, #bills, 1 do
		totalBills = totalBills + bills[i].amount
	end

	if totalBills >= 2000 then
		cb("deudas")
	elseif xPlayer.get('money') >= 200 then
		cb(true)
	else
		cb(false)
	end

end)

RegisterServerEvent('garage:pay')
AddEventHandler('garage:pay', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(200)
end)

RegisterServerEvent('garage:modifystate')
AddEventHandler('garage:modifystate', function(vehicleProps, state, garage)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local plate = vehicleProps.plate

	if garage == nil then
		MySQL.Sync.execute("UPDATE owned_vehicles SET garage=@garage WHERE plate=@plate",{['@garage'] = "OUT" , ['@plate'] = plate})
		MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehicle WHERE plate=@plate",{['@vehicle'] = json.encode(vehicleProps) , ['@plate'] = plate})
		MySQL.Sync.execute("UPDATE owned_vehicles SET state=@state WHERE plate=@plate",{['@state'] = state , ['@plate'] = plate})
	else 

		MySQL.Sync.execute("UPDATE owned_vehicles SET garage=@garage WHERE plate=@plate",{['@garage'] = garage , ['@plate'] = plate})
		MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehicle WHERE plate=@plate",{['@vehicle'] = json.encode(vehicleProps) , ['@plate'] = plate})
		MySQL.Sync.execute("UPDATE owned_vehicles SET state=@state WHERE plate=@plate",{['@state'] = state , ['@plate'] = plate})

	end
end)

RegisterServerEvent('garage:modifyHouse')
AddEventHandler('garage:modifyHouse', function(vehicleProps)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local plate = vehicleProps.plate
	print(json.encode(plate))

	--MySQL.Sync.execute("UPDATE owned_vehicles SET garage=@garage WHERE plate=@plate",{['@garage'] = garage , ['@plate'] = plate})
	MySQL.Sync.execute("UPDATE owned_vehicles SET vehicle=@vehicle WHERE plate=@plate",{['@vehicle'] = json.encode(vehicleProps) , ['@plate'] = plate})

	
end)

RegisterServerEvent("garage:sacarometer")
AddEventHandler("garage:sacarometer", function(vehicle,state,src1)
	local src = source
	if src1 then
		src = src1
	end
	local xPlayer = ESX.GetPlayerFromId(src)
	while xPlayer == nil do Citizen.Wait(1); end
	local plate = all_trim(vehicle)
	local state = state
	MySQL.Sync.execute("UPDATE owned_vehicles SET state =@state WHERE plate=@plate",{['@state'] = state , ['@plate'] = plate})
end)

function all_trim(s)
	return s:match( "^%s*(.-)%s*$" )
end

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
  end