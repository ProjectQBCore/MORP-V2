local package = {
    -- The Shop Blip
    {title="Weapon Crate", colour=75, id=156, x=979.96, y=-2666.24, z=40.03}


}

local onealreadygoingon = true

local you = false

local lolome = false

local lolome2 = false

local lolome3 = false

local lolome4 = false

local bichboy = false

local sellstealthing = true

local cangoaway = false

local aaaaaaaaaaaaaaaaaa = false

local aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = false

local pressed2 = true

local getmycar = false

local hieststarted = false

RegisterNetEvent("start:setup2")
AddEventHandler("start:setup2" ,function()

    DoScreenFadeOut(400)
    Citizen.Wait(500)

    ok1 = true



    

    SetNewWaypoint(-2353.54,272.88)
    yowblips2 = AddBlipForCoord(-2353.54,272.88)

    SetBlipSprite (yowblips2, 562)

    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Car For Getaway')
	EndTextCommandSetBlipName(yowblips2)

    CreateYowVehicle()
    Citizen.Wait(500)
    DoScreenFadeIn(400)
   



    Citizen.CreateThread(function()
        listOn = false
            while true do
        
                Wait(5)
                local PlayerPos = GetEntityCoords(PlayerPedId())

                if GetDistanceBetweenCoords(PlayerPos, -2308.26,431.34,174.45, true) <= 200 then	
                                
                    bich2()
                    CreateStealCar()

                    getmycar = true

                    Citizen.Wait(11111111111111111111111111111111111111111111111111111111111111111)
                end

            end

    

    end)

  

    
    
  

end)


RegisterCommand("lolman" ,function()

    TriggerEvent("start:setup2")

end)



function start1()
    ok = true

    okman = true

    SetNewWaypoint(977.07,-104.12)
    yowblips = AddBlipForCoord(977.07,-104.12)
    SetBlipSprite (yowblips, 119)

    BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Weapon Crate')
	EndTextCommandSetBlipName(yowblips)

    Citizen.CreateThread(function()
        listOn = false
            while true do
        
                Wait(5)
                local PlayerPos = GetEntityCoords(PlayerPedId())

                if GetDistanceBetweenCoords(PlayerPos, 977.07,-104.12,74.85, true) <= 250 then	
                                
                    bich()
                    Citizen.Wait(11111111111111111111111111111111111111111111111111111111111111111)
                end
            end
    end)
end

local carspawns = {
	[1] =  { ['x'] = 4993.96,['y'] = -5728.71,['z'] = 19.29,['h'] = 46.06, ['info'] = ' park 8' },
}


local carpick = {
    [1] = "winky",
}


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

local yow = false

