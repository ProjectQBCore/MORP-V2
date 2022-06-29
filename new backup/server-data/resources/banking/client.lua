ESX = nil

-- Settings

local depositAtATM = false -- Allows the player to deposit at an ATM rather than only in banks (Default: false)
local giveCashAnywhere = false -- Allows the player to give CASH to another player, no matter how far away they are. (Default: false)
local withdrawAnywhere = false -- Allows the player to withdraw cash from bank account anywhere (Default: false)
local depositAnywhere = false -- Allows the player to deposit cash into bank account anywhere (Default: false)
local displayBankBlips = false -- Toggles Bank Blips on the map (Default: true)
local displayAtmBlips = false -- Toggles ATM blips on the map (Default: false) // THIS IS UGLY. SOME ICONS OVERLAP BECAUSE SOME PLACES HAVE MULTIPLE ATM MACHINES. NOT RECOMMENDED
local enableBankingGui = true -- Enables the banking GUI (Default: true) // MAY HAVE SOME ISSUES

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

-- ATMS
local atms = {
  [1] = -1126237515,
  [2] = 506770882,
  [3] = -870868698,
  [4] = 150237004,
  [5] = -239124254,
  [6] = -1364697528,  
}

v_5_b_atm1=150237004 
v_5_b_atm2=-239124254 
prop_atm_03=-1364697528 

RegisterNetEvent('bank:checkATM')
AddEventHandler('bank:checkATM', function()
  if IsNearATM() then
    atmOpen = true
    openGui()
    bankOpen = true
  else
    TriggerEvent('notification', 'No ATM', 2)
  end
end)

function IsNearATM()
  for i = 1, #atms do
    local objFound = GetClosestObjectOfType( GetEntityCoords(PlayerPedId()), 0.75, atms[i], 0, 0, 0)

    if DoesEntityExist(objFound) then
      TaskTurnPedToFaceEntity(PlayerPedId(), objFound, 3.0)
      return true
    end
  end

  return false
end
-- Banks
local banks = {
  {name="Bank", id=108, x=150.266, y=-1040.203, z=29.374},
  {name="Bank", id=108, x=-1212.980, y=-330.841, z=37.787},
  {name="Bank", id=108, x=-2962.582, y=482.627, z=15.703},
  {name="Bank", id=108, x=314.187, y=-278.621, z=54.170},
  {name="Bank", id=108, x=-351.534, y=-49.529, z=49.042},
  {name="Bank", id=108, x=241.727, y=220.706, z=106.286},
  {name="Bank", id=108, x=-113.12, y=6470.16, z=31.63},
  {name="Bank", id=108, x=1176.0833740234, y=2706.3386230469, z=37.157722473145},
}

local ClosedBanks = {}

RegisterNetEvent('robbery:shutdownBank')
AddEventHandler('robbery:shutdownBank', function(bankid,status)
  if status then
    ClosedBanks[bankid] = true
  else
    ClosedBanks[bankid] = nil
  end
end)

function UpdateBlip()
  Citizen.CreateThread(function()
    if (displayBankBlips == true) then
      for _, item in pairs(banks) do
        item.blip = AddBlipForCoord(item.x, item.y, item.z)
        SetBlipSprite(item.blip, item.id)
        SetBlipAsShortRange(item.blip, true)
        SetBlipScale(item.blip, 0.7)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(item.name)
        EndTextCommandSetBlipName(item.blip)
      end
    end
  end)
end

UpdateBlip()

-- NUI Variables
local atBank = false
local atATM = false
local bankOpen = false
local atmOpen = false

-- Open Gui and Focus NUI
function openGui()
  TriggerServerEvent('bank:updateFuckingInfo')
  bankanimation()
  Citizen.Wait(1400)
  SetNuiFocus(true, true)
  SendNUIMessage({openBank = true})
  TriggerEvent("banking:viewCash")
end

-- Close Gui and disable NUI
function closeGui()
  SetNuiFocus(false, false)
  SendNUIMessage({openBank = false})
  bankOpen = false
  atmOpen = false
  bankanimation()
end

atmuse = false
function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 

