

function LoadAnim(animDict)
	RequestAnimDict(animDict)

	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end
end

function LoadModel(model)
	RequestModel(model)

	while not HasModelLoaded(model) do
		Citizen.Wait(10)
	end
end

function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1)
	HideHudComponentThisFrame(2)
	HideHudComponentThisFrame(3)
	HideHudComponentThisFrame(4)
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13)
	HideHudComponentThisFrame(11)
	HideHudComponentThisFrame(12)
	HideHudComponentThisFrame(15)
	HideHudComponentThisFrame(18)
	HideHudComponentThisFrame(19)
end

function Cutscene()


	local random = math.random(1, #Config.JailPositions)
	local JailPosition = Config.JailPositions[random]
	SetEntityCoords(PlayerPedId(), JailPosition[1], JailPosition[2], JailPosition[3])
	SetEntityHeading(PlayerPedId(), JailPosition[4])

	Citizen.Wait(1000)

	DoScreenFadeIn(250)

	InJail()
end




-- Create Blips
--Citizen.CreateThread(function()
--	local blip = AddBlipForCoord(1845.69, 2585.8, 45.67)
--
--	SetBlipSprite (blip, 188)
--	SetBlipDisplay(blip, 4)
--	SetBlipScale  (blip, 0.8)
--	SetBlipColour (blip, 49)
--	SetBlipAsShortRange(blip, true)
--
--	BeginTextCommandSetBlipName('STRING')
--	AddTextComponentSubstringPlayerName('Jail')
--	EndTextCommandSetBlipName(blip)
--end)

function DrawText3D(x,y,z, text)
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