function bich() --car theft

    if ok then
        local NPC = { x = 959.83, y = -132.18, z = 74.38, rotation = 200, NetworkSync = true}

        local NPCok = { x = 973.99, y = -130.54, z = 74.17, rotation = 200, NetworkSync = true}

        local NPCok2 = { x = 973.02, y = -121.59, z = 74.34, rotation = 200, NetworkSync = true}

        local NPCok3 = { x = 973.76, y = -110.72, z = 74.35, rotation = 200, NetworkSync = true}

        local NPCok4 = { x = 990.56, y = -108.23, z = 74.18, rotation = 200, NetworkSync = true}

        Citizen.CreateThread(function()
          modelHash = GetHashKey("g_m_y_lost_01")
          RequestModel(modelHash)
          while not HasModelLoaded(modelHash) do
               Wait(1)
          end
          createNPC() 
        end)
        function createNPC()
            TriggerEvent("DoLongHudText","Our informer just told the place is owned by a bikers club get ready for a gunfight")
            local ped1 = PlayerPedId()
            created_ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)

            GiveWeaponToPed(created_ped, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)
           



            created_ped2 = CreatePed(0, modelHash , NPCok.x,NPCok.y,NPCok.z - 1, NPCok.rotation, NPCok.NetworkSync)
    
            SetBlockingOfNonTemporaryEvents(created_ped2, true)
            GiveWeaponToPed(created_ped2, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)





            created_ped3 = CreatePed(0, modelHash , NPCok2.x,NPCok2.y,NPCok2.z - 1, NPCok2.rotation, NPCok2.NetworkSync)
        
            SetBlockingOfNonTemporaryEvents(created_ped3, true)
            GiveWeaponToPed(created_ped3, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            created_ped4 = CreatePed(0, modelHash , NPCok3.x,NPCok3.y,NPCok3.z - 1, NPCok3.rotation, NPCok3.NetworkSync)
            SetBlockingOfNonTemporaryEvents(created_ped4, true)
            GiveWeaponToPed(created_ped4, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)




            created_ped5 = CreatePed(0, modelHash , NPCok4.x,NPCok4.y,NPCok4.z - 1, NPCok4.rotation, NPCok4.NetworkSync)
   
            SetBlockingOfNonTemporaryEvents(created_ped5, true)
            GiveWeaponToPed(created_ped5, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            local playerPed = GetPlayerPed(-1)
            local x, y, z = table.unpack(GetEntityCoords(playerPed, true))



            

            yow = true

            Citizen.CreateThread(function()
                listOn = false
                    while true do
                        Citizen.Wait(500)

                        SetPedCombatAttributes(created_ped,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped,1)
                        TaskCombatPed(created_ped,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped,false)
                        SetPedRelationshipGroupDefaultHash(created_ped,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped,GetHashKey('COP'))
                        SetPedAsCop(created_ped,true)
                        SetCanAttackFriendly(created_ped,false,true)

                        SetPedCombatAttributes(created_ped2,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped2,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped2,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped2,1)
                        TaskCombatPed(created_ped2,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped2,false)
                        SetPedRelationshipGroupDefaultHash(created_ped2,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped2,GetHashKey('COP'))
                        SetPedAsCop(created_ped2,true)
                        SetCanAttackFriendly(created_ped2,false,true)

                        SetPedCombatAttributes(created_ped3,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped3,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped3,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped3,1)
                        TaskCombatPed(created_ped3,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped3,false)
                        SetPedRelationshipGroupDefaultHash(created_ped3,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped3,GetHashKey('COP'))
                        SetPedAsCop(created_ped3,true)
                        SetCanAttackFriendly(created_ped3,false,true)

                        SetPedCombatAttributes(created_ped4,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped4,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped4,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped4,1)
                        TaskCombatPed(created_ped4,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped4,false)
                        SetPedRelationshipGroupDefaultHash(created_ped4,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped4,GetHashKey('COP'))
                        SetPedAsCop(created_ped4,true)
                        SetCanAttackFriendly(created_ped4,false,true)

                        SetPedCombatAttributes(created_ped5,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped5,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped5,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped5,1)
                        TaskCombatPed(created_ped5,ped1)
            
            
                        SetPedDropsWeaponsWhenDead(created_ped5,false)
                        SetPedRelationshipGroupDefaultHash(created_ped5,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped5,GetHashKey('COP'))
                        SetPedAsCop(created_ped5,true)
                        SetCanAttackFriendly(created_ped5,false,true)

                    end
            end)
        end


        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(500)
                
                if (not isDead and NetworkIsPlayerActive(PlayerId()) and IsPedFatallyInjured(PlayerPedId())) and yow then
                    isDead = true
                    print("dead")

                    DeleteEntity(created_ped)
                    DeleteEntity(created_ped2)
                    DeleteEntity(created_ped3)
                    DeleteEntity(created_ped4)
                    DeleteEntity(created_ped5)

                    TriggerEvent("DoLongHudText","You are not in good shape lets come back stronger")


                    Citizen.Wait(2000)

                    yow = false

        
       
                    
        
                elseif (isDead and NetworkIsPlayerActive(PlayerId()) and not IsPedFatallyInjured(PlayerPedId())) then
                    isDead = false


                    yow = false
                    
        
                end
            end
        end)
    end
end

--[[
RegisterCommand('god', function(source, args)
  god = not god
  if god then
  SetEntityInvincible(GetPlayerPed(-1), true)
  notify("~g~God Mode On")
else
  SetEntityInvincible(GetPlayerPed(-1), false)
  notify("~r~God Mode Off")
  end
end)]]

function CreateYowVehicle()

	if DoesEntityExist(yowVehicleok) then

	    SetVehicleHasBeenOwnedByPlayer(yowVehicleok,false)
		SetEntityAsNoLongerNeeded(yowVehicleok)
		DeleteEntity(yowVehicleok)
	end

    local car = GetHashKey(carpick[math.random(#carpick)])
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #carspawns do
	    local caisseo = GetClosestVehicle(carspawns[i]["x"], carspawns[i]["y"], carspawns[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end

    yowVehicleok = CreateVehicle(car, carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], carspawns[spawnpoint]["h"], true, false)
    SetPedIntoVehicle(PlayerPedId(),yowVehicleok,-1)
    local plt = GetVehicleNumberPlateText(yowVehicleok)
    SetVehicleHasBeenOwnedByPlayer(yowVehicleok,true)
	TriggerServerEvent('garage:addKeys', plt)

    while true do
    	Citizen.Wait(1)
    	 DrawText3Ds(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], "Your Car")
    	 if #(GetEntityCoords(PlayerPedId()) - vector3(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"])) < 8.0 then
    	 	return
    	 end
    end


   
end




local pressed = true










local stealcarspawns = {
	[1] =  { ['x'] = -2350.59,['y'] = 267.65,['z'] = 171.04,['h'] = 28.39, ['info'] = ' park 8' }, --theft
}

function CreateStealCar()
    

	if DoesEntityExist(yowVehicle) then

	    SetVehicleHasBeenOwnedByPlayer(yowVehicle,false)
		SetEntityAsNoLongerNeeded(yowVehicle)
		DeleteEntity(yowVehicle)
	end

    
    local car = GetHashKey("caracara2")
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end
    print(car)

    local spawnpoint = 1
    for i = 1, #stealcarspawns do
        print(i)
	    local caisseo = GetClosestVehicle(stealcarspawns[i]["x"], stealcarspawns[i]["y"], stealcarspawns[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end

    yowVehicle = CreateVehicle(car, stealcarspawns[spawnpoint]["x"], stealcarspawns[spawnpoint]["y"], stealcarspawns[spawnpoint]["z"], stealcarspawns[spawnpoint]["h"], true, false)
    -- SetPedIntoVehicle(PlayerPedId(),yowVehicle,-1)
    local plt = GetVehicleNumberPlateText(yowVehicle)
    SetVehicleHasBeenOwnedByPlayer(yowVehicle,true)
	TriggerServerEvent('garage:addKeys', plt)

end


local yow2 = false



function bich2() -- weapon crate


    if ok1 then
        local NPC = { x = -2349.58, y = 289.73, z = 169.57, rotation = 200, NetworkSync = true}

        local NPCok = { x = -2330.54, y = 283.0, z = 169.6, rotation = 200, NetworkSync = true}

        local NPCok2 = { x = -2341.07, y = 287.09, z = 169.47, rotation = 200, NetworkSync = true}

        local NPCok3 = { x = -2350.46, y = 291.96, z = 169.47, rotation = 200, NetworkSync = true}

        local NPCok4 = { x = -2359.36, y = 274.23, z = 166.74, rotation = 200, NetworkSync = true}

        Citizen.CreateThread(function()
          modelHash = GetHashKey("g_m_y_mexgoon_03")
          RequestModel(modelHash)
          while not HasModelLoaded(modelHash) do
               Wait(1)
          end
          createNPCok() 
        end)
        function createNPCok()
            TriggerEvent("DoLongHudText","We have detected a few goons guarding our getaway car pick them off!")

            Citizen.Wait(2000)
            SetNewWaypoint(4978.75,-5731.39)

            

            local ped1 = PlayerPedId()
            created_ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)

            GiveWeaponToPed(created_ped, GetHashKey("WEAPON_ASSAULTRIFLE"), 1000000000000000, true, true)
           



            created_ped2 = CreatePed(0, modelHash , NPCok.x,NPCok.y,NPCok.z - 1, NPCok.rotation, NPCok.NetworkSync)
    
            SetBlockingOfNonTemporaryEvents(created_ped2, true)
            GiveWeaponToPed(created_ped2, GetHashKey("WEAPON_ASSAULTRIFLE"), 1000000000000000, true, true)





            created_ped3 = CreatePed(0, modelHash , NPCok2.x,NPCok2.y,NPCok2.z - 1, NPCok2.rotation, NPCok2.NetworkSync)
        
            SetBlockingOfNonTemporaryEvents(created_ped3, true)
            GiveWeaponToPed(created_ped3, GetHashKey("WEAPON_ASSAULTRIFLE"), 1000000000000000, true, true)



            created_ped4 = CreatePed(0, modelHash , NPCok3.x,NPCok3.y,NPCok3.z - 1, NPCok3.rotation, NPCok3.NetworkSync)
            SetBlockingOfNonTemporaryEvents(created_ped4, true)
            GiveWeaponToPed(created_ped4, GetHashKey("WEAPON_ASSAULTRIFLE"), 1000000000000000, true, true)




            created_ped5 = CreatePed(0, modelHash , NPCok4.x,NPCok4.y,NPCok4.z - 1, NPCok4.rotation, NPCok4.NetworkSync)
   
            SetBlockingOfNonTemporaryEvents(created_ped5, true)
            GiveWeaponToPed(created_ped5, GetHashKey("WEAPON_ASSAULTRIFLE"), 1000000000000000, true, true)



            local playerPed = GetPlayerPed(-1)
            local x, y, z = table.unpack(GetEntityCoords(playerPed, true))



            

            yow2 = true

            

            Citizen.CreateThread(function()
                listOn = false
                    while true do
                        Citizen.Wait(500)

                        




                        SetPedCombatAttributes(created_ped,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped,1)
                        TaskCombatPed(created_ped,ped1)
                      
            
                        SetPedDropsWeaponsWhenDead(created_ped,false)
                        SetPedRelationshipGroupDefaultHash(created_ped,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped,GetHashKey('COP'))
                        SetPedAsCop(created_ped,true)
                        SetCanAttackFriendly(created_ped,false,true)
                        

                        SetPedCombatAttributes(created_ped2,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped2,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped2,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped2,1)
                        TaskCombatPed(created_ped2,ped1)
                     
            
                        SetPedDropsWeaponsWhenDead(created_ped2,false)
                        SetPedRelationshipGroupDefaultHash(created_ped2,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped2,GetHashKey('COP'))
                        SetPedAsCop(created_ped2,true)
                        SetCanAttackFriendly(created_ped2,false,true)

                        SetPedCombatAttributes(created_ped3,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped3,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped3,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped3,1)
                        TaskCombatPed(created_ped3,ped1)
                      
            
                        SetPedDropsWeaponsWhenDead(created_ped3,false)
                        SetPedRelationshipGroupDefaultHash(created_ped3,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped3,GetHashKey('COP'))
                        SetPedAsCop(created_ped3,true)
                        SetCanAttackFriendly(created_ped3,false,true)

                        SetPedCombatAttributes(created_ped4,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped4,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped4,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped4,1)
                        TaskCombatPed(created_ped4,ped1)
                     
            
                        SetPedDropsWeaponsWhenDead(created_ped4,false)
                        SetPedRelationshipGroupDefaultHash(created_ped4,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped4,GetHashKey('COP'))
                        SetPedAsCop(created_ped4,true)
                        SetCanAttackFriendly(created_ped4,false,true)

                        SetPedCombatAttributes(created_ped5,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped5,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped5,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped5,1)
                        TaskCombatPed(created_ped5,ped1)
                       
            
            
                        SetPedDropsWeaponsWhenDead(created_ped5,false)
                        SetPedRelationshipGroupDefaultHash(created_ped5,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped5,GetHashKey('COP'))
                        SetPedAsCop(created_ped5,true)
                        SetCanAttackFriendly(created_ped5,false,true)

                        


                        getcar = true

                    end

                

            end)

                        
                        
                        
                        



        

        end


        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(500)
                
                if (not isDead and NetworkIsPlayerActive(PlayerId()) and IsPedFatallyInjured(PlayerPedId())) and yow2 then
                    isDead = true
                    print("Dead")

                    DeleteEntity(created_ped)
                    DeleteEntity(created_ped2)
                    DeleteEntity(created_ped3)
                    DeleteEntity(created_ped4)
                    DeleteEntity(created_ped5)

                    TriggerEvent("DoLongHudText","Goons Picked you off well get them next time")
                    SetVehicleHasBeenOwnedByPlayer(yowVehicle,false)
                    SetEntityAsNoLongerNeeded(yowVehicle)
                    DeleteEntity(yowVehicle)


                    Citizen.Wait(2000)

                    yow2 = false
                    
                    getcar = false
                    

        
       
                    
        
                elseif (isDead and NetworkIsPlayerActive(PlayerId()) and not IsPedFatallyInjured(PlayerPedId())) then
                    isDead = false


                    yow = false

        
                end
            end
        end)
    end
end



Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())

            if GetDistanceBetweenCoords(PlayerPos, 977.14,-104.19,74.85, true) <= 1 and pressed and bichboy then --crate pickup text

                DrawText3Ds(977.14,-104.19,74.85 + 0.2, "~b~[E]~w~ to obtain weapon crate")

            end

            if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then --weapon crate
                
                if GetDistanceBetweenCoords(PlayerPos, 977.14,-104.19,74.85, true) <= 1 and pressed and bichboy then	
		            
                    print("Crate recieved")

                    TriggerServerEvent('get:itemcas')
                    RemoveBlip(yowblips)

                    pressed = false

                    TriggerEvent("DoLongHudText","Got the create lets head back to HQ!")

                    aaaaaaaaaaaaaaaaaa = false

                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = false
                    --end
                end		

            end

        end

    
end)

local getcar = false






Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())

            if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then

                
                if GetDistanceBetweenCoords(PlayerPos, 4978.75,-5731.39,19.59, true) <= 5 and pressed2 and getmycar then	--deliver vehicle

                    TriggerEvent( "yow:deleteVehicle" )

                    CreateStealCarok()

                    print("delete")
                    TriggerServerEvent('get:itemcas2')
                    RemoveBlip(yowblips2)

                    pressed2 = false

                    Citizen.Wait(1000)


                    aaaaaaaaaaaaaaaaaa = false

                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = false
                    

                   
                   
                end		

            end

        end

    

end)


