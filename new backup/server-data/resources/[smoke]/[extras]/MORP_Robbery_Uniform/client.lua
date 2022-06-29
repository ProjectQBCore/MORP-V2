ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_Robbery_Uniform:roddyRemoval')
AddEventHandler('esx_Robbery_Uniform:roddyRemoval', function()
  local playerPed = GetPlayerPed(-1)
  
  TriggerEvent("esx_Robbery_Uniform:ShirtAnimation")
  Wait(1500)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 8, 15, 0, 0)
  SetPedComponentVariation(playerPed, 9, 0, 0, 0)
  SetPedComponentVariation(playerPed, 1, 0, 0, 0)
  SetPedComponentVariation(playerPed, 7, 0, 0, 0)
  SetPedComponentVariation(playerPed, 3, 15, 0, 0)
  SetPedComponentVariation(playerPed, 10, 0, 0, 0)
  SetPedComponentVariation(playerPed, 11, 15, 0, 0)
  TriggerEvent("esx_Robbery_Uniform:PantsAnimation")
  Wait(1300)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 4, 21, 0, 0)
  TriggerEvent("esx_Robbery_Uniform:ShoesAnimation")
  Wait(1200)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 6, 34, 0, 0)
  TriggerEvent("esx_Robbery_Uniform:ShoesAnimation")
  Wait(1200)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 6, 51, 0, 0)
  TriggerEvent("esx_Robbery_Uniform:PantsAnimation")
  Wait(1300)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 4, 39, 0, 0)
  TriggerEvent("esx_Robbery_Uniform:ShirtAnimation")
  Wait(1500)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 8, 24, 0, 0)
  SetPedComponentVariation(playerPed, 11, 68, 3, 0)
  SetPedComponentVariation(playerPed, 3, 4, 0, 0)
  Wait(500)
  TriggerEvent("esx_Robbery_Uniform:MaskAnimation")
  Wait(800)
  TriggerEvent("esx_Robbery_Uniform:CancelAnimation", source)
  SetPedComponentVariation(playerPed, 1, 1, 0, 0)
  print("^3======================================================================^3")
  print("^uniform created by Smoke Slickz#9734 for MORP")
  print("^3=====================================================================^3")
end)

RegisterNetEvent('esx_Robbery_Uniform:CancelAnimation')
AddEventHandler('esx_Robbery_Uniform:CancelAnimation', function()
local ped = GetPlayerPed(-1)
  ClearPedTasks(ped)
  FreezeEntityPosition(ped,false)
end)

RegisterNetEvent('esx_Robbery_Uniform:ShirtAnimation')
AddEventHandler('esx_Robbery_Uniform:ShirtAnimation', function()
local ped = GetPlayerPed(-1)
local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
  if not IsEntityPlayingAnim(ped, "clothingtie", "try_tie_positive_a", 3) then
  FreezeEntityPosition(ped,true)
    RequestAnimDict("clothingtie")
      while not HasAnimDictLoaded("clothingtie") do
        Citizen.Wait(100)
      end
    TaskPlayAnim(ped, "clothingtie", "try_tie_positive_a", 8.0, -8, -1, 49, 0, 0, 0, 0)
  end
end)

RegisterNetEvent('esx_Robbery_Uniform:PantsAnimation')
AddEventHandler('esx_Robbery_Uniform:PantsAnimation', function()
local ped = GetPlayerPed(-1)
local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
  if not IsEntityPlayingAnim(ped, "re@construction", "out_of_breath", 3) then
  FreezeEntityPosition(ped,true)
    RequestAnimDict("re@construction")
      while not HasAnimDictLoaded("re@construction") do
        Citizen.Wait(100)
      end
    TaskPlayAnim(ped, "re@construction", "out_of_breath", 8.0, -8, -1, 49, 0, 0, 0, 0)
  end
end)

RegisterNetEvent('esx_Robbery_Uniform:ShoesAnimation')
AddEventHandler('esx_Robbery_Uniform:ShoesAnimation', function()
local ped = GetPlayerPed(-1)
local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
  if not IsEntityPlayingAnim(ped, "random@domestic", "pickup_low", 3) then
  FreezeEntityPosition(ped,true)
    RequestAnimDict("random@domestic")
      while not HasAnimDictLoaded("random@domestic") do
        Citizen.Wait(100)
      end
    TaskPlayAnim(ped, "random@domestic", "pickup_low", 8.0, -8, -1, 49, 0, 0, 0, 0)
  end
end)

RegisterNetEvent('esx_Robbery_Uniform:MaskAnimation')
AddEventHandler('esx_Robbery_Uniform:MaskAnimation', function()
local ped = GetPlayerPed(-1)
local x,y,z = table.unpack(GetEntityCoords(playerPed, true))
  if not IsEntityPlayingAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 3) then
  FreezeEntityPosition(ped,true)
    RequestAnimDict("mp_masks@standard_car@ds@")
      while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
        Citizen.Wait(100)
      end
    TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 8.0, -8, -1, 49, 0, 0, 0, 0)
  end
end)