ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Code

liquid = false

RegisterCommand('alertson', function(source)
liquid = false
TriggerClientEvent('notification', source, ('Alerts are now on!'))
end)

RegisterCommand('alertsoff', function(source)
liquid = true
TriggerClientEvent('notification', source, ('Alerts are now off!'))

end)

RegisterServerEvent('policealerts:server:AddPoliceAlert')
AddEventHandler('policealerts:server:AddPoliceAlert', function(data, forBoth)
    if liquid then
	elseif not liquid then
	forBoth = forBoth ~= nil and forBoth or false
    TriggerClientEvent('policealerts:client:AddPoliceAlert', -1, data, forBoth)
	
	end
end)

RegisterServerEvent('mvdalerts:server:AddmvdAlert')
AddEventHandler('mvdalerts:server:AddmvdAlert', function(data, forBoth)
    if liquid then
	elseif not liquid then
	forBoth = forBoth ~= nil and forBoth or false
    TriggerClientEvent('mvdalerts:client:AddmvdAlert', -1, data, forBoth)
	
	end
end)