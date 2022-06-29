--[[Config = {}
Config.WeaponList = {
	'WEAPON_PISTOL',
	'WEAPON_COMBATPISTOL',
	'WEAPON_APPISTOL',
	'WEAPON_PISTOL50',
	'WEAPON_FIREEXTINGUISHER',
	'WEAPON_REVOLVER',
	'WEAPON_SNSPISTOL',
	'WEAPON_HEAVYPISTOL',
	'WEAPON_VINTAGEPISTOL',
	'WEAPON_MICROSMG',
	'WEAPON_SMG',
	'WEAPON_BOTTLE',
	'WEAPON_ASSAULTSMG',
	'WEAPON_MINISMG',
	'WEAPON_MACHINEPISTOL',
	'WEAPON_COMBATPDW',
	'WEAPON_PUMPSHOTGUN',
	'WEAPON_SAWNOFFSHOTGUN',
	'WEAPON_ASSAULTSHOTGUN',
	'WEAPON_BULLPUPSHOTGUN',
	'WEAPON_HEAVYSHOTGUN',
	'WEAPON_ASSAULTRIFLE',
	'WEAPON_CARBINERIFLE',
	'WEAPON_ADVANCEDRIFLE',
	'WEAPON_SPECIALCARBINE',
	'WEAPON_BULLPUPRIFLE',
	'WEAPON_COMPACTRIFLE',
	'WEAPON_COMBATMG',
	'WEAPON_GUSENBERG',
	'WEAPON_SNIPERRIFLE',
	'WEAPON_HEAVYSNIPER',
	'WEAPON_MARKSMANRIFLE',
	'WEAPON_GRENADELAUNCHER',
	'WEAPON_RPG',
	'WEAPON_STINGER',
	'WEAPON_MINIGUN',
	'WEAPON_GRENADE',
	'WEAPON_STICKYBOMB',
	'WEAPON_SMOKEGRENADE',
	'WEAPON_BZGAS',
	'WEAPON_MOLOTOV',
	'WEAPON_DIGISCANNER',
	'WEAPON_FIREWORK',
	'WEAPON_MUSKET',
	'WEAPON_STUNGUN',
	'WEAPON_HOMINGLAUNCHER',
	'WEAPON_PROXMINE',
	'WEAPON_FLAREGUN',
	'WEAPON_MARKSMANPISTOL',
	'WEAPON_RAILGUN',
	'WEAPON_DBSHOTGUN',
	'WEAPON_AUTOSHOTGUN',
	'WEAPON_COMPACTLAUNCHER',
	'WEAPON_PIPEBOMB',
	'WEAPON_PETROLCAN',
	'WEAPON_NIGHTSTICK',
	'WEAPON_DOUBLEACTION',
	'WEAPON_KNIFE',
	'WEAPON_BAT',
	'WEAPON_HATCHET',
	'WEAPON_KNUCKLE',
	'WEAPON_WRENCH',

}

Config.PedAbleToWalkWhileSwapping = true
Config.UnarmedHash = -1569615261

Citizen.CreateThread(function()
	Wait(100)
	local animDict = 'reaction@intimidation@1h'

	local animIntroName = 'intro'
	local animOutroName = 'outro'

	local animFlag = 0

	RequestAnimDict(animDict)
	  
	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(100)
	end

	local lastWeapon = nil

	while true do
		Citizen.Wait(0)

		if not IsPedInAnyVehicle(GetPlayerPed(-1), true) then
			if Config.PedAbleToWalkWhileSwapping then
				animFlag = 48
			else
				animFlag = 0
			end

			for i=1, #Config.WeaponList do
				if lastWeapon ~= nil and lastWeapon ~=  GetHashKey(Config.WeaponList[i]) and GetSelectedPedWeapon(GetPlayerPed(-1)) ==  GetHashKey(Config.WeaponList[i]) then
					SetCurrentPedWeapon(GetPlayerPed(-1), Config.UnarmedHash, true)
					TaskPlayAnim(GetPlayerPed(-1), animDict, animIntroName, 8.0, -8.0, 2700, animFlag, 0.0, false, false, false)

					Citizen.Wait(1000)
					SetCurrentPedWeapon(GetPlayerPed(-1),  GetHashKey(Config.WeaponList[i]), true)
				end

				if lastWeapon ~= nil and lastWeapon ==  GetHashKey(Config.WeaponList[i]) and GetSelectedPedWeapon(GetPlayerPed(-1)) == Config.UnarmedHash then
					TaskPlayAnim(GetPlayerPed(-1), animDict, animOutroName, 8.0, -8.0, 2100, animFlag, 0.0, false, false, false)

					Citizen.Wait(1000)
					SetCurrentPedWeapon(GetPlayerPed(-1), Config.UnarmedHash, true)
				end
			end
		end

		lastWeapon = GetSelectedPedWeapon(GetPlayerPed(-1))
	end
end) --]]