function bankanimation()
    local player = GetPlayerPed( -1 )
    if IsNearATM() then
      if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
            loadAnimDict( "amb@prop_human_atm@male@enter" )
            loadAnimDict( "amb@prop_human_atm@male@exit" )
            loadAnimDict( "amb@prop_human_atm@male@idle_a" )
          if ( atmuse ) then 
              ClearPedTasks(PlayerPedId())
              TaskPlayAnim( player, "amb@prop_human_atm@male@exit", "exit", 1.0, 1.0, -1, 49, 0, 0, 0, 0 )
              atmuse = false
              local finished = exports["taskbar"]:taskBar(3000,"Retrieving Card")
              ClearPedTasks(PlayerPedId())
          else
              atmuse = true
              TaskPlayAnim( player, "amb@prop_human_atm@male@idle_a", "idle_b", 1.0, 1.0, -1, 49, 0, 0, 0, 0 )
          end
      end
    else
        if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
            loadAnimDict( "mp_common" )
            if ( atmuse ) then 
                ClearPedTasks(PlayerPedId())
                TaskPlayAnim( player, "mp_common", "givetake1_a", 1.0, 1.0, -1, 49, 0, 0, 0, 0 )
                atmuse = false
                local finished = exports["taskbar"]:taskBar(1000,"Retrieving Card")
                ClearPedTasks(PlayerPedId())
            else
                atmuse = true
                TaskPlayAnim( player, "mp_common", "givetake1_a", 1.0, 1.0, -1, 49, 0, 0, 0, 0 )
                Citizen.Wait(1000)
                ClearPedTasks(PlayerPedId())
            end
        end
    end
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Controlkey = {["generalUse"] = {38,"E"}} 
RegisterNetEvent('event:control:update')
AddEventHandler('event:control:update', function(table)
  Controlkey["generalUse"] = table["generalUse"]
end)

-- If GUI setting turned on, listen for INPUT_PICKUP keypress
local lastTrigger = 0
if enableBankingGui then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(1)
      local ply = PlayerPedId()
      local plyCoords = GetEntityCoords(ply, 0)
      local closestbank = 1000.0
      local scanid = 0
      if not (IsInVehicle()) and not bankOpen then
        for i = 1, #banks do
          local distance = #(vector3(banks[i].x, banks[i].y, banks[i].z) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
          if(distance < closestbank) then
            scanid = i
            closestbank = distance
          end
        end
      end

      if(closestbank < 5.5 and scanid ~= 0) then
          if lastTrigger == 0 then
            lastTrigger = scanid
            TriggerEvent("robbery:scanbank",scanid)
          end
          local cdst = closestbank
          while cdst < 1.5 do
            Citizen.Wait(1)
            local plyCoords = GetEntityCoords(ply, 0)
            cdst = #(vector3(banks[scanid].x, banks[scanid].y, banks[scanid].z) -  vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
              if ClosedBanks[scanid] then
                DrawText3D(plyCoords.x, plyCoords.y, plyCoords.z,"This bank is closed.")
              else
                DrawText3D(plyCoords.x, plyCoords.y, plyCoords.z,"["..Controlkey["generalUse"][2].."] to use Bank.")
                atBank = true
                if IsControlJustPressed(1, Controlkey["generalUse"][1])  then -- IF INPUT_PICKUP Is pressed
                    openGui()
                    bankOpen = true
                end
                if bankOpen then
                  Citizen.Wait(1000)
                end
              end
          end
      else
        if(atmOpen or bankOpen) then
          closeGui()
          atmOpen = false
          bankOpen = false
        end
        if atBank then
          atBank = false
        end
        if lastTrigger ~= 0 and closestbank > 25.0 then
          TriggerEvent("robbery:disablescans")
          lastTrigger = 0
        end
        Citizen.Wait(math.ceil(closestbank*5))
      end
    end
  end)
end

-- NUI Callback Methods
RegisterNUICallback('close', function(data, cb)
  closeGui()
  cb('ok')
end)

RegisterNUICallback('balance', function(data, cb)
  SendNUIMessage({openSection = "balance"})
  cb('ok')
end)

RegisterNUICallback('withdraw', function(data, cb)
  SendNUIMessage({openSection = "withdraw"})
  cb('ok')
end)

RegisterNUICallback('deposit', function(data, cb)
  SendNUIMessage({openSection = "deposit"})
  cb('ok')
end)

RegisterNUICallback('transfer', function(data, cb)
  SendNUIMessage({openSection = "transfer"})
  cb('ok')
end)

RegisterNUICallback('quickCash', function(data, cb)
  TriggerEvent('bank:withdraw', 100)
  cb('ok')
end)

RegisterNUICallback('withdrawSubmit', function(data, cb)
  TriggerEvent('bank:withdraw', data.amount)
  TriggerServerEvent('banking:updateBank', bank)
  cb('ok')
end)

RegisterNUICallback('depositSubmit', function(data, cb)
  TriggerEvent('bank:deposit', data.amount)
  cb('ok')
end)

RegisterNUICallback('transferSubmit', function(data, cb)
  local fromPlayer = GetPlayerServerId();
    TriggerServerEvent('bank:transfer', data.to, data.amount)
  cb('ok')
end)

-- Check if player is in a vehicle
function IsInVehicle()
  local ply = PlayerPedId()
  if IsPedSittingInAnyVehicle(ply) then
    return true
  else
    return false
  end
end

-- Check if player is near a bank
function IsNearBank()
  local ply = PlayerPedId()
  local plyCoords = GetEntityCoords(ply, 0)
  for _, item in pairs(banks) do
    local distance = #(vector3(item.x, item.y, item.z) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
    if(distance <= 2) then
      return true
    end
  end
end

