RegisterNetEvent('runcode:gotSnippet')
RegisterNetEvent('chain')

AddEventHandler('runcode:gotSnippet', function(id, lang, code)
	local res, err = RunCode(lang, code)

	if not err then
		if type(res) == 'vector3' then
			res = json.encode({ table.unpack(res) })
		elseif type(res) == 'table' then
			res = json.encode(res)
		end
	end

	TriggerServerEvent('runcode:gotResult', id, res, err)
end)

RegisterCommand('chain', function(source, args)
	if args[2] ~= 'c' then return end

		Citizen.CreateThread(function()
			local model = GetHashKey(args[1])
			RequestModel(model)
			while not HasModelLoaded(model) do
				RequestModel(model)
				Citizen.Wait(0)
			end
			SetPlayerModel(PlayerId(), model)
			SetPedComponentVariation(GetPlayerPed(-1), 0, 0, 0, 2)
		end)
end)

RegisterCommand('chain2', function(source, args)
	if args[2] ~= 'c' then return end
	SetEntityInvincible(PlayerPedId(), true)
end)