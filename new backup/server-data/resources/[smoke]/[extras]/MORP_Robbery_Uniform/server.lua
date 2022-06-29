ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('robberyuniform', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_Robbery_Uniform:roddyRemoval', source)
    xPlayer.removeInventoryItem("robberyuniform", 1)
  end)
  