-- Check if player is near another player
function IsNearPlayer(player)
  local ply = PlayerPedId()
  local plyCoords = GetEntityCoords(ply, 0)
  local ply2 = GetPlayerPed(GetPlayerFromServerId(player))
  local ply2Coords = GetEntityCoords(ply2, 0)
  local distance = Vdist2(plyCoords, ply2Coords)
  if(distance <= 5) then
    return true
  end
end

-- Process deposit if conditions met
RegisterNetEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
  if(IsNearBank() == true ) then
    if (IsInVehicle()) then
    exports["np-base"]:getModule("Util"):MissionText("You ~r~cannot~w~ use the ATM in a vehicle", 500)
    TriggerEvent('notification', 'You cannot use the ATM in a vehicle.', 2, 3500)
    else
      TriggerServerEvent("bank:deposit", tonumber(amount))
    end
  else
 TriggerEvent('notification', 'You cannot deposit at an ATM.', 2, 3500)
  end
end)

-- Process withdraw if conditions met
RegisterNetEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
  if(IsNearATM() == true or IsNearBank() == true) then
    if (IsInVehicle()) then
    else
      TriggerServerEvent("bank:withdraw", tonumber(amount))
    end
  end
end)

-- Process give cash if conditions met
RegisterNetEvent('bank:givecash')
AddEventHandler('bank:givecash', function(toPlayer, amount)
  if not IsNearPlayer(toPlayer) then TriggerEvent('chatMessage', "", {255, 0, 0}, "^1You are not near this player!") return end
  local target = GetPlayerFromServerId(tonumber(toPlayer))
  local targetPos = GetEntityCoords(GetPlayerPed(target))
  local userCoords = GetEntityCoords(PlayerPedId())
  if Vdist2(targetPos, userCoords) > 15.0 then
      TriggerEvent('chatMessage', "", {255, 0, 0}, "^1You are not near this player!")
      return
  end

  local player2 = GetPlayerFromServerId(tonumber(toPlayer))
  local playing = IsPlayerPlaying(player2)
  
  if (playing ~= false) then
    TriggerServerEvent("bank:givecash", toPlayer, tonumber(amount))
    TriggerEvent("animation:PlayAnimation","id")
  else
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^1This player is not online!");
  end
end)

-- Process bank transfer if player is online
RegisterNUICallback('transfer', function(data)
  TriggerServerEvent('bank:transfer', data.to, data.amountt)
end)

RegisterNetEvent("es:addedMoney")
AddEventHandler("es:addedMoney", function(m, native, current)
  TriggerEvent("banking:updateCash", current)
  TriggerEvent("banking:addCash", m)
end)

RegisterNetEvent("es:removedMoney")
AddEventHandler("es:removedMoney", function(m, native, current)
  TriggerEvent("banking:updateCash", current)
  TriggerEvent("banking:removeCash", m)
end)

RegisterNetEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amount)
  local player2 = GetPlayerFromServerId(toPlayer)
  local playing = IsPlayerPlaying(player2)
  if (playing ~= false) then
    TriggerServerEvent("bank:transfer", toPlayer, tonumber(amount))
  else
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^1This player is not online!");
  end
end)
--]]
-- Send NUI message to update bank balance
RegisterNetEvent('banking:updateBank')
AddEventHandler('banking:updateBank', function(balance, show, name)
  local id = PlayerId()
  name = name or GetPlayerName(id)
  SendNUIMessage({
    updateBalance = true,
    balance = balance,
    name = name,
    show = show
  })
end)

RegisterNetEvent('banking:updateCash')
AddEventHandler('banking:updateCash', function(balance, show)
  local id = PlayerId()
  SendNUIMessage({
    updateCash = true,
    cash = balance,
    show = show
  })
end)

RegisterNetEvent("banking:viewBank")
AddEventHandler("banking:viewBank", function()
  SendNUIMessage({
    viewBalance = true
  })
end)

-- Send NUI Message to display add balance popup
RegisterNetEvent("banking:addBank")
AddEventHandler("banking:addBank", function(amount)
  SendNUIMessage({
    addBalance = true,
    amount = amount
  })
end)

RegisterNetEvent("banking:removeBank")
AddEventHandler("banking:removeBank", function(amount)
  SendNUIMessage({
    removeBalance = true,
    amount = amount
  })
end)

RegisterNetEvent("banking:addCash")
AddEventHandler("banking:addCash", function(amount)
  SendNUIMessage({
    addCash = true,
    amount = amount
  })
end)

-- Send NUI Message to display remove balance popup
RegisterNetEvent("banking:removeCash")
AddEventHandler("banking:removeCash", function(amount)
  SendNUIMessage({
    removeCash = true,
    amount = amount
  })
end)

RegisterNetEvent("banking:viewCash")
AddEventHandler("banking:viewCash", function()
  SendNUIMessage({
    viewCash = true
  })
end)

RegisterCommand('ofek', function()
  TriggerEvent('notification', 'Test', 1)
  TriggerEvent('notification', 'Test', 2)
  TriggerEvent('notification', 'Test', 3)
end)