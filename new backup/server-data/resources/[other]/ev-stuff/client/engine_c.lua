-- Configuration

local button = 311 -- 167 (K)

local commandEnabled = false -- (false by default) If you set this to true, typing "/engine" in chat will also toggle your engine.

RegisterCommand('engine', function() 
    toggleEngine()
end, false)

function toggleEngine()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 then

        if (GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(-1)) then

            if IsVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
                SetVehicleEngineOn(vehicle, false, false, true)
                TriggerEvent('notification', 'Engine Halted')
            else
                SetVehicleEngineOn(vehicle, true, false, true)
                TriggerEvent('notification', 'Engine Started')
            end
        end
    end
end