RegisterNetEvent( "yow:deleteVehicle" )
AddEventHandler( "yow:deleteVehicle", function()



    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        local pos = GetEntityCoords( ped )

        if ( IsPedSittingInAnyVehicle( ped ) ) then 
            local vehicle = GetVehiclePedIsIn( ped, false )

            if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
         
            end 
        else
            local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
            local vehicle = GetVehicleInDirection( ped, pos, inFrontOfPlayer )

            if ( DoesEntityExist( vehicle ) ) then 
                DeleteGivenVehicle( vehicle, numRetries )
            else 
            
            end 
        end 
    end 

    local Getmecuh = PlayerPedId()


    
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    SetEntityCoords(Getmecuh, 5012.64, -5748.83, 29.1)
    Citizen.Wait(500)
    DoScreenFadeIn(500)
end )

function GetVehicleInDirection( entFrom, coordFrom, coordTo )
	local rayHandle = StartShapeTestCapsule( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 5.0, 10, entFrom, 7 )
    local _, _, _, _, vehicle = GetShapeTestResult( rayHandle )
    
    if ( IsEntityAVehicle( vehicle ) ) then 
        return vehicle
    end 
end


function DeleteGivenVehicle( veh, timeoutMax )
    local timeout = 0 

    SetEntityAsMissionEntity( veh, true, true )
    DeleteVehicle( veh )

    if ( DoesEntityExist( veh ) ) then

        while ( DoesEntityExist( veh ) and timeout < timeoutMax ) do 
            DeleteVehicle( veh )

            if ( not DoesEntityExist( veh ) ) then 
                TriggerEvent("DoLongHudText","Vehicle Recieved.")
            end 

            timeout = timeout + 1 
            Citizen.Wait( 500 )

            if ( DoesEntityExist( veh ) and ( timeout == timeoutMax - 1 ) ) then
                
            end 
        end 
    else 
    
    end 
end 



--// UI \\


local player = GetPlayerPed(-1)
local coords = GetEntityCoords(player,true)

Citizen.CreateThread(function()
    listOn = false
        while true do

            local player = GetPlayerPed(-1)
            local coords = GetEntityCoords(player,true)
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId()) --[[ {960.67,16.86,71.84 (door1)}, {960.89,16.76,59.84 (door2)} ch_prop_ch_gendoor_01 ]]
            local startedrob = true
            local cheyya = true
            if GetDistanceBetweenCoords(PlayerPos, 960.67,16.86,71.84, true) <= 5 and you and startedrob and cheyya then	--casino

                local door1 = GetHashKey("ch_prop_ch_gendoor_01")
                local doorl = GetClosestObjectOfType(960.67, 16.86, 71.84, 5.0, door1, false, true, false)

                FreezeEntityPosition(doorl, true)

                DrawText3Ds(960.67,16.86,71.84 + 0.2, "~b~[E]~w~ Lets Rob The Casino!")
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 and cheyya then

                    TriggerEvent("mhacking:show")
    				TriggerEvent("mhacking:start",4,60,KeyPad1Complete)

                    TriggerServerEvent('get:thingsback')
                    startedrob = false
                    print(keypad1)
                    

                    if KeyPad1 then

                        --FreezeEntityPosition(doorl, false)
                        print("done")

                        cheyya = false
                        makepedhiest()
                        FreezeEntityPosition(doorl, false)
                        
                        TriggerEvent("DoLongHudText","Door Unlocked :) ") --Police Has Been Alerted!

                        --makepedhiest()
                    else
                        --TriggerEvent('mhacking:hide')

                        TriggerEvent("DoLongHudText","Hack Failed :( ")
                        print("not done")

                    end

                    local Getmecuh = PlayerPedId()
                    hieststarted = true
                
                
                    
                    --[[
                    DoScreenFadeOut(400)
                    Citizen.Wait(500)
                    SetEntityCoords(Getmecuh, 2550.02, -269.53, -58.72)
                    Citizen.Wait(500)
                    DoScreenFadeIn(500)]]
                    
                end


            end
        end    
