Config = {}
Config.Locale = 'en'

Config.DoorList = {



	{
	objName = 'v_ilev_gc_door03',
	objYaw = 80.0,
	objCoords = vector3(191.61, -1066.42, 29.36),
	textCoords = vector3(191.61, -1066.42, 29.36),
	authorizedJobs = { 'pawnshop' },
	locked = true,
	},
--
-- Vanilla Unicorn
--

	{
	objName = 'v_ilev_roc_door2',
	objYaw = 30.0,
	objCoords = vector3(99.42, -1293.08, 29.70),
	textCoords = vector3(99.42, -1293.08, 29.70),
	authorizedJobs = { 'unicorn','admin', 'superadmin' },
	locked = true,
	},
	{
	objName = 'prop_magenta_door',
	objYaw = -150.0,
	objCoords = vector3(95.44, -1285.15, 29.28),
	textCoords = vector3(95.44, -1285.15, 29.28),
	authorizedJobs = { 'unicorn', 'admin', 'superadmin' },
	locked = true,
	},
	{
	objName = 'prop_strip_door_01',
	objYaw = 30.0,
	objCoords = vector3(128.32, -1297.99, 29.6),
	textCoords = vector3(128.32, -1297.99, 29.6),
	authorizedJobs = { 'unicorn', 'admin', 'superadmin' },
	locked = false,
	},
	
	--weaonary doors
	{
	objName = 'prop_lrggate_02_ld',
	objYaw = 90.0,
	distance = 10,
	objCoords = vector3(-844.051, 155.9619, 66.03221),
	textCoords = vector3(-844.051, 159.17, 67.03221),
	authorizedJobs = { 'weaponary','admin', 'superadmin' },
	locked = true,
	},
	{
	objName = 'prop_bh1_48_gate_1',
	objYaw = 265.0,
	distance = 3.5,
	objCoords = vector3(-848.9343, 179.3079, 70.0247),
	textCoords = vector3(-848.9343, 178.64, 70.0247),
	authorizedJobs = { 'weaponary', 'admin', 'superadmin' },
	locked = true,
	},

	-- Weaponary Door STASH
	{
		textCoords = vector3(589.57, -3271.55, 6.40),
		authorizedJobs = { 'weaponary' },
		locked = true,
		distance = 2.5,
		doors = {
			{
				objName = 'prop_ron_door_01',
				objYaw = 180.0,
				objCoords = vector3(590.41, -3271.87, 6.07)
			},

			{
				objName = 'prop_ron_door_01',
				objYaw = 00.0,
				objCoords = vector3(589.57, -3272.35, 6.07)
			}
		}
	},

	--
	-- Mission Row First Floor
	--
	
    {
        objName = 'mrpd_celldoor',
        distance = 2,
        objYaw = 0.00,
        objCoords = vector3(461.37, -988.67, 34.19),
        textCoords = vector3(461.37, -988.67, 34.19),
        authorizedJobs = { 'police'},
        locked = true,
    },
    {
        objName = 'mrpd_celldoor',
        distance = 2,
        objYaw = 0.00,
        objCoords = vector3(455.56, -988.66, 34.19),
        textCoords = vector3(455.56, -988.66, 34.19),
        authorizedJobs = { 'police'},
        locked = true,
    },
    {
        objName = 'mrpd_celldoor',
        distance = 2,
        objYaw = 0.00,
        objCoords = vector3(449.66, -988.62, 34.19),
        textCoords = vector3(449.66, -988.62, 34.19),
        authorizedJobs = {'police'},
        locked = true,
    },
    {
        objName = 'mrpd_celldoor2',
        distance = 2,
        objYaw = 180.00,
        objCoords = vector3(449.75, -985.22, 34.19),
        textCoords = vector3(449.75, -985.22, 34.19),
        authorizedJobs = {'police'},
        locked = true,
    },
    {
        objName = 'mrpd_celldoor2',
        distance = 2,
        objYaw = 180.0,
        objCoords = vector3(455.62, -985.2, 34.19),
        textCoords = vector3(455.62, -985.2, 34.19),
        authorizedJobs = { 'police'},
        locked = true,
    },
    {
        objName = 'mrpd_celldoor',
        distance = 2,
        objYaw = 180.00,
        objCoords = vector3(461.61, -985.15, 34.19),
        textCoords = vector3(461.61, -985.15, 34.19),
        authorizedJobs = {'police'},
        locked = true,
    },
    {
        objName = 'mrpd_door_04',
        distance = 2,
        objYaw = 0.00,
        objCoords = vector3(436.45, -985.38, 34.19),
        textCoords = vector3(436.45, -985.38, 34.19),
        authorizedJobs = {'police'},
        locked = true,
    },
    {
        objName = 'mrpd_door_04',
        distance = 2,
        objYaw = 90.00,
        objCoords = vector3(441.96, -994.62, 34.19),
        textCoords = vector3(441.96, -994.62, 34.19),
        authorizedJobs = {'police'},
        locked = true,
    },
	{
		objName = 'mrpd_door_03',
		objYaw = 180.0,
		objCoords  = vector3(467.39, -991.19, 34.19),
		textCoords = vector3(467.39, -991.19, 34.19),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_03',
		objYaw = -90.0,
		objCoords  = vector3(476.13, -996.46, 34.19),
		textCoords = vector3(476.13, -996.46, 34.19),
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row enterance
	--

	{
		textCoords = vector3(440.15, -999.19, 30.71),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'mrpd_door_01_r',
				objYaw = 180.0,
				objCoords = vector3(440.15, -999.19, 30.71)
			},

			{
				objName = 'mrpd_door_01_l',
				objYaw = 180.0,
				objCoords = vector3(440.15, -999.19, 30.71)
			}
		}
	},
	{
		textCoords = vector3(442.73, -999.19, 30.71),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'mrpd_door_01_r',
				objYaw = 180.0,
				objCoords = vector3(442.73, -999.19, 30.71)
			},

			{
				objName = 'mrpd_door_01_l',
				objYaw = 180.0,
				objCoords = vector3(442.73, -999.19, 30.71)
			}
		}
	},

	--
	-- Mission Row Garages
	--

	{
		textCoords = vector3(433.85, -1001.58, 25.8),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 8,
		doors = {
			{
				objName = 'mrpd_garage_door',
				-- objYaw = 180.0,
				objCoords = vector3(431.28, -1001.61, 25.71)
			},

			{
				objName = 'mrpd_garage_door',
				-- objYaw = 180.0,
				objCoords = vector3(436.21, -1001.68, 25.71)
			}
		}
	},

	{
		textCoords = vector3(449.92, -1001.57, 25.8),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 8,
		doors = {
			{
				objName = 'mrpd_garage_door',
				-- objYaw = 180.0,
				objCoords = vector3(447.57, -1001.55, 25.71)
			},

			{
				objName = 'mrpd_garage_door',
				-- objYaw = 180.0,
				objCoords = vector3(452.12, -1001.57, 25.71)
			}
		}
	},

	{
		objName = 'mrpd_door_03',
		objYaw = 180.0,
		objCoords  = vector3(441.06, -993.8, 30.70),
		textCoords = vector3(441.06, -993.8, 30.70),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_04',
		objYaw = 0.0,
		objCoords  = vector3(438.45, -995.88, 30.70),
		textCoords = vector3(438.45, -995.88, 30.70),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_04',
		objYaw = 0.0,
		objCoords  = vector3(443.37, -994.81, 30.70),
		textCoords = vector3(443.37, -994.81, 30.70),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_03',
		objYaw = 180.0,
		objCoords  = vector3(467.38, -991.28, 30.70),
		textCoords = vector3(467.38, -991.28, 30.70),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_03',
		objYaw = 180.0,
		objCoords  = vector3(471.48, -998.93, 30.70),
		textCoords = vector3(471.48, -998.93, 30.70),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_03',
		objYaw = 90.0,
		objCoords  = vector3(464.35, -988.72, 25.79),
		textCoords = vector3(464.35, -988.72, 25.79),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_03',
		objYaw = 180.0,
		objCoords  = vector3(467.43, -991.26, 25.79),
		textCoords = vector3(467.43, -991.26, 25.79),
		authorizedJobs = { 'police' },
		locked = true
	},
	{
		objName = 'mrpd_door_04',
		objYaw = 180.0,
		objCoords  = vector3(486.87, -996.72, 25.79),
		textCoords = vector3(486.87, -996.72, 25.79),
		authorizedJobs = { 'police' },
		locked = true
	},
		
	
	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'mrpd_door_01_r',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'mrpd_door_01_l',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	--weaponary double doors
