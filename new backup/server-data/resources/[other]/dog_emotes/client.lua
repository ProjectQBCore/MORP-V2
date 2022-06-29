function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end




RegisterCommand("hump",function(source, args)

    local ad = "creatures@rottweiler@amb@"
	local anim = "hump_loop_chop" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			Wait(900)
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)


RegisterCommand("sit",function(source, args)

    local ad = "creatures@retriever@amb@world_dog_sitting@idle_a"
	local anim = "idle_b" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)



RegisterCommand("bark",function(source, args)

    local ad = "creatures@retriever@amb@world_dog_barking@idle_a"
	local anim = "idle_a" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)

RegisterCommand("shit",function(source, args)

    local ad = "creatures@rottweiler@move"
	local anim = "dump_loop" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)


RegisterCommand("sleep",function(source, args)

    local ad = "creatures@rottweiler@amb@sleep_in_kennel@"
	local anim = "sleep_in_kennel" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)

RegisterCommand("pissright",function(source, args)

    local ad = "creatures@rottweiler@move"
	local anim = "pee_right_idle" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)

RegisterCommand("pissleft",function(source, args)

    local ad = "creatures@rottweiler@move"
	local anim = "pee_left_idle" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)

RegisterCommand("carsit",function(source, args)

    local ad = "creatures@rottweiler@incar@"
	local anim = "sit" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)

RegisterCommand("playdead",function(source, args)

    local ad = "creatures@rottweiler@move"
	local anim = "dead_right" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false)



--[[ --amb@code_human_wander_eating_donut_fat@male@idle_a

RegisterCommand("test",function(source, args)

    local ad = "amb@code_human_wander_eating_donut_fat@male@idle_a"
	local anim = "idle_a" 
	local player = PlayerPedId()
	

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, anim, 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
			
			ClearPedTask(player)
		else
			TaskPlayAnim( player, ad, anim, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
		end       
	end

end, false) ]]

Citizen.CreateThread(function()
local player = PlayerPedId()


    while true do

        if emotePlaying then
            if (IsControlPressed(1, 32) or IsControlPressed(1, 33) or IsControlPressed(1, 34) or IsControlPressed(1, 35) or IsControlPressed(1, 90)) then
			ClearPedTask(player) 
            end
        end

        Citizen.Wait(0)
    end
end)



Citizen.CreateThread(function()
	while true do
	 Citizen.Wait(0)
	  if IsControlJustReleased(1, 32) then
	  ClearPedTasksImmediately(GetPlayerPed(-1))            
	 end
	end
   end)





--pee_left_enter
--pee_left_exit
--pee_left_idle
--pee_right_enter
--pee_right_exit
--pee_right_idle
--dump_enter
--dump_enter_facial
--dump_exit
--dump_exit_facial
--dump_loop
--dump_loop_facial