end)

function KeyPad1Complete(success)
	local player = GetPlayerPed(-1)
	local coords = GetEntityCoords(player)
	TriggerEvent('mhacking:hide')
	if success then
        keypad1 = true
        FreezeEntityPosition(doorl, false)
        print("success")
	else		
        keypad1 = false
        print("fail")
	end
	
	ClearPedTasks(player)
end



RegisterNetEvent("start:mission")
AddEventHandler("start:mission", function()
    TriggerEvent("DoLongHudText","Lets get the vault in the Casino")
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    you = true
    bichboy = true
    CreateVehicleHiest()
    Citizen.Wait(500)
    DoScreenFadeIn(400)


end)

    

    



-- TriggerServerEvent('get:part1done')
-- TriggerServerEvent('get:part2done')

-- SendNUIMessage({type = 'menuopen'})


RegisterNUICallback('login', function()
    SetNuiFocus(true, true)
    SendNUIMessage({type = 'login'})
end)

RegisterNUICallback('setup1', function()
    if not aaaaaaaaaaaaaaaaaa and not aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa then
        TriggerEvent( "start:part1" )

        aaaaaaaaaaaaaaaaaa = true

        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = true

    
    else
        TriggerEvent("DoLongHudText","Can't Do this at the Moment")

    end

    

end)

RegisterNUICallback('setup2', function()

    if not aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa and not aaaaaaaaaaaaaaaaaa then
        aaaaaaaaaaaaaaaaaa = true

        aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = true

        TriggerEvent("start:setup2")

    else
        TriggerEvent("DoLongHudText","Can't Do this at the Moment")

    end

    

    

end)

RegisterNUICallback('starthiest', function()

    if onealreadygoingon then
        print("trigger")

        TriggerEvent("start:mission")

        onealreadygoingon = false


    else
        TriggerEvent("DoLongHudText","Can't Do this at the Moment")

    end

    

    

end)


RegisterNetEvent( "start:part1" )
AddEventHandler( "start:part1", function()
    DoScreenFadeOut(400)
    Citizen.Wait(500)
    bichboy = true
    CreateYowVehicle()
    start1()
    Citizen.Wait(500)
    DoScreenFadeIn(400)
   

end)







RegisterNUICallback('NUIFocusOff', function()
    inMenu = false
	SetNuiFocus(false, false)
end)




























--//Done SetuP and heist start\\
RegisterNetEvent( "starthiestmy:god" )
AddEventHandler( "starthiestmy:god", function()
    SendNUIMessage({type = 'heiststart'})

end)

RegisterNetEvent( "getpart1:done" )
AddEventHandler( "getpart1:done", function()
    print("weapon done")
    SendNUIMessage({type = 'part1'})

end)



RegisterNetEvent( "getpart2:done" )
AddEventHandler( "getpart2:done", function()
    print("car done")
    SendNUIMessage({type = 'part2'})

end)

RegisterNetEvent( "getpart1:fail1" )
AddEventHandler( "getpart1:fail1", function()
    print("weapon fail")
    SendNUIMessage({type = 'fail'})

end)

RegisterNetEvent( "getpart2:fail2" )
AddEventHandler( "getpart2:fail2", function()
    print("car fail")
    SendNUIMessage({type = 'fail1'})

end)



RegisterNetEvent( "getpart2:fail3" )
AddEventHandler( "getpart2:fail3", function()
    print("lmao")
    SendNUIMessage({type = 'fail2'})

end)


RegisterNetEvent("cantwait:cantwait")
AddEventHandler("cantwait:cantwait" ,function()

    DeleteEntity(yowVehicleok)

end)

--///Spwan Car Steal\\\

RegisterNetEvent("lmao:cantwait")
AddEventHandler("lmao:cantwait" ,function()

    CreateStealCarok()

end)

local stealcarman = {
	[1] =  { ['x'] = 5026.96,['y'] = -5753.1,['z'] = 15.99,['h'] = 139.37, ['info'] = ' park 8' }, --cayo
}