-- 	{
-- 		textCoords = vector3(-816.36, 178.39, 72.22),
-- 		authorizedJobs = { 'weaponary' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_mm_doorm_r',
-- 				objYaw = -70.0,
-- 				objCoords = vector3(-816.1068, 177.5109, 72.82738)
-- 			},

-- 			{
-- 				objName = 'v_ilev_mm_doorm_l',
-- 				objYaw = -68.0,
-- 				objCoords = vector3(-816.716, 179.098, 72.82738)
-- 			}
-- 		}
-- 	},
-- 	{
-- 		textCoords = vector3(-794.14, 181.35, 72.83),
-- 		authorizedJobs = { 'weaponary' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'prop_bh1_48_backdoor_r',
-- 				objYaw = 112.0,
-- 				objCoords = vector3(-794.1853, 182.568, 73.04045)
-- 			},

-- 			{
-- 				objName = 'prop_bh1_48_backdoor_l',
-- 				objYaw = 112.0,
-- 				objCoords = vector3(-793.3943, 180.5075, 73.04045)
-- 			}
-- 		}
-- 	},
-- 	--stop weaponary double dorors--

-- 	{
-- 		textCoords = vector3(-795.59, 177.65, 72.83),
-- 		authorizedJobs = { 'weaponary' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'prop_bh1_48_backdoor_r',
-- 				objYaw = 21.0,
-- 				objCoords = vector3(-795.66, 177.98, 72.83)
-- 			},

-- 			{
-- 				objName = 'prop_bh1_48_backdoor_l',
-- 				objYaw = 21.0,
-- 				objCoords = vector3(-795.66, 177.98, 72.83)
-- 			}
-- 		}
-- 	},

