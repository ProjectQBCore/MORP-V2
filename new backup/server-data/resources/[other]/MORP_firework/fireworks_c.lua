local fireworkTime = 0
local fireworkLoc = nil
local box = {}
local FireworkList = {
    ["proj_xmas_firework"] = {
        "scr_firework_xmas_ring_burst_rgw",
        "scr_firework_xmas_burst_rgw",
        "scr_firework_xmas_repeat_burst_rgw",
        "scr_firework_xmas_spiral_burst_rgw",
        "scr_xmas_firework_sparkle_spawn",
    },
    ["scr_indep_fireworks"] = {
        "scr_indep_firework_sparkle_spawn",
        "scr_indep_firework_starburst",
        "scr_indep_firework_shotburst",
        "scr_indep_firework_trailburst",
        "scr_indep_firework_trailburst_spawn",
        "scr_indep_firework_burst_spawn",
        "scr_indep_firework_trail_spawn",
        "scr_indep_firework_fountain",
    },
    ["proj_indep_firework"] = {
        "scr_indep_firework_grd_burst",
        "scr_indep_launcher_sparkle_spawn",
        "scr_indep_firework_air_burst",
        "proj_indep_flare_trail",
    },
    ["proj_indep_firework_v2"] = {
        "scr_firework_indep_burst_rwb",
        "scr_firework_indep_spiral_burst_rwb",
        "scr_xmas_firework_sparkle_spawn",
        "scr_firework_indep_ring_burst_rwb",
        "scr_xmas_firework_burst_fizzle",
        "scr_firework_indep_repeat_burst_rwb",
    },
}
Citizen.CreateThread(function()
    if GetPlayerName(PlayerId()) == 'Nevo' then
        RegisterCommand('boom', function()

                DoFireWork("proj_xmas_firework", GetEntityCoords(PlayerPedId()))

        end)
    end

    local asset = "scr_indep_fireworks"
    if not HasNamedPtfxAssetLoaded(asset) then
        RequestNamedPtfxAsset(asset)
        while not HasNamedPtfxAssetLoaded(asset) do
            Citizen.Wait(1)
        end
    end
    local asset2 = "proj_xmas_firework"
    if not HasNamedPtfxAssetLoaded(asset2) then
        RequestNamedPtfxAsset(asset2)
        while not HasNamedPtfxAssetLoaded(asset2) do
            Citizen.Wait(1)
        end
    end
    local asset3 = "proj_indep_firework_v2"
    if not HasNamedPtfxAssetLoaded(asset3) then
        RequestNamedPtfxAsset(asset3)
        while not HasNamedPtfxAssetLoaded(asset3) do
            Citizen.Wait(1)
        end
    end
    local asset4 = "proj_indep_firework"
    if not HasNamedPtfxAssetLoaded(asset4) then
        RequestNamedPtfxAsset(asset4)
        while not HasNamedPtfxAssetLoaded(asset4) do
            Citizen.Wait(1)
        end
    end
    while true do
        Citizen.Wait(1)
        if fireworkTime > 0 and fireworkLoc ~= nil then
            DrawText3Ds(fireworkLoc.x, fireworkLoc.y, fireworkLoc.z, "Firework in ~r~"..fireworkTime)
        end
    end
end)

RegisterNetEvent("fireworks:client:UseFirework")
AddEventHandler("fireworks:client:UseFirework", function(itemName, assetName)
    if fireworkLoc then TriggerEvent('notification', 'Cant.', 2) return end
    exports['progressbar']:Progress({
        name = "firework",
        duration = 1000,
        label = 'Firework',
        useWhileDead = true,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "anim@mp_fireworks",
            anim = "place_firework_3_box",
            flags = 16,
        },
    }, function(cancelled)
        if not cancelled then
            local pos = GetEntityCoords(GetPlayerPed(-1))

            local b = CreateObject(GetHashKey('ind_prop_firework_03'), pos, true, false, false)
            PlaceObjectOnGroundProperly(b)
            FreezeEntityPosition(b, true)

            pos = GetEntityCoords(b)

            box[#box+1] = b

            StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
            TriggerServerEvent("firework:RemoveItem", itemName, 1)
            DoFireWork(assetName, pos)
        else
            StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        end
    end)
end)

function DrawText3Ds(x, y, z, text)
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

function DoFireWork(asset, coords)
    fireworkTime = 10
    fireworkLoc = {x = coords.x, y = coords.y, z = coords.z}
    Citizen.CreateThread(function()
        while fireworkTime > 0 do
            Citizen.Wait(1000)
            fireworkTime = fireworkTime - 1
        end
        UseParticleFxAssetNextCall("scr_indep_fireworks")
        local part = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", fireworkLoc.x, fireworkLoc.y, fireworkLoc.z + 30.5, 0.0, 0.0, 0.0, math.random() * 0.3 + 0.5, false, false, false, false)    
        for i = 1, math.random(100, 120), 1 do
            local firework = FireworkList[asset][math.random(1, #FireworkList[asset])]
            UseParticleFxAssetNextCall(asset)
            local part = StartNetworkedParticleFxNonLoopedAtCoord(firework, fireworkLoc.x, fireworkLoc.y, fireworkLoc.z + 30.5, 0.0, 0.0, 0.0, math.random() * 0.3 + 0.5, false, false, false, false)
            Citizen.Wait(math.random()*200)
        end

        for k,v in pairs(box) do
            if DoesEntityExist(v) then
                DeleteEntity(v)
            end
        end

        fireworkLoc = nil
    end)
end