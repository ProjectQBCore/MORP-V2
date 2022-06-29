
DynamicWeather = true
debugprint = false

AvailableWeatherTypes = {
    'EXTRASUNNY', 
    'CLEAR', 
    'NEUTRAL', 
    'SMOG', 
    'FOGGY', 
    'OVERCAST', 
    'CLOUDS', 
    'CLEARING', 
    'RAIN', 
    'THUNDER', 
    'SNOW', 
    'BLIZZARD', 
    'SNOWLIGHT', 
    'XMAS', 
    'HALLOWEEN',
}

local CurrentWeather = "EXTRASUNNY"
local baseTime = 0
local timeOffset = 0
local freezeTime = false
local blackout = false
local newWeatherTimer = 10

RegisterServerEvent('TimeSync:ChangeWeather')
AddEventHandler('TimeSync:ChangeWeather', function(weather)
    CurrentWeather = string.lower(weather)
    newWeatherTimer = 10
    TriggerEvent('TimeSync:requestSync')
end)

RegisterServerEvent('TimeSync:requestSync')
AddEventHandler('TimeSync:requestSync', function()
    TriggerClientEvent('TimeSync:updateWeather', -1, CurrentWeather, blackout)
    TriggerClientEvent('TimeSync:updateTime', -1, baseTime, timeOffset, freezeTime)
end)

function ShiftToMinute(minute)
    timeOffset = timeOffset - ( ( (baseTime+timeOffset) % 60 ) - minute )
end

function ShiftToHour(hour)
    timeOffset = timeOffset - ( ( ((baseTime+timeOffset)/60) % 24 ) - hour ) * 60
end

TriggerEvent('es:addGroupCommand', 'weather', "admin", function(source, args, user)
    local validWeatherType = false
    if args[1] == nil then
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Invalid syntax, use ^0/weather <weatherType> ^1instead!')
    else
        for i,wtype in ipairs(AvailableWeatherTypes) do
            if wtype == string.upper(args[1]) then
                validWeatherType = true
            end
        end
        if validWeatherType then
            TriggerClientEvent('TimeSync:notify', source, 'Weather will change to: ~y~' .. string.lower(args[1]) .. "~s~.")
            CurrentWeather = string.upper(args[1])
            newWeatherTimer = 10
            TriggerEvent('TimeSync:requestSync')
        else
            TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Invalid weather type, valid weather types are: ^0\nEXTRASUNNY CLEAR NEUTRAL SMOG FOGGY OVERCAST CLOUDS CLEARING RAIN THUNDER SNOW BLIZZARD SNOWLIGHT XMAS HALLOWEEN ')
        end
    end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end, {help = "Change the weather.", params = {{ name="weatherType", help="Available types: extrasunny, clear, neutral, smog, foggy, overcast, clouds, clearing, rain, thunder, snow, blizzard, snowlight, xmas & halloween"}}})

TriggerEvent('es:addGroupCommand', 'time', "admin", function(source, args, user)
    if tonumber(args[1]) ~= nil and tonumber(args[2]) ~= nil then
        local argh = tonumber(args[1])
        local argm = tonumber(args[2])
        if argh < 24 then
            ShiftToHour(argh)
        else
            ShiftToHour(0)
        end
        if argm < 60 then
            ShiftToMinute(argm)
        else
            ShiftToMinute(0)
        end
        local newtime = math.floor(((baseTime+timeOffset)/60)%24) .. ":"
        local minute = math.floor((baseTime+timeOffset)%60)
        if minute < 10 then
            newtime = newtime .. "0" .. minute
        else
            newtime = newtime .. minute
        end
        TriggerClientEvent('TimeSync:notify', source, 'Time was changed to: ~y~' .. newtime .. "~s~!")
        TriggerEvent('TimeSync:requestSync')
    else
        TriggerClientEvent('chatMessage', source, '', {255,255,255}, '^8Error: ^1Invalid syntax. Use ^0/time <hour> <minute> ^1instead!')
    end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end, {help = "Change the time.", params = {{ name="hours", help="A number between 0 - 23"}, { name="minutes", help="A number between 0 - 59"}}})

TriggerEvent('es:addGroupCommand', 'freezeweather', "admin", function(source, args, user)
    DynamicWeather = not DynamicWeather
    if not DynamicWeather then
        TriggerClientEvent('TimeSync:notify', source, 'Dynamic weather changes are now ~r~disabled~s~.')
    else
        TriggerClientEvent('TimeSync:notify', source, 'Dynamic weather changes are now ~b~enabled~s~.')
    end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end, {help = 'Enable/disable dynamic weather changes.', params = {}})

TriggerEvent('es:addGroupCommand', 'freezetime', "admin", function(source, args, user)
    freezeTime = not freezeTime
    if freezeTime then
        TriggerClientEvent('TimeSync:notify', source, 'Time is now ~b~frozen~s~.')
    else
        TriggerClientEvent('TimeSync:notify', source, 'Time is ~y~no longer frozen~s~.')
    end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end, {help = 'Freeze / unfreeze time.', params = {}})

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local newBaseTime = os.time(os.date("!*t"))/2 + 360
        if freezeTime then
            timeOffset = timeOffset + baseTime - newBaseTime			
        end
        baseTime = newBaseTime
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        TriggerClientEvent('TimeSync:updateTime', -1, baseTime, timeOffset, freezeTime)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(300000)
        TriggerClientEvent('TimeSync:updateWeather', -1, CurrentWeather, blackout)
    end
end)

Citizen.CreateThread(function()
    while true do
        newWeatherTimer = newWeatherTimer - 1
        Citizen.Wait(60000)
        if newWeatherTimer == 0 then
            if DynamicWeather then
                NextWeatherStage()
            end
            newWeatherTimer = 10
        end
    end
end)

function NextWeatherStage()
    if CurrentWeather == "CLEAR" or CurrentWeather == "CLOUDS" or CurrentWeather == "EXTRASUNNY"  then
        local new = math.random(1,2)
        if new == 1 then
            CurrentWeather = "CLEARING"
        else
            CurrentWeather = "OVERCAST"
        end
    elseif CurrentWeather == "CLEARING" or CurrentWeather == "OVERCAST" then
        local new = math.random(1,6)
        if new == 1 then
            if CurrentWeather == "CLEARING" then CurrentWeather = "FOGGY" else CurrentWeather = "RAIN" end
        elseif new == 2 then
            CurrentWeather = "CLOUDS"
        elseif new == 3 then
            CurrentWeather = "CLEAR"
        elseif new == 4 then
            CurrentWeather = "EXTRASUNNY"
        elseif new == 5 then
            CurrentWeather = "SMOG"
        else
            CurrentWeather = "FOGGY"
        end
    elseif CurrentWeather == "THUNDER" or CurrentWeather == "RAIN" then
        CurrentWeather = "CLEARING"
    elseif CurrentWeather == "SMOG" or CurrentWeather == "FOGGY" then
        CurrentWeather = "CLEAR"
    end
    TriggerEvent("TimeSync:requestSync")
    if debugprint then
        print("[TimeSync] New random weather type has been generated: " .. CurrentWeather .. ".\n")
        print("[TimeSync] Resetting timer to 10 minutes.\n")
    end
end
