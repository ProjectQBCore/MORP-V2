--------------------------------
------- Created by Hamza -------
-------------------------------- 

Config = {}

-- Police Settings:
Config.RequiredPoliceOnline = 1			-- required police online for players to do missions
Config.PoliceDatabaseName = "police"	-- set the exact name from your jobs database for police
Config.PoliceNotfiyEnabled = true		-- police notification upon truck robbery enabled (true) or disabled (false)
Config.PoliceBlipShow = true			-- enable or disable blip on map on police notify
Config.PoliceBlipTime = 30				-- miliseconds that blip is active on map (this value is multiplied with 4 in the script)
Config.PoliceBlipRadius = 50.0			-- set radius of the police notify blip
Config.PoliceBlipAlpha = 250			-- set alpha of the blip
Config.PoliceBlipColor = 5				-- set blip color

-- ## MISSION NPC PART ## --

-- Location where get mission from NPC:
Config.MissionNPC = {
	{
		Pos = {x=3311.26,y=5176.45,z=19.61},		-- set NPC coords here
		Heading = 231.39,							-- set heading of the NPC here
		Ped = 's_m_y_dealer_01'						-- set npc model name here
	},
}

-- Set to true/false depending on whether you want blip on the map for npc
Config.EnableGoldJobBlip = true

-- Mission NPC Blip Settings:
Config.EnableMapBlip = true							-- set between true/false
Config.BlipNameOnMap = "Gold Dealer"				-- set name of the blip
Config.BlipSprite = 280								-- set blip sprite, lists of sprite ids are here: https://docs.fivem.net/game-references/blips/
Config.BlipDisplay = 4								-- set blip display behaviour, find list of types here: https://runtime.fivem.net/doc/natives/#_0x9029B2F3DA924928
Config.BlipScale = 0.7								-- set blip scale/size on your map
Config.BlipColour = 5								-- set blip color, list of colors available in the bottom of this link: https://docs.fivem.net/game-references/blips/


-- ## GOLD JOB PART ## --