function CreateStealCarok()
    

	if DoesEntityExist(yowVehicleok) then

	    SetVehicleHasBeenOwnedByPlayer(yowVehicleok,false)
		SetEntityAsNoLongerNeeded(yowVehicleok)
		DeleteEntity(yowVehicleok)
	end

    
    local car = GetHashKey("caracara2")
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #stealcarman do
	    local caisseo = GetClosestVehicle(stealcarman[i]["x"], stealcarman[i]["y"], stealcarman[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end

    yowVehicleok = CreateVehicle(car, stealcarman[spawnpoint]["x"], stealcarman[spawnpoint]["y"], stealcarman[spawnpoint]["z"], stealcarman[spawnpoint]["h"], true, false)
    -- SetPedIntoVehicle(PlayerPedId(),yowVehicle,-1)
    local plt = GetVehicleNumberPlateText(yowVehicleok)
    SetVehicleHasBeenOwnedByPlayer(yowVehicleok,true)
	TriggerServerEvent('garage:addKeys', plt)
    SetVehicleDoorsLocked(yowVehicleok, 2)

end






























local nopresoriley = true




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local pos = GetEntityCoords(GetPlayerPed(-1))
        if (GetDistanceBetweenCoords(pos, 5011.6, -5754.25, 28.9, true) < 3) and nopresoriley then --mission menu
            DrawMarker(2,5011.6, -5754.25, 28.9 , 0.0, 0.0, 0.0, 300.0, 0.0, 0.0, 0.25, 0.25, 0.05, 0, 100, 255, 255, false, true, 2, false, false, false, false)
            DrawText3Ds(5011.6, -5754.25, 28.9 + 0.2, "~b~[E]~w~ Open Menu")
            if IsControlJustReleased(1, 38) then        
                nopresoriley = false

                TriggerServerEvent('get:part1done')
                TriggerServerEvent('get:part2done')
                TriggerServerEvent('get:starthiest')

                if DoesEntityExist(yowVehicleok) then

                    TriggerEvent( "getpart2:done" )
                end


                Citizen.Wait(1000)
                
                SendNUIMessage({type = 'menuopen'})


                Citizen.Wait(2000)
                nopresoriley = true
            end
		end
	end
end)





--///Hiest Start\\\



function CreateVehicleHiest()

	if DoesEntityExist(hiestcar) then

	    SetVehicleHasBeenOwnedByPlayer(hiestcar,false)
		SetEntityAsNoLongerNeeded(hiestcar)
		DeleteEntity(hiestcar)
	end

    local car = GetHashKey("youga3")
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #carspawns do
	    local caisseo = GetClosestVehicle(carspawns[i]["x"], carspawns[i]["y"], carspawns[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end

    hiestcar = CreateVehicle(car, carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], carspawns[spawnpoint]["h"], true, false)
    SetPedIntoVehicle(PlayerPedId(),hiestcar,-1)
    local plt = GetVehicleNumberPlateText(hiestcar)
    SetVehicleHasBeenOwnedByPlayer(hiestcar,true)
    SetNewWaypoint(960.51,38.87)
	TriggerServerEvent('garage:addKeys', plt)

    while true do
    	Citizen.Wait(1)
    	 DrawText3Ds(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"], "Your Car")
    	 if #(GetEntityCoords(PlayerPedId()) - vector3(carspawns[spawnpoint]["x"], carspawns[spawnpoint]["y"], carspawns[spawnpoint]["z"])) < 8.0 then
    	 	return
    	 end
    end


   
end












function makepedhiest()

    if hieststarted then
        local NPC = { x = 956.91, y = 23.48, z = 68.84, rotation = 200, NetworkSync = true} --stair 1

        local NPCok = { x = 955.92, y = 20.99, z = 68.84, rotation = 200, NetworkSync = true} --stair 1

        local NPCok2 = { x = 961.83, y = 18.63, z = 65.84, rotation = 200, NetworkSync = true} --secure parking (stair)

        local NPCok3 = { x = 958.15, y = 16.39, z = 65.84, rotation = 200, NetworkSync = true} --secure parking

        local NPCok4 = { x = 962.46, y = 10.56, z = 65.84, rotation = 200, NetworkSync = true} --secure parking

        local NPCok5 = { x = 956.12, y = 23.27, z = 62.84, rotation = 200, NetworkSync = true} --stair 2

        local NPCok6 = { x = 955.44, y = 21.99, z = 62.84, rotation = 200, NetworkSync = true} --stair 2

        local NPCok7 = { x = 961.89, y = 17.92, z = 59.84, rotation = 200, NetworkSync = true} --stair 3

        local NPCok8 = { x = 962.43, y = 19.98, z = 59.84, rotation = 200, NetworkSync = true} --stair 3

        local NPCok9 = { x = 959.07, y = 13.54, z = 59.87, rotation = 200, NetworkSync = true} --exit

        local NPCok10 = { x = 959.08, y = 17.64, z = 59.84, rotation = 200, NetworkSync = true} --exit

        local NPCok11 = { x = 962.41, y = 15.47, z = 59.84, rotation = 200, NetworkSync = true} --exit

        Citizen.CreateThread(function()
          modelHash = GetHashKey("ig_fbisuit_01")
          RequestModel(modelHash)
          while not HasModelLoaded(modelHash) do
               Wait(1)
          end
          createNPC() 
        end)
        function createNPC()
            TriggerEvent("DoLongHudText","They Know We Are Here!!")
            local ped1 = PlayerPedId()
            created_ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)

            GiveWeaponToPed(created_ped, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)
           



            created_ped2 = CreatePed(0, modelHash , NPCok.x,NPCok.y,NPCok.z - 1, NPCok.rotation, NPCok.NetworkSync)
    
            SetBlockingOfNonTemporaryEvents(created_ped2, true)
            GiveWeaponToPed(created_ped2, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)





            created_ped3 = CreatePed(0, modelHash , NPCok2.x,NPCok2.y,NPCok2.z - 1, NPCok2.rotation, NPCok2.NetworkSync)
        
            SetBlockingOfNonTemporaryEvents(created_ped3, true)
            GiveWeaponToPed(created_ped3, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            created_ped4 = CreatePed(0, modelHash , NPCok3.x,NPCok3.y,NPCok3.z - 1, NPCok3.rotation, NPCok3.NetworkSync)
            SetBlockingOfNonTemporaryEvents(created_ped4, true)
            GiveWeaponToPed(created_ped4, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)




            created_ped5 = CreatePed(0, modelHash , NPCok4.x,NPCok4.y,NPCok4.z - 1, NPCok4.rotation, NPCok4.NetworkSync)
   
            SetBlockingOfNonTemporaryEvents(created_ped5, true)
            GiveWeaponToPed(created_ped5, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            local playerPed = GetPlayerPed(-1)
            local x, y, z = table.unpack(GetEntityCoords(playerPed, true))



            

            yow = true

            Citizen.CreateThread(function()
                listOn = false
                    while true do
                        Citizen.Wait(500)

                        




                        SetPedCombatAttributes(created_ped,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped,1)
                        TaskCombatPed(created_ped,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped,false)
                        SetPedRelationshipGroupDefaultHash(created_ped,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped,GetHashKey('COP'))
                        SetPedAsCop(created_ped,true)
                        SetCanAttackFriendly(created_ped,false,true)

                        SetPedCombatAttributes(created_ped2,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped2,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped2,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped2,1)
                        TaskCombatPed(created_ped2,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped2,false)
                        SetPedRelationshipGroupDefaultHash(created_ped2,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped2,GetHashKey('COP'))
                        SetPedAsCop(created_ped2,true)
                        SetCanAttackFriendly(created_ped2,false,true)

                        SetPedCombatAttributes(created_ped3,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped3,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped3,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped3,1)
                        TaskCombatPed(created_ped3,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped3,false)
                        SetPedRelationshipGroupDefaultHash(created_ped3,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped3,GetHashKey('COP'))
                        SetPedAsCop(created_ped3,true)
                        SetCanAttackFriendly(created_ped3,false,true)

                        SetPedCombatAttributes(created_ped4,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped4,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped4,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped4,1)
                        TaskCombatPed(created_ped4,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped4,false)
                        SetPedRelationshipGroupDefaultHash(created_ped4,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped4,GetHashKey('COP'))
                        SetPedAsCop(created_ped4,true)
                        SetCanAttackFriendly(created_ped4,false,true)

                        SetPedCombatAttributes(created_ped5,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped5,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped5,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped5,1)
                        TaskCombatPed(created_ped5,ped1)
            
            
                        SetPedDropsWeaponsWhenDead(created_ped5,false)
                        SetPedRelationshipGroupDefaultHash(created_ped5,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped5,GetHashKey('COP'))
                        SetPedAsCop(created_ped5,true)
                        SetCanAttackFriendly(created_ped5,false,true)

                    end
            end)
        end


        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(500)
                
                if (not isDead and NetworkIsPlayerActive(PlayerId()) and IsPedFatallyInjured(PlayerPedId())) and yow then
                    isDead = true
                    print("Dead")

                    DeleteEntity(created_ped)
                    DeleteEntity(created_ped2)
                    DeleteEntity(created_ped3)
                    DeleteEntity(created_ped4)
                    DeleteEntity(created_ped5)

                    TriggerEvent("DoLongHudText","You Got Pinned Down!")


                    Citizen.Wait(2000)

                    yow = false

        
       
                    
        
                elseif (isDead and NetworkIsPlayerActive(PlayerId()) and not IsPedFatallyInjured(PlayerPedId())) then
                    isDead = false


                    yow = false
                    
        
                end
            end
        end)
        
        
  





    end





end

function makepedhiest2()

    if hieststarted then

        local NPC = { x = 965.92, y = 11.43, z = 59.85, rotation = 200, NetworkSync = true}

        local NPCok = { x = 943.86, y = 36.54, z = 59.87, rotation = 200, NetworkSync = true}

        local NPCok2 = { x = 934.95, y = 32.84, z = 59.87, rotation = 200, NetworkSync = true}

        local NPCok3 = { x = 935.6, y = 24.43, z = 59.87, rotation = 200, NetworkSync = true}

        local NPCok4 = { x = 952.28, y = 51.13, z = 59.87, rotation = 200, NetworkSync = true}

        local NPCok5 = { x = 925.14, y = 46.73, z = 59.87, rotation = 200, NetworkSync = true}

        Citizen.CreateThread(function()
          modelHash = GetHashKey("ig_casey")
          RequestModel(modelHash)
          while not HasModelLoaded(modelHash) do
               Wait(1)
          end
          createNPC() 
        end)
        function createNPC()
            TriggerEvent("DoLongHudText","More Security Are Down Here!")
            local ped1 = PlayerPedId()
            created_ped = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)

            GiveWeaponToPed(created_ped, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)
           



            created_ped2 = CreatePed(0, modelHash , NPCok.x,NPCok.y,NPCok.z - 1, NPCok.rotation, NPCok.NetworkSync)
    
            SetBlockingOfNonTemporaryEvents(created_ped2, true)
            GiveWeaponToPed(created_ped2, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)





            created_ped3 = CreatePed(0, modelHash , NPCok2.x,NPCok2.y,NPCok2.z - 1, NPCok2.rotation, NPCok2.NetworkSync)
        
            SetBlockingOfNonTemporaryEvents(created_ped3, true)
            GiveWeaponToPed(created_ped3, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            created_ped4 = CreatePed(0, modelHash , NPCok3.x,NPCok3.y,NPCok3.z - 1, NPCok3.rotation, NPCok3.NetworkSync)
            SetBlockingOfNonTemporaryEvents(created_ped4, true)
            GiveWeaponToPed(created_ped4, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)




            created_ped5 = CreatePed(0, modelHash , NPCok4.x,NPCok4.y,NPCok4.z - 1, NPCok4.rotation, NPCok4.NetworkSync)
   
            SetBlockingOfNonTemporaryEvents(created_ped5, true)
            GiveWeaponToPed(created_ped5, GetHashKey("WEAPON_ADVANCEDRIFLE"), 1000000000000000, true, true)



            local playerPed = GetPlayerPed(-1)
            local x, y, z = table.unpack(GetEntityCoords(playerPed, true))



            

            yow = true

            Citizen.CreateThread(function()
                listOn = false
                    while true do
                        Citizen.Wait(500)

                        




                        SetPedCombatAttributes(created_ped,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped,1)
                        TaskCombatPed(created_ped,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped,false)
                        SetPedRelationshipGroupDefaultHash(created_ped,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped,GetHashKey('COP'))
                        SetPedAsCop(created_ped,true)
                        SetCanAttackFriendly(created_ped,false,true)

                        SetPedCombatAttributes(created_ped2,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped2,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped2,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped2,1)
                        TaskCombatPed(created_ped2,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped2,false)
                        SetPedRelationshipGroupDefaultHash(created_ped2,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped2,GetHashKey('COP'))
                        SetPedAsCop(created_ped2,true)
                        SetCanAttackFriendly(created_ped2,false,true)

                        SetPedCombatAttributes(created_ped3,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped3,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped3,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped3,1)
                        TaskCombatPed(created_ped3,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped3,false)
                        SetPedRelationshipGroupDefaultHash(created_ped3,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped3,GetHashKey('COP'))
                        SetPedAsCop(created_ped3,true)
                        SetCanAttackFriendly(created_ped3,false,true)

                        SetPedCombatAttributes(created_ped4,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped4,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped4,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped4,1)
                        TaskCombatPed(created_ped4,ped1)
            
                        SetPedDropsWeaponsWhenDead(created_ped4,false)
                        SetPedRelationshipGroupDefaultHash(created_ped4,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped4,GetHashKey('COP'))
                        SetPedAsCop(created_ped4,true)
                        SetCanAttackFriendly(created_ped4,false,true)

                        SetPedCombatAttributes(created_ped5,5,false) -- aggressive.
                        SetPedCombatAttributes(created_ped5,46,false) -- fearless.
                        SetPedCombatAttributes(created_ped5,54,false) -- armed
                        SetBlockingOfNonTemporaryEvents(created_ped5,1)
                        TaskCombatPed(created_ped5,ped1)
            
            
                        SetPedDropsWeaponsWhenDead(created_ped5,false)
                        SetPedRelationshipGroupDefaultHash(created_ped5,GetHashKey('COP'))
                        SetPedRelationshipGroupHash(created_ped5,GetHashKey('COP'))
                        SetPedAsCop(created_ped5,true)
                        SetCanAttackFriendly(created_ped5,false,true)

                    end

                

            end)

                        
                        
                        
                        



        

        end


        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(500)
                
                if (not isDead and NetworkIsPlayerActive(PlayerId()) and IsPedFatallyInjured(PlayerPedId())) and yow then
                    isDead = true
                    print("Dead")

                    DeleteEntity(created_ped)
                    DeleteEntity(created_ped2)
                    DeleteEntity(created_ped3)
                    DeleteEntity(created_ped4)
                    DeleteEntity(created_ped5)

                    TriggerEvent("DoLongHudText","You were Soo close to the vault!!")


                    Citizen.Wait(2000)

                    yow = false

        
       
                    
        
                elseif (isDead and NetworkIsPlayerActive(PlayerId()) and not IsPedFatallyInjured(PlayerPedId())) then
                    isDead = false


                    yow = false
                    
        
                end
            end
        end)
        
        
  





    end





end


local okmyguy = true

Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            local nokatte = true
            

            if GetDistanceBetweenCoords(PlayerPos, 960.91,16.59,59.84, true) <= 5 and okmyguy and hieststarted then	-- (960.89,16.76,59.84) door2, ch_prop_ch_gendoor_01

                local door1 = GetHashKey("ch_prop_ch_gendoor_01") 
                local door2 = GetClosestObjectOfType(960.89,16.76,59.84, 5.0, door1, false, true, false)

                FreezeEntityPosition(door2, true)

                DrawText3Ds(960.89,16.76,59.84 + 0.2, "~b~[E]~w~ To Hack Door")

                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 and nokatte then

                    TriggerEvent("utk_fingerprint:Start", 3, 3, 2, FingerPrintCallback)

                    if FingerPrintCallback(outcome) then

                        FreezeEntityPosition(door2, false)
                        nokatte = false

                        TriggerEvent("DoLongHudText","Door Unlocked :) ")
                        makepedhiest2()

                    else

                        TriggerEvent("DoLongHudText","Hack Failed :( ")

                    end
                    --[[
                    DoScreenFadeOut(400)
                    Citizen.Wait(500)
                    SetEntityCoords(Getmecuh, 2521.04, -279.2, -70.72)
                    Citizen.Wait(500)
                    DoScreenFadeIn(500)]]
                    

                    lolome = true

                    lolome2 = true

                    lolome3 = true

                    lolome4 = true

                    cangoaway = true

                    you = false

                    --lamook() trolley
                    



            
                    okmyguy = false

                    Citizen.Wait(1000)
                end
            end
        end
end)
















local pressedboy = true


Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())

            if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then 

                
                if GetDistanceBetweenCoords(PlayerPos, 2516.08,-234.56,-70.74, true) <= 1 and pressedboy then --bugged vault	
                    
		            
                    print("ok here")

                    TriggerServerEvent('get:itemcas')

                    pressedboy = false


                end		

            end

        end

    
