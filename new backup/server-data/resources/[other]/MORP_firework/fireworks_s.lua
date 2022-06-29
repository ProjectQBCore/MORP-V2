
  
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("firework1", function(source, item)
    TriggerClientEvent("fireworks:client:UseFirework", source, "firework1", "proj_indep_firework")
end)

ESX.RegisterUsableItem("firework2", function(source, item)
    TriggerClientEvent("fireworks:client:UseFirework", source, "firework2", "proj_indep_firework_v2")
end)

ESX.RegisterUsableItem("firework3", function(source, item)
    TriggerClientEvent("fireworks:client:UseFirework", source, "firework.", "proj_xmas_firework")
end)

ESX.RegisterUsableItem("firework4", function(source, item)
    TriggerClientEvent("fireworks:client:UseFirework", source, "firework4", "scr_indep_fireworks")
end)

RegisterServerEvent("firework:RemoveItem")
AddEventHandler("firework:RemoveItem", function(item,count)
    local ply = ESX.GetPlayerFromId(source)
    ply.removeInventoryItem(item,count)
end)