-- 	-- garage
--     {
--        	 objName = 'v_ilev_mm_door',
--        	 objYaw = 200.0,
--        	 objCoords  = vector3(-806.87, 185.45, 72.48),
--         textCoords = vector3(-806.85, 185.70, 72.48),
--         authorizedJobs = { 'weaponary','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- heder lemala
--    {
--        	 objName = 'v_ilev_mm_doordaughter',
--        	 objYaw = 200.0,
--        	 objCoords  = vector3(-803.22, 176.35, 76.74),
--         textCoords = vector3(-803.25, 175.90, 76.74),
--         authorizedJobs = { 'weaponary','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- heder lemala 2
--     {
--        	 objName = 'v_ilev_mm_doorw',
--        	 objYaw = 200.0,
--        	 objCoords  = vector3(-810.00, 177.30, 76.74),
--         textCoords = vector3(-810.00, 177.65, 76.74),
--         authorizedJobs = { 'weaponary','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- heder lemala 3
--     {
--        	 objName = 'v_ilev_mm_doorson',
--        	 objYaw = -70.0,
--        	 objCoords  = vector3(-807.06, 173.15, 76.74),
--         textCoords = vector3(-806.50, 173.30, 76.74),
--         authorizedJobs = { 'weaponary','admin', 'superadmin' },
--         locked = true
--     },

-- -- Mission Row - Front Security Gate
-- 	{
-- 		objName = 'prop_facgate_08',
-- 		objCoords  = vector3(410.76060000,-1027.04800000,28.40136000),
-- 		textCoords = vector3(410.51,-1024.67,29.39),
-- 		authorizedJobs = {'police'},
-- 		locked = true,
-- 		distance = 15,
-- 		size = 2
-- 	},

-- 	-- To locker room & roof
-- 	{
-- 		objName = 'v_ilev_ph_gendoor004',
-- 		objYaw = 90.0,
-- 		objCoords  = vector3(449.6, -986.4, 30.6),
-- 		textCoords = vector3(450.1, -986.3, 31.7),
-- 		authorizedJobs = { 'police' },
-- 		locked = true
-- 	},

-- 	-- Rooftop
-- 	{
-- 		objName = 'v_ilev_gtdoor02',
-- 		objYaw = -90.0,
-- 		objCoords  = vector3(464.3, -984.6, 43.8),
-- 		textCoords = vector3(464.3, -984.0, 44.8),
-- 		authorizedJobs = { 'police' },
-- 		locked = true
-- 	},

-- 	-- Hallway to roof
-- 	{
-- 		objName = 'v_ilev_arm_secdoor',
-- 		objYaw = 90.0,
-- 		objCoords  = vector3(461.2, -985.3, 30.8),
-- 		textCoords = vector3(461.5, -986.0, 31.5),
-- 		authorizedJobs = { 'police' },
-- 		locked = true
-- 	},

-- 	-- Armory
-- 	{
-- 		objName = 'v_ilev_arm_secdoor',
-- 		objYaw = -90.0,
-- 		objCoords  = vector3(452.6, -982.7, 30.6),
-- 		textCoords = vector3(453.0, -982.6, 31.7),
-- 		authorizedJobs = { 'police' },
-- 		locked = true
-- 	},

-- 	-- Captain Office
-- 	{
-- 		objName = 'v_ilev_ph_gendoor002',
-- 		objYaw = -180.0,
-- 		objCoords  = vector3(447.2, -980.6, 30.6),
-- 		textCoords = vector3(447.2, -980.0, 31.7),
-- 		authorizedJobs = { 'police' },
-- 		locked = true
-- 	},

-- 	-- To downstairs (double doors)
-- 	-- {
-- 	-- 	textCoords = vector3(444.6, -989.4, 31.7),
-- 	-- 	authorizedJobs = { 'police' },
-- 	-- 	locked = true,
-- 	-- 	distance = 4,
-- 	-- 	doors = {
-- 	-- 		{
-- 	-- 			objName = 'v_ilev_ph_gendoor005',
-- 	-- 			objYaw = 180.0,
-- 	-- 			objCoords = vector3(443.9, -989.0, 30.6)
-- 	-- 		},

-- 	-- 		{
-- 	-- 			objName = 'v_ilev_ph_gendoor005',
-- 	-- 			objYaw = 0.0,
-- 	-- 			objCoords = vector3(445.3, -988.7, 30.6)
-- 	-- 		}
-- 	-- 	}
-- 	-- },

-- 	--
-- 	-- Mission Row Cells
-- 	--

-- 	-- Main Cells
-- 	{
-- 		objName = 'v_ilev_ph_cellgate',
-- 		objYaw = 0.0,
-- 		objCoords  = vector3(463.8, -992.6, 24.9),
-- 		textCoords = vector3(463.3, -992.6, 25.1),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true
-- 	},

-- 	-- Cell 1
-- 	{
-- 		objName = 'v_ilev_ph_cellgate',
-- 		objYaw = -90.0,
-- 		objCoords  = vector3(462.3, -993.6, 24.9),
-- 		textCoords = vector3(461.8, -993.3, 25.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true
-- 	},

-- 	-- Cell 2
-- 	{
-- 		objName = 'v_ilev_ph_cellgate',
-- 		objYaw = 90.0,
-- 		objCoords  = vector3(462.3, -998.1, 24.9),
-- 		textCoords = vector3(461.8, -998.8, 25.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true
-- 	},

-- 	-- Cell 3
--     {
--         objName = 'v_ilev_ph_cellgate',
--         objYaw = 90.0,
--         objCoords  = vector3(462.7, -1001.9, 24.9),
--         textCoords = vector3(461.8, -1002.4, 25.0),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- Cell 4
--    {
--        	 objName = 'v_ilev_ph_cellgate',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(468.4, -999.5, 24.9),
--         textCoords = vector3(468.6, -999.5, 24.9),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- Cell 5
--     {
--        	 objName = 'v_ilev_ph_cellgate',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(471.9, -999.0, 24.9),
--         textCoords = vector3(472.2, -999.5, 24.9),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- Cell 6
--     {
--        	 objName = 'v_ilev_ph_cellgate',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(476.2, -1007.2, 24.2),
--         textCoords = vector3(476.5, -1007.70, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- Cell 7
--     {
--        	 objName = 'v_ilev_ph_cellgate',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(480.0, -1007.2, 24.2),
--         textCoords = vector3(479.9, -1007.70, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- hederhakira 1
--     {
--        	 objName = 'v_ilev_ph_gendoor005',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(484.6, -999.1, 24.2),
--         textCoords = vector3(484.4, -999.75, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },


-- 	-- hederhakira hazana
--     {
--        	 objName = 'v_ilev_ph_gendoor006',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(487.9, -999.7, 24.2),
--         textCoords = vector3(487.8, -1000.2, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- hederhakira 3
--     {
--        	 objName = 'v_ilev_ph_gendoor005',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(491.1, -999.0, 24.2),
--         textCoords = vector3(491.1, -999.75, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- heder tzilom shoter
--     {
--        	 objName = 'v_ilev_ph_gendoor006',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(490.7, -996.2, 24.2),
--         textCoords = vector3(490.8, -995.61, 23.8),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- heder tzilom hasud
--     {
--        	 objName = 'v_ilev_ph_gendoor006',
--        	 objYaw = -178.0,
--        	 objCoords  = vector3(484.9, -996.1, 24.2),
--         textCoords = vector3(485.6, -995.97, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },


-- 	-- heder risum pleli
--     {
--        	 objName = 'v_ilev_ph_gendoor006',
--        	 objYaw = -00.0,
--        	 objCoords  = vector3(475.1, -995.5, 24.2),
--         textCoords = vector3(475.5, -995.1, 24.2),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },

-- 	-- evidence locker
--     -- {
--     --    	 objName = 'v_ilev_ph_gendoor005',
--     --    	 objYaw = -178.0,
-- 	-- distance = 4,
--     --    	 objCoords  = vector3(470.4, -992.8, 24.2),
--     --     textCoords = vector3(470.1, -992.2, 24.9),
--     --     authorizedJobs = { 'police','admin', 'superadmin' },
--     --     locked = true
--     -- },

-- 	-- cops room
--     {
--        	 objName = 'v_ilev_ph_gendoor005',
--        	 objYaw = -270.0,
--        	 objCoords  = vector3(464.9, -985.5, 25.5),
--         textCoords = vector3(466.2, -985.7, 25.5),
--         authorizedJobs = { 'police','admin', 'superadmin' },
--         locked = true
--     },
-- 	-- To Back
-- 	{
-- 		objName = 'v_ilev_gtdoor',
-- 		objYaw = 0.0,
-- 		objCoords  = vector3(463.4, -1003.5, 25.0),
-- 		textCoords = vector3(464.0, -1003.5, 25.5),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true
-- 	},

--     {
--         objName = 'v_ilev_ph_gendoor005',
--         objYaw = 180.0,
--         objCoords  = vector3(451.41, -983.91, 26.7),
--         textCoords = vector3(451.41, -983.91, 26.7),
--         authorizedJobs = { 'police' },
--         locked = true,
--         distance = 2
--     },

--     {
--         objName = 'v_ilev_ph_gendoor005',
--         objYaw = 0.0,
--         objCoords  = vector3(452.70, -984.11, 26.7),
--         textCoords = vector3(452.70, -984.11, 26.7),
--         authorizedJobs = { 'police' },
--         locked = true,
--         distance = 2
--     },

-- 	--
-- 	-- Mission Row Back
-- 	--

-- 	-- Back (double doors)
-- 	{
-- 		textCoords = vector3(468.6, -1014.4, 27.1),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 4,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_rc_door2',
-- 				objYaw = 0.0,
-- 				objCoords  = vector3(467.3, -1014.4, 26.5)
-- 			},

-- 			{
-- 				objName = 'v_ilev_rc_door2',
-- 				objYaw = 180.0,
-- 				objCoords  = vector3(469.9, -1014.4, 26.5)
-- 			}
-- 		}
-- 	},

-- 	-- Back Gate
-- 	{
-- 		objName = 'hei_prop_station_gate',
-- 		objYaw = 90.0,
-- 		objCoords  = vector3(488.8, -1017.2, 27.1),
-- 		textCoords = vector3(488.8, -1020.2, 27.1),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 8,
-- 		size = 2
-- 	},

-- 	--
-- 	-- Sandy Shores
-- 	--

-- 	-- Entrance
-- 	{
-- 		objName = 'v_ilev_shrfdoor',
-- 		objYaw = 30.0,
-- 		objCoords  = vector3(1855.685, 3683.93, 34.59282),
-- 		textCoords = vector3(1855.1, 3683.5, 35.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 2,
-- 		size = 2
-- 	},

-- 	--
-- 	-- Paleto Bay
-- 	--

-- 	-- Entrance (double doors)
-- 	{
-- 		textCoords = vector3(-443.5, 6016.3, 32.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_shrf2door',
-- 				objYaw = -45.0,
-- 				objCoords  = vector3(-443.1, 6015.6, 31.7),
-- 			},

-- 			{
-- 				objName = 'v_ilev_shrf2door',
-- 				objYaw = 135.0,
-- 				objCoords  = vector3(-443.9, 6016.6, 31.7)
-- 			}
-- 		}
-- 	},

-- 	--
-- 	-- Bolingbroke Penitentiary
-- 	--

-- 	-- Entrance (Two big gates)
-- 	{
-- 		objName = 'prop_gate_prison_01',
-- 		objCoords  = vector3(1844.9, 2604.8, 44.6),
-- 		textCoords = vector3(1844.9, 2608.5, 48.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 12,
-- 		size = 2
-- 	},

-- 	{
-- 		objName = 'prop_gate_prison_01',
-- 		objCoords  = vector3(1818.5, 2604.8, 44.6),
-- 		textCoords = vector3(1818.5, 2608.4, 48.0),
-- 		authorizedJobs = { 'police','admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 12,
-- 		size = 2
-- 	},


-- -- Tequi-lala Bar Freeway

-- 	{
-- 		objName = 'v_ilev_roc_door4',
-- 		objCoords  = vector3(-564.51,276.11,83.12),
-- 		textCoords = vector3(-564.51,276.11,83.12),
-- 		authorizedJobs = {'biker'},
-- 		locked = true,
-- 		distance = 2,
-- 		size = 2
-- 	},

-- 	{
-- 		objName = 'v_ilev_roc_door2',
-- 		objCoords  = vector3(-559.85,292.43,82.12),
-- 		textCoords = vector3(-559.85,292.43,82.12),
-- 		authorizedJobs = {'biker'},
-- 		locked = true,
-- 		distance = 2,
-- 		size = 2
-- 	},

-- 	{
-- 		objName = 'v_ilev_roc_door2',
-- 		objCoords  = vector3(-569.46,292.98,79.18),
-- 		textCoords = vector3(-569.46,292.98,79.18),
-- 		authorizedJobs = {'biker'},
-- 		locked = true,
-- 		distance = 2,
-- 		size = 2
-- 	},

-- 	{
-- 		objName = 'v_ilev_roc_door4',
-- 		objCoords  = vector3(-561.9,294.03,87.6),
-- 		textCoords = vector3(-561.9,294.03,87.6),
-- 		authorizedJobs = {'biker'},
-- 		locked = true,
-- 		distance = 2,
-- 		size = 2
-- 	},
-- 		---------------------
-- --
-- -- Weaponary
-- --

-- 	{
-- 	objName = 'v_ilev_gc_door01',
-- 	objYaw = -50.1,
-- 	objCoords = vector3(-1500.53, -202.23, 50.92),
-- 	textCoords = vector3(-1500.53, -202.23, 50.92),
-- 	authorizedJobs = { 'weaponary','admin', 'superadmin' },
-- 	locked = true,
-- 	},

-- 	{
-- 		objName = 'v_ilev_ph_cellgate',
-- 		objYaw = 850.1,
-- 		objCoords = vector3(-1504.91, -210.23, 47.89),
-- 		textCoords = vector3(-1503.89, -210.34, 47.89),
-- 		authorizedJobs = { 'weaponary', 'admin', 'superadmin' },
-- 		locked = true,
-- 		distance = 3.5,
-- 	},
	


	-- Hospital
	{
	objName = 'gabz_pillbox_singledoor',
	objYaw = -200.0,
	objCoords = vector3(308.23, -597.95, 43.28),
	textCoords = vector3(308.23, -597.95, 43.28),
	authorizedJobs = { 'ambulance'},
	locked = true,
	},
	
 	-- Mesrad rofe 1
 	{
 	objName = 'gabz_pillbox_singledoor',
 	objYaw = -110.0,
 	objCoords = vector3(312.92, -595.97, 43.28),
 	textCoords = vector3(312.92, -595.97, 43.28),
 	authorizedJobs = { 'ambulance'},
 	locked = true,
 	},

--  	-- heder prati 3
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -110.0,
-- 	objCoords = vector3(349.9, -598.6, 43.28),
-- 	textCoords = vector3(350.3, -598.3, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- rentgen
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(347.16, -584.78, 43.28),
-- 	textCoords = vector3(347.25, -584.46, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- tzevet rentgen
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(341.29, -582.43, 43.28),
-- 	textCoords = vector3(341.39, -582.28, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- heder menael
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(338.07, -592.5, 43.28),
-- 	textCoords = vector3(337.47, -592.9, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- heder menael
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(340.15, -586.62, 43.28),
-- 	textCoords = vector3(339.77, -586.82, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- MRI
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(336.55, -580.75, 43.28),
-- 	textCoords = vector3(336.66, -580.37, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

--  	-- heder trofot
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -20.0,
-- 	objCoords = vector3(307.46, -570.26, 43.28),
-- 	textCoords = vector3(307.66, -569.70, 43.88),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = -110.0,
-- 	objCoords = vector3(313.71, -596.22, 43.63391),
-- 	textCoords = vector3(313.71, -596.22, 43.63391),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},
	
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = 340.0,
-- 	objCoords = vector3(360.5034, -589.9995, 43.63391),
-- 	textCoords = vector3(361.01, -589.57, 43.63391),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},
	
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = 250.0,
-- 	objCoords = vector3(355.42, -583.89, 43.63391),
-- 	textCoords = vector3(355.42, -583.89, 43.63391),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},
	
-- 	{
-- 	objName = 'gabz_pillbox_singledoor',
-- 	objYaw = 250.0,
-- 	objCoords = vector3(356.81, -580.09, 43.63391),
-- 	textCoords = vector3(356.81, -580.09, 43.63391),
-- 	authorizedJobs = { 'ambulance', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},
	
-- 	{
-- 	textCoords = vector3(317.25, -578.96, 43.6339),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = false,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -200.0,
-- 			objCoords = vector3(316.0657, -578.3477, 43.43391)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -200.0,
-- 			objCoords = vector3(318.4847, -579.2281, 43.43391)
-- 		}
-- 	}
-- },
	
-- 	{
-- 	textCoords = vector3(349.27, -587.58, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -110.0,
-- 			objCoords = vector3(349.29, -587.59, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -110.0,
-- 			objCoords = vector3(349.29, -587.8, 43.28)
-- 		}
-- 	}
-- },	

-- 	{
-- 	textCoords = vector3(325.45, -589.45, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(325.20, -589.45, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(325.20, -589.45, 43.28)
-- 		}
-- 	}
-- },

-- 	{
-- 	textCoords = vector3(326.25, -579.35, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -110.0,
-- 			objCoords = vector3(326.27, -579.58, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -110.0,
-- 			objCoords = vector3(326.27, -579.58, 43.28)
-- 		}
-- 	}
-- },

-- 	{
-- 	textCoords = vector3(324.38, -576.0, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(324.14, -576.27, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(324.14, -576.27, 43.28)
-- 		}
-- 	}
-- },

-- 	{
-- 	textCoords = vector3(319.0, -574.0, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(318.38, -574.07, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(318.38, -574.0, 43.28)
-- 		}
-- 	}
-- },

-- 	{
-- 	textCoords = vector3(313.15, -571.80, 44.28),
-- 	authorizedJobs = { 'ambulance','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_r',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(313.0, -572.18, 43.28)
-- 		},

-- 		{
-- 			objName = 'gabz_pillbox_doubledoor_l',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(313.0, -572.18, 43.28)
-- 		}
-- 	}
-- },			
-- --- Court
-- {
-- 	textCoords = vector3(236.29, -409.49, 47.92),
-- 	authorizedJobs = { 'judge','admin', 'superadmin' },
-- 	locked = true,
-- 	distance = 2.5,
-- 	size = 0.5,
-- 	doors = {
-- 		{
-- 			objName = 'hei_prop_hei_bankdoor_new',
-- 			objYaw = -20.0,
-- 			objCoords = vector3(235.66, -409.31, 47.92)
-- 		},

-- 		{
-- 			objName = 'hei_prop_hei_bankdoor_new',
-- 			objYaw = 160.0,
-- 			objCoords = vector3(236.88, -409.7, 47.92)
-- 		}
-- 	}
-- },

-- {
-- 	objName = 'v_ilev_rc_door2',
-- 	objYaw = -10.35,
-- 	objCoords = vector3(1980.71, 3050.15, 50.43),
-- 	textCoords = vector3(1980.64, 3049.77, 50.43),
-- 	authorizedJobs = { 'crips', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- {
-- 	objName = 'v_ilev_ra_door2',
-- 	objYaw = 300.0,
-- 	objCoords = vector3(-556.4904, -190.8274, 70.32393),
-- 	textCoords = vector3(-555.4904, -190.8274, 70.22393),
-- 	authorizedJobs = { 'government', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

-- 	{
-- 	objName = 'v_ilev_ra_door2',
-- 	objYaw = 300.0,
-- 	objCoords = vector3(-556.4904, -191.8274, 65.32393),
-- 	textCoords = vector3(-556.72, -191.8274, 65.42393),
-- 	authorizedJobs = { 'government', 'admin', 'superadmin' },
-- 	locked = true,
-- 	},

-- 	-- LS CUSTOMS --
-- {
-- 	objName = 'prop_com_ls_door_01',
-- 	distance = 10,
-- 	objCoords = vector3(-356.08, -134.91, 39.01),
-- 	textCoords = vector3(-356.08, -134.91, 39.01),
-- 	authorizedJobs = { 'mechanic', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- BurgerShot --
-- {
-- 	objName = 'cj_int_door_24',
-- 	distance = 2,
-- 	objYaw = 125.0,
-- 	objCoords = vector3(-1195.47, -896.67, 14.0),
-- 	textCoords = vector3(-1196.2, -896.9, 14.0),
-- 	authorizedJobs = { 'burgershot', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- BurgerShot 2 --
-- {
-- 	objName = 'cj_int_door_24',
-- 	distance = 2,
-- 	objYaw = 215.0,
-- 	objCoords = vector3(-1200.92, -892.0, 14.0),
-- 	textCoords = vector3(-1200.65, -892.87, 14.0),
-- 	authorizedJobs = { 'burgershot', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Super Farm 1 --
-- 	{
-- 		textCoords = vector3(325.39, -1074.85, 29.69),
-- 		authorizedJobs = { 'pharmacy' },
-- 		locked = true,
-- 		distance = 2,
-- 		doors = {
-- 			{
-- 				objName = 'V_ILev_csr_door_L',
-- 				objYaw = 00.0,
-- 				objCoords = vector3(325.39, -1075.31, 29.49)
-- 			},

-- 			{
-- 				objName = 'V_ILev_csr_door_R',
-- 				objYaw = 0.0,
-- 				objCoords = vector3(325.39, -1075.31, 29.49)
-- 			}
-- 		}
-- 	},

-- 	-- Super Farm 2 --
-- 	{
-- 		textCoords = vector3(316.60, -1075.80, 29.69),
-- 		authorizedJobs = { 'pharmacy' },
-- 		locked = true,
-- 		distance = 2,
-- 		doors = {
-- 			{
-- 				objName = 'V_ILev_csr_door_L',
-- 				objYaw = -90.0,
-- 				objCoords = vector3(317.04, -1075.77, 29.49)
-- 			},

-- 			{
-- 				objName = 'V_ILev_csr_door_R',
-- 				objYaw = -90.0,
-- 				objCoords = vector3(317.04, -1075.77, 29.49)
-- 			}
-- 		}
-- 	},

-- 	-- Ballas --
-- {
-- 	objName = 'v_ilev_rc_door2',
-- 	distance = 2,
-- 	objYaw = -20.00,
-- 	objCoords = vector3(116.67, -1990.50, 18.5),
-- 	textCoords = vector3(116.77, -1990.68, 18.5),
-- 	authorizedJobs = { 'ballas', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Ballas 2 --
-- {
-- 	objName = 'v_ilev_rc_door2',
-- 	distance = 2,
-- 	objYaw = -20.00,
-- 	objCoords = vector3(112.51, -2001.15, 18.3),
-- 	textCoords = vector3(112.51, -2001.15, 18.3),
-- 	authorizedJobs = { 'ballas', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Ballas 2 --
-- {
-- 	objName = 'v_ilev_rc_door2',
-- 	distance = 2,
-- 	objYaw = -20.00,
-- 	objCoords = vector3(109.30, -2015.40, 18.5),
-- 	textCoords = vector3(109.30, -2015.40, 18.5),
-- 	authorizedJobs = { 'ballas', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Ballas 3 --
-- {
-- 	objName = 'v_ilev_rc_door2',
-- 	distance = 2,
-- 	objYaw = 163.00,
-- 	objCoords = vector3(118.10, -2007.60, 12.6),
-- 	textCoords = vector3(118.10, -2007.60, 12.6),
-- 	authorizedJobs = { 'ballas', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Ballas GARAGE --
-- {
-- 	objName = 'prop_sc1_21_g_door_01',
-- 	distance = 13,
-- 	--objYaw = 20.00,
-- 	objCoords = vector3(121.78, -1995.42, 18.3),
-- 	textCoords = vector3(121.78, -1995.42, 19.0),
-- 	authorizedJobs = { 'ballas', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- RECORDER 1 --
-- 	{
-- 		textCoords = vector3(-902.42, -459.01, 161.22),
-- 		authorizedJobs = { 'recorder' },
-- 		locked = true,
-- 		distance = 2,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_csr_door_l',
-- 				objYaw = -63.0,
-- 				objCoords = vector3(-902.42, -459.01, 161.22)
-- 			},

-- 			{
-- 				objName = 'v_ilev_csr_door_l',
-- 				objYaw = 117.0,
-- 				objCoords = vector3(-901.86, -460.12, 161.22)
-- 			}
-- 		}
-- 	},

-- 	-- Recorder 2 --
-- {
-- 	objName = 'v_ilev_fib_door1',
-- 	distance = 2,
-- 	objYaw = 118.00,
-- 	objCoords = vector3(-895.35, -448.40, 161.22),
-- 	textCoords = vector3(-895.35, -448.40, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Recorder 3 --
-- {
-- 	objName = 'v_ilev_fib_door1',
-- 	distance = 2,
-- 	objYaw = 28.00,
-- 	objCoords = vector3(-891.05, -441.85, 161.22),
-- 	textCoords = vector3(-891.05, -441.85, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Recorder 4 --
-- {
-- 	objName = 'v_ilev_fib_door3',
-- 	distance = 2,
-- 	objYaw = 28.00,
-- 	objCoords = vector3(-884.81, -438.67, 161.22),
-- 	textCoords = vector3(-884.81, -438.67, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- Recorder 4 --
-- {
-- 	objName = 'v_ilev_fib_door1',
-- 	distance = 2,
-- 	objYaw = 28.00,
-- 	objCoords = vector3(-883.65, -440.7, 161.22),
-- 	textCoords = vector3(-883.65, -440.7, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- HEDER AKLATA 1 --
-- {
-- 	objName = 'v_ilev_fib_door3',
-- 	distance = 2,
-- 	objYaw = 26.0,
-- 	objCoords = vector3(-887.83, -445.57, 161.22),
-- 	textCoords = vector3(-887.83, -445.57, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- HEDER AKLATA 2 --
-- {
-- 	objName = 'v_ilev_fib_door3',
-- 	distance = 2,
-- 	objYaw = 118.00,
-- 	objCoords = vector3(-886.55, -442.98, 161.22),
-- 	textCoords = vector3(-886.55, -442.98, 161.22),
-- 	authorizedJobs = { 'recorder', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 1--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = -2.00,
-- 	objCoords = vector3(975.35, -1849.16, 26.41),
-- 	textCoords = vector3(975.35, -1849.16, 26.41),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 2--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = 175.00,
-- 	objCoords = vector3(978.02, -1846.40, 26.64),
-- 	textCoords = vector3(978.02, -1846.40, 26.64),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 3--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = -95.00,
-- 	objCoords = vector3(978.5, -1852.65, 26.41),
-- 	textCoords = vector3(978.5, -1852.65, 26.41),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 4--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = -5.00,
-- 	objCoords = vector3(974.64, -1855.01, 26.41),
-- 	textCoords = vector3(974.64, -1855.01, 26.41),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 5--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = -4.00,
-- 	objCoords = vector3(969.14, -1854.32, 31.26),
-- 	textCoords = vector3(969.14, -1854.32, 31.26),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 6--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = -4.00,
-- 	objCoords = vector3(970.68, -1849.02, 31.26),
-- 	textCoords = vector3(970.68, -1849.20, 31.26),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 7--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = 175.00,
-- 	objCoords = vector3(967.50, -1829.60, 31.29),
-- 	textCoords = vector3(967.50, -1829.60, 31.29),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS 8--
-- {
-- 	objName = 'v_ilev_cm_door1',
-- 	distance = 2,
-- 	objYaw = 175.00,
-- 	objCoords = vector3(968.24, -1836.35, 31.26),
-- 	textCoords = vector3(968.24, -1836.35, 31.26),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- VAGOS GARAGE --
-- {
-- 	objName = 'prop_com_gar_door_01',
-- 	distance = 13,
-- 	--objYaw = 20.00,
-- 	objCoords = vector3(976.21, -1831.91, 31.28),
-- 	textCoords = vector3(976.21, -1831.91, 32.28),
-- 	authorizedJobs = { 'vagos', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub 1--
-- {
-- 	objName = 'ba_Prop_Door_Club_Entrance',
-- 	distance = 2,
-- 	objYaw = 166.00,
-- 	objCoords = vector3(354.87, 301.45, 103.76),
-- 	textCoords = vector3(354.87, 301.45, 103.76),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub 2--
-- {
-- 	objName = 'ba_Prop_Door_Club_Entrance',
-- 	distance = 2,
-- 	objYaw = 75.00,
-- 	objCoords = vector3(377.73, 268.55, 91.19),
-- 	textCoords = vector3(377.73, 268.55, 91.19),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub 3--
-- {
-- 	objName = 'ba_Prop_Door_Club_Glam_Generic',
-- 	distance = 2,
-- 	objYaw = -15.00,
-- 	objCoords = vector3(380.86, 266.50, 91.19),
-- 	textCoords = vector3(380.86, 266.50, 91.19),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub 4--
-- {
-- 	objName = 'ba_Prop_Door_Club_Glam_Generic',
-- 	distance = 2,
-- 	objYaw = -105.00,
-- 	objCoords = vector3(394.78, 277.25, 94.99),
-- 	textCoords = vector3(394.78, 277.25, 94.99),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub 5--
-- {
-- 	objName = 'ba_Prop_Door_Club_Glam_Generic',
-- 	distance = 2,
-- 	objYaw = 75.00,
-- 	objCoords = vector3(354.55, 274.22, 94.19),
-- 	textCoords = vector3(354.55, 274.22, 94.19),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub OFFICE 1--
-- {
-- 	objName = 'ba_Prop_Door_Club_Glass',
-- 	distance = 2,
-- 	objYaw = -54.00,
-- 	objCoords = vector3(394.6, 274.14, 94.93),
-- 	textCoords = vector3(394.6, 274.14, 94.93),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub OFFICE 2--
-- {
-- 	objName = 'ba_Prop_Door_Club_Glass',
-- 	distance = 2,
-- 	objYaw = -60.00,
-- 	objCoords = vector3(385.36, 268.71, 94.99),
-- 	textCoords = vector3(385.36, 268.71, 94.99),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- NightClub OFFICE 3--
-- {
-- 	objName = 'ba_Prop_Door_Club_Generic_VIP',
-- 	distance = 2,
-- 	objYaw = 75.00,
-- 	objCoords = vector3(377.95, 268.55, 94.99),
-- 	textCoords = vector3(377.95, 268.55, 94.99),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- 	-- WESTMOB DOOR1--
-- {
-- 	objName = 'v_ilev_fh_frontdoor',
-- 	distance = 2,
-- 	objYaw = 150.00,
-- 	objCoords = vector3(8.30, 539.10, 176.03),
-- 	textCoords = vector3(8.30, 539.10, 176.03),
-- 	authorizedJobs = { 'westmob', 'admin', 'superadmin' },
-- 	locked = true,
-- },

-- --Prison

-- {
-- 	objName = 'v_ilev_gtdoor',
-- 	objYaw = 85.0,
-- 	objCoords  = vector3(1845.19, 2585.94, 46.19),
-- 	textCoords = vector3(1845.19, 2585.94, 46.19),
-- 	authorizedJobs = { 'police' },
-- 	locked = true
-- },

-- -- Prison

-- {
-- 	objName = 'v_ilev_gtdoor',
-- 	objYaw = 85.0,
-- 	objCoords  = vector3(1837.67, 2585.94, 46.09),
-- 	textCoords = vector3(1837.67, 2585.94, 46.09),
-- 	authorizedJobs = { 'police' },
-- 	locked = true
-- },

-- -- Prison

-- {
-- 	objName = 'v_ilev_gtdoor',
-- 	objYaw = 85.0,
-- 	objCoords  = vector3(1819.12, 2594.24, 46.09),
-- 	textCoords = vector3(1819.12, 2594.24, 46.09),
-- 	authorizedJobs = { 'police' },
-- 	locked = true
-- },

-- -- Prison

-- {
-- 	objName = 'v_ilev_gtdoor',
-- 	objYaw = 85.0,
-- 	objCoords  = vector3(1826.92, 2585.82, 45.95),
-- 	textCoords = vector3(1826.92, 2585.82, 45.95),
-- 	authorizedJobs = { 'police' },
-- 	locked = true
-- },

-- 	-- Drug Stash
-- 	{
-- 		textCoords = vector3(-614.07, -1619.07, 33.01),
-- 		authorizedJobs = { 'drugdealer' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_rc_door1',
-- 				objYaw = -95.0,
-- 				objCoords = vector3(-613.72, -1618.01, 33.01)
-- 			},

-- 			{
-- 				objName = 'v_ilev_rc_door1',
-- 				objYaw = 85.0,
-- 				objCoords = vector3(-614.07, -1619.07, 33.01)
-- 			}
-- 		}
-- 	},


-- 	-- Drug Stash 1
-- 	{
-- 		textCoords = vector3(-610.05, -1610.20, 27.01),
-- 		authorizedJobs = { 'drugdealer' },
-- 		locked = true,
-- 		distance = 2.5,
-- 		doors = {
-- 			{
-- 				objName = 'v_ilev_rc_door3_r',
-- 				objYaw = 175.0,
-- 				objCoords = vector3(-611.07, -1610.55, 27.01)
-- 			},

-- 			{
-- 				objName = 'v_ilev_rc_door3_l',
-- 				objYaw = 175.0,
-- 				objCoords = vector3(-610.05, -1610.20, 27.01)
-- 			}
-- 		}
-- 	},

---------------------
-- vespucci --
---------------------
	-- Addons
	--

	--[[
	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	{
		objName = 'prop_gate_airport_01',
		objCoords  = vector3(420.1, -1017.3, 28.0),
		textCoords = vector3(420.1, -1021.0, 32.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	}
	--]]
}