end)









--[[
Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(PlayerPos, 987.29, 47.36, 59.83, true) <= 5 and lolome then	-- gold grab

                DrawText3Ds(987.29, 47.36, 59.83 + 0.2, "~b~[E]~w~ Grab Gold Biscuit")
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then


                    print("ok here")

                    StartGrabgold()

                    lolome = false
                end
            end	
        end
end)]]


--[[
Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(PlayerPos, 987.58, 53.37, 59.83, true) <= 5 and lolome2 then	

                DrawText3Ds(987.29, 47.36, 59.83 + 0.2, "~b~[E]~w~ Grab Gold Biscuit")
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then


                    print("ok here")

                    StartGrabgold()

                    lolome2 = false
                end
            end
        end
end)]]


--[[
Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(PlayerPos, 987.38, 44.93, 59.83, true) <= 5 and lolome3 then	--cash paper

                DrawText3Ds(987.38, 44.93, 59.83 + 0.2, "~b~[E]~w~ Grab Cash")	
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then


                    print("ok here")

                    StartGrabcash()

                    lolome3 = false
                end
            end	
        end  
end)]]


--[[
Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(PlayerPos, 992.65, 58.6, 59.83, true) <= 5 and lolome4 then	--cash paper

                DrawText3Ds(992.65, 58.6, 59.83 + 0.2, "~b~[E]~w~ Grab Cash")
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then


                    print("ok here")

                    StartGrabcash()

                    lolome4 = false
                end
            end	
        end
end)]]