Config.MissionPosition = 
{
	-- Paleto
	-- Barn
	{
		Location = vector3(47.62, 6461.24, 28.56),
		InUse = false,
		Heading = 48.66,
		GoonSpawns = {
			NPC1 = {
				x = 423.75,
				y = 6473.47,
				z = 35.87,
				h = 45.28,
				ped = 'G_M_Y_Lost_02',
				animDict = 'amb@world_human_cop_idles@female@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			},
			NPC2 = {
				x = 428.23,
				y = 6476.84,
				z = 28.79,
				h = 55.07,
				ped = 'G_M_Y_MexGang_01',
				animDict = 'rcmme_amanda1',
				anim = 'stand_loop_cop',
				weapon = 'WEAPON_PISTOL',
			},
			NPC3 = {
				x = 431.57,
				y = 6460.33,
				z = 28.76,
				h = 41.31,
				ped = 'G_M_Y_SalvaBoss_01',
				animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			}
		}
	},
	-- city
	-- appartment
	{
		Location = vector3(1360.04, -616.44, 74.15),
		InUse = false,
		Heading = 0.44,
		GoonSpawns = {
			NPC1 = {
				x = 1358.63,
				y = -620.56,
				z = 74.3,
				h = 1.1,
				ped = 'G_M_Y_Lost_02',
				animDict = 'amb@world_human_cop_idles@female@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			},
			NPC2 = {
				x = 1358.68,
				y = -610.19,
				z = 74.34,
				h = 357.76,
				ped = 'G_M_Y_MexGang_01',
				animDict = 'rcmme_amanda1',
				anim = 'stand_loop_cop',
				weapon = 'WEAPON_PISTOL',
			},
			NPC3 = {
				x = 1358.04,
				y = -603.34,
				z = 74.34,
				h = 355.68,
				ped = 'G_M_Y_SalvaBoss_01',
				animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			}
		}
	},
	-- Oil Field
	{
		Location = vector3(1739.57, -1633.87, 112.3),
		InUse = false,
		Heading = 99.25,
		GoonSpawns = {
			NPC1 = {
				x = 1743.85,
				y = -1624.11,
				z = 116.2,
				h = 108.37,
				ped = 'G_M_Y_Lost_02',
				animDict = 'amb@world_human_cop_idles@female@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			},
			NPC2 = {
				x = 1745.92,
				y = -1635.74,
				z = 112.49,
				h = 82.76,
				ped = 'G_M_Y_MexGang_01',
				animDict = 'rcmme_amanda1',
				anim = 'stand_loop_cop',
				weapon = 'WEAPON_PISTOL',
			},
			NPC3 = {
				x = 1729.76,
				y = -1639.95,
				z = 112.57,
				h = 20.31,
				ped = 'G_M_Y_SalvaBoss_01',
				animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			}
		}
	},

	{
		Location = vector3(2553.55,4673.64,33.92),
		InUse = false,
		Heading = 17.77,
		GoonSpawns = {
			NPC1 = {
				x = 2549.01,
				y = 4669.23,
				z = 34.08,
				h = 4.96,
				ped = 'G_M_Y_Lost_02',
				animDict = 'amb@world_human_cop_idles@female@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			},
			NPC2 = {
				x = 2558.2,
				y = 4673.08,
				z = 34.08,
				h = 48.73,
				ped = 'G_M_Y_MexGang_01',
				animDict = 'rcmme_amanda1',
				anim = 'stand_loop_cop',
				weapon = 'WEAPON_PISTOL',
			},
			NPC3 = {
				x = 2545.5776367188,
				y = 4675.0551757813,
				z = 34.009281158447,
				h = 331.84777832032,
				ped = 'G_M_Y_SalvaBoss_01',
				animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			}
		}
	},
	{
		Location = vector3(1461.0035400391,6549.5546875,14.42578792572),
		InUse = false,
		Heading = 178.32929992676,
		GoonSpawns = {
			NPC1 = {
				x = 1465.4285888672,
				y = 6541.6909179688,
				z = 14.275111198425,
				h = 64.84741973877,
				ped = 'G_M_Y_Lost_02',
				animDict = 'amb@world_human_cop_idles@female@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			},
			NPC2 = {
				x = 1466.6131591797,
				y = 6553.9331054688,
				z = 13.999475479126,
				h = 131.08628845214,
				ped = 'G_M_Y_MexGang_01',
				animDict = 'rcmme_amanda1',
				anim = 'stand_loop_cop',
				weapon = 'WEAPON_PISTOL',
			},
			NPC3 = {
				x = 1458.552734375,
				y = 6559.8950195313,
				z = 14.043141365051,
				h = 172.92164611816,
				ped = 'G_M_Y_SalvaBoss_01',
				animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base',
				anim = 'base',
				weapon = 'WEAPON_PISTOL',
			}
		}
	}
}

-- Gold Job Delivery Locations:
Config.DeliveryPoints = {
	vector3(3333.92,5161.19,18.31),
}

-- Gold Job Delivery Marker Setting:
Config.DeliveryDrawDistance  = 50.0
Config.DeliveryMarkerType  = 27
Config.DeliveryMarkerScale  = { x = 3.0, y = 3.0, z = 1.0 }
Config.DeliveryMarkerColor  = { r = 255, g = 255, b = 0, a = 100 }

-- Enable GTA style "mission complete/fail" notifications:
Config.EnableCustomNotification = true

-- Use BlackMoney or Cash for mission cost?
Config.UseBlackMoneyAsMissionCost = false

-- Set amount of money that mission should cost.
Config.MissionCost = 500

-- Set cooldown for doing gold jobs in minutes:
Config.JobCooldownTime = 5

-- Reward Settings:
Config.ItemName1 = "goldwatch"				-- exact name of your item1
Config.ItemMinAmount1 = 1					-- set minimum reward amount of item1 (this value is multiplied with x100)
Config.ItemMaxAmount1 = 5					-- set maximum reward amount of item1 (this value is multiplied with x100)
Config.EnableSecondItemReward = true		-- add another item as reward but this has only 50% chance 
Config.ItemName2 = "goldbar"				-- exact name of your item2
Config.ItemMinAmount2 = 1					-- set minimum reward amount of item2
Config.ItemMaxAmount2 = 3					-- set maximum reward amount of item2
Config.RandomChance = 2						-- Set chance, 1/2 is default, which is 50% chance. If u e.g. change value to 4, then 1/4 equals 25% chance.

-- ## SMELTERY PART ## --

-- Location where you melt to gold bars
Config.GoldSmeltery = {
	{ ["x"] = 1109.93, ["y"] = -2008.24, ["z"] = 31.06, ["h"] = 0 },
}

-- Smeltery Marker
Config.SmelteryMarker = 27
Config.SmelteryMarkerColor = { r = 255, g = 255, b = 0, a = 100 }

-- Set time it takes to convert gold watches into gold bar in seconds
Config.SmelteryTime = 15

-- Set to true/false depending on whether you want blip on the map for smeltery or not
Config.EnableSmelteryBlip = true


-- ## EXCHANGE PART ## --

-- Location where you exchange gold bars to cash
Config.GoldExchange = {
	{ ["x"] = 1394.82, ["y"] = 3613.16, ["z"] = 34.98, ["h"] = 0 },
}

-- Exchange Marker
Config.ExchangeMarker = 27
Config.ExchangeMarkerColor = { r = 255, g = 255, b = 0, a = 100 }

-- Set time it takes to convert gold bars into cash in seconds
Config.ExchangeTime = 10

-- Set to true/false depending on whether you want blip on the map for exchange or not
Config.EnableExchangeBlip = false

-- Set cooldown for doing gold exchanges in minutes:
Config.ExchangeCooldown = 0