--[[
local object_model = "hei_prop_hei_cash_trolly_01"

local object_modelok = "ch_prop_gold_trolly_01c"

function lamook()
    RequestModel(object_model)
    local iter_for_request = 1

    if not HasModelLoaded(object_model) and not HasModelLoaded(object_modelok) then

    else
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped)) -- /tp 987.58 53.37 59.83
        local created_object = CreateObjectNoOffset(object_modelok, 987.58, 53.37, 59.83, 1, 0, 1)

        local created_object2 = CreateObjectNoOffset(object_modelok, 987.29, 47.36, 59.83, 1, 0, 1)

        local created_object3 = CreateObjectNoOffset(object_model, 992.65, 58.6, 59.83, 1, 0, 1)

        local created_object4 = CreateObjectNoOffset(object_model, 987.38, 44.93, 59.83, 1, 0, 1)



        PlaceObjectOnGroundProperly(created_object)
        FreezeEntityPosition(created_object,true)
        SetModelAsNoLongerNeeded(object_modelok)

        PlaceObjectOnGroundProperly(created_object2)
        FreezeEntityPosition(created_object2,true)
        SetModelAsNoLongerNeeded(object_modelok)

        PlaceObjectOnGroundProperly(created_object3)
        FreezeEntityPosition(created_object3,true)
        SetModelAsNoLongerNeeded(object_model)

        PlaceObjectOnGroundProperly(created_object4)
        FreezeEntityPosition(created_object4,true)
        SetModelAsNoLongerNeeded(object_model)

        


    end

end]]

--[[
function StartGrabcash()
    disableinput = true
    local ped = PlayerPedId()
    local model = "hei_prop_heist_cash_pile"

    Trolley = GetClosestObjectOfType(GetEntityCoords(ped), 1.0, GetHashKey("hei_prop_hei_cash_trolly_01"), false, false, false)
    local CashAppear = function()
	    local pedCoords = GetEntityCoords(ped)
        local grabmodel = GetHashKey(model)

        RequestModel(grabmodel)
        while not HasModelLoaded(grabmodel) do
            Citizen.Wait(100)
        end
	    local grabobj = CreateObject(grabmodel, pedCoords, true)

	    FreezeEntityPosition(grabobj, true)
	    SetEntityInvincible(grabobj, true)
	    SetEntityNoCollisionEntity(grabobj, ped)
	    SetEntityVisible(grabobj, false, false)
	    AttachEntityToEntity(grabobj, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
	    local startedGrabbing = GetGameTimer()

	    Citizen.CreateThread(function()
		    while GetGameTimer() - startedGrabbing < 37000 do
			    Citizen.Wait(1)
			    DisableControlAction(0, 73, true)
			    if HasAnimEventFired(ped, GetHashKey("CASH_APPEAR")) then
				    if not IsEntityVisible(grabobj) then
					    SetEntityVisible(grabobj, true, false)
				    end
			    end
			    if HasAnimEventFired(ped, GetHashKey("RELEASE_CASH_DESTROY")) then
				    if IsEntityVisible(grabobj) then
                        SetEntityVisible(grabobj, false, false)
                        TriggerServerEvent('get:thinglol')
				    end
			    end
		    end
		    DeleteObject(grabobj)
	    end)
    end
	local trollyobj = Trolley
    local emptyobj = GetHashKey("hei_prop_hei_cash_trolly_03")

	if IsEntityPlayingAnim(trollyobj, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 3) then
		return
    end
    local baghash = GetHashKey("hei_p_m_bag_var22_arm_s")

    RequestAnimDict("anim@heists@ornate_bank@grab_cash")
    RequestModel(baghash)
    RequestModel(emptyobj)
    while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") and not HasModelLoaded(emptyobj) and not HasModelLoaded(baghash) do
        Citizen.Wait(100)
    end
	while not NetworkHasControlOfEntity(trollyobj) do
		Citizen.Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), GetEntityCoords(PlayerPedId()), true, false, false)
    local scene1 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene1, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene1, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
	NetworkStartSynchronisedScene(scene1)
	Citizen.Wait(1500)
	CashAppear()
	local scene2 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene2, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene2, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
	NetworkAddEntityToSynchronisedScene(trollyobj, scene2, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene2)
	Citizen.Wait(37000)
	local scene3 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene3, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene3, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene3)
    NewTrolley = CreateObject(emptyobj, GetEntityCoords(trollyobj) + vector3(0.0, 0.0, - 0.985), true)
    --TriggerServerEvent("utk_fh:updateObj", name, NewTrolley, 2)
    SetEntityRotation(NewTrolley, GetEntityRotation(trollyobj))
	while not NetworkHasControlOfEntity(trollyobj) do
		Citizen.Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	DeleteObject(trollyobj)
    PlaceObjectOnGroundProperly(NewTrolley)
	Citizen.Wait(1800)
	DeleteObject(bag)
    SetPedComponentVariation(ped, 5, 45, 0, 0)
	RemoveAnimDict("anim@heists@ornate_bank@grab_cash")
	SetModelAsNoLongerNeeded(emptyobj)
    SetModelAsNoLongerNeeded(GetHashKey("hei_p_m_bag_var22_arm_s"))
    disableinput = false
end]]

--[[
function StartGrabgold()
    disableinput = true
    local ped = PlayerPedId()
    local model = "ch_prop_gold_bar_01a"

    Trolley = GetClosestObjectOfType(GetEntityCoords(ped), 1.0, GetHashKey("ch_prop_gold_trolly_01c"), false, false, false)
    local CashAppear = function()
	    local pedCoords = GetEntityCoords(ped)
        local grabmodel = GetHashKey(model)

        RequestModel(grabmodel)
        while not HasModelLoaded(grabmodel) do
            Citizen.Wait(100)
        end
	    local grabobj = CreateObject(grabmodel, pedCoords, true)

	    FreezeEntityPosition(grabobj, true)
	    SetEntityInvincible(grabobj, true)
	    SetEntityNoCollisionEntity(grabobj, ped)
	    SetEntityVisible(grabobj, false, false)
	    AttachEntityToEntity(grabobj, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
	    local startedGrabbing = GetGameTimer()

	    Citizen.CreateThread(function()
		    while GetGameTimer() - startedGrabbing < 37000 do
			    Citizen.Wait(1)
			    DisableControlAction(0, 73, true)
			    if HasAnimEventFired(ped, GetHashKey("CASH_APPEAR")) then
				    if not IsEntityVisible(grabobj) then
					    SetEntityVisible(grabobj, true, false)
				    end
			    end
			    if HasAnimEventFired(ped, GetHashKey("RELEASE_CASH_DESTROY")) then
				    if IsEntityVisible(grabobj) then
                        SetEntityVisible(grabobj, false, false)
                        TriggerServerEvent('get:thinglollmao')
				    end
			    end
		    end
		    DeleteObject(grabobj)
	    end)
    end
	local trollyobj = Trolley
    local emptyobj = GetHashKey("hei_prop_hei_cash_trolly_03")

	if IsEntityPlayingAnim(trollyobj, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 3) then
		return
    end
    local baghash = GetHashKey("hei_p_m_bag_var22_arm_s")

    RequestAnimDict("anim@heists@ornate_bank@grab_cash")
    RequestModel(baghash)
    RequestModel(emptyobj)
    while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") and not HasModelLoaded(emptyobj) and not HasModelLoaded(baghash) do
        Citizen.Wait(100)
    end
	while not NetworkHasControlOfEntity(trollyobj) do
		Citizen.Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), GetEntityCoords(PlayerPedId()), true, false, false)
    local scene1 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene1, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene1, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
	NetworkStartSynchronisedScene(scene1)
	Citizen.Wait(1500)
	CashAppear()
	local scene2 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene2, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene2, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
	NetworkAddEntityToSynchronisedScene(trollyobj, scene2, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene2)
	Citizen.Wait(37000)
	local scene3 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene3, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene3, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene3)
    NewTrolley = CreateObject(emptyobj, GetEntityCoords(trollyobj) + vector3(0.0, 0.0, - 0.985), true)
    --TriggerServerEvent("utk_fh:updateObj", name, NewTrolley, 2)
    SetEntityRotation(NewTrolley, GetEntityRotation(trollyobj))
	while not NetworkHasControlOfEntity(trollyobj) do
		Citizen.Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	DeleteObject(trollyobj)
    PlaceObjectOnGroundProperly(NewTrolley)
	Citizen.Wait(1800)
	DeleteObject(bag)
    SetPedComponentVariation(ped, 5, 45, 0, 0)
	RemoveAnimDict("anim@heists@ornate_bank@grab_cash")
	SetModelAsNoLongerNeeded(emptyobj)
    SetModelAsNoLongerNeeded(GetHashKey("hei_p_m_bag_var22_arm_s"))
    disableinput = false
end]]

Citizen.CreateThread(function()
    listOn = false
    while true do
        Wait(5)
        local PlayerPos = GetEntityCoords(PlayerPedId())

        if GetDistanceBetweenCoords(PlayerPos, 919.38,46.2,59.87, true) <= 5 then	
                            
            --lamook() trolley

            Citizen.Wait(1000000000000000000000000000000000000000000000)
        end
    end
end)










Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(PlayerPos, 931.81,54.59,72.07, true) <= 5 and cangoaway then	

                -- DrawText3Ds(931.81,54.59,72.07 + 0.2, "~b~[E]~w~ To Prepare Getaway and Buyer") --exit trigger
                if GetDistanceBetweenCoords(PlayerPos, 931.81,54.59,72.07, true) <= 1 and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then



                    local Getmecuh = PlayerPedId()
   
                    --[[
                    SetEntityCoords(Getmecuh, 919.52, 47.18, 80.76)
                    ]]
                    CreateGetawayVehicle()
                    Citizen.Wait(1000)
                    okmyman()
                    
                    sellstealthing = true



                    cangoaway = false


                    
                end
            end
        end    
end)


























local getawaycar = {
	[1] =  { ['x'] = 933.56,['y'] = 25.55,['z'] = 80.87,['h'] = 236.73, ['info'] = ' park 8' }, --casino
}




function CreateGetawayVehicle()

	if DoesEntityExist(yowVehiclegetaw) then

	    SetVehicleHasBeenOwnedByPlayer(yowVehiclegetaw,false)
		SetEntityAsNoLongerNeeded(yowVehiclegetaw)
		DeleteEntity(yowVehiclegetaw)
	end

    local car = GetHashKey("caracara2")
    RequestModel(car)
    while not HasModelLoaded(car) do
        Citizen.Wait(0)
    end

    local spawnpoint = 1
    for i = 1, #getawaycar do
	    local caisseo = GetClosestVehicle(getawaycar[i]["x"], getawaycar[i]["y"], getawaycar[i]["z"], 3.500, 0, 70)
		if not DoesEntityExist(caisseo) then
			spawnpoint = i
		end
    end

    yowVehiclegetaw = CreateVehicle(car, getawaycar[spawnpoint]["x"], getawaycar[spawnpoint]["y"], getawaycar[spawnpoint]["z"], getawaycar[spawnpoint]["h"], true, false)
    -- SetPedIntoVehicle(PlayerPedId(),yowVehiclegetaw,-1)
    local plt = GetVehicleNumberPlateText(yowVehiclegetaw)
    SetVehicleHasBeenOwnedByPlayer(yowVehiclegetaw,true)
    SetNewWaypoint(3470.9,3715.14)
	TriggerServerEvent('garage:addKeys', plt)

    while true do
    	Citizen.Wait(1)
    	 DrawText3Ds(getawaycar[spawnpoint]["x"], getawaycar[spawnpoint]["y"], getawaycar[spawnpoint]["z"], "Your Getaway Vehicle")
    	 if #(GetEntityCoords(PlayerPedId()) - vector3(getawaycar[spawnpoint]["x"], getawaycar[spawnpoint]["y"], getawaycar[spawnpoint]["z"])) < 8.0 then
    	 	return
    	 end
    end


   
end














function okmyman()

    if sellstealthing then
        local NPC = { x = -1860.45, y = -1241.82, z = 8.62, rotation = 200, NetworkSync = true}



        Citizen.CreateThread(function()
          modelHash = GetHashKey("cs_davenorton")
          RequestModel(modelHash)
          while not HasModelLoaded(modelHash) do
               Wait(1)
          end
          makemyped() 
        end)
        function makemyped()
            local ped1 = PlayerPedId()
            created_pedmymanlolstop = CreatePed(0, modelHash , NPC.x,NPC.y,NPC.z - 1, NPC.rotation, NPC.NetworkSync)

            SetEntityInvincible(created_pedmymanlolstop, true)
            FreezeEntityPosition(created_pedmymanlolstop, true)



            local playerPed = GetPlayerPed(-1)
            local x, y, z = table.unpack(GetEntityCoords(playerPed, true))



            

            yow = true

        end



    end

end





Citizen.CreateThread(function()
    listOn = false
        while true do
    
            Wait(5)

            local PlayerPos = GetEntityCoords(PlayerPedId())

            if GetDistanceBetweenCoords(PlayerPos, -1860.45,-1241.82,8.62, true) <= 5 and sellstealthing then	 --seller

                DrawText3Ds(-1860.45,-1241.82,8.62 + 0.2, "~b~[E]~w~ Sell Stolen Items")
                if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(GetPlayerPed(-1), false) ~= 1 then
                    TriggerServerEvent('get:moneycsh')

                    aaaaaaaaaaaaaaaaaa = true

                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = true
                    
                    Citizen.Wait(2000)


                    print("ok")

                    local Getmecuh = PlayerPedId()
                    hieststarted = true
                
                
                    --[[
                    DoScreenFadeOut(400)
                    Citizen.Wait(500)
                    SetEntityCoords(Getmecuh, 3467.66, -3708.98, 36.59)
                    Citizen.Wait(500)
                    DoScreenFadeIn(500)
                    Citizen.Wait(500)
                    ]]
                    DeleteEntity(created_pedmymanlolstop)
                    
                    TriggerEvent("DoLongHudText","Damn I Can't Believe You Pulled It Off Man!")
                    sellstealthing = false


                    Citizen.Wait("600000")

                    onealreadygoingon = true

                    aaaaaaaaaaaaaaaaaa = false

                    aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa = false


      


                    
                end


            end	

            
                
	

          

        end

    
end)






















