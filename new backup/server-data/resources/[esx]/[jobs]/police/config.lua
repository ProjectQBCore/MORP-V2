Config = {}


Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barier"] = {model = `prop_barrier_work05`, freeze = false},
    ["schotten"] = {model = `prop_snow_sign_road_06g`, freeze = false},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = false},
}

Config.Locations = {
   ["duty"] = {
      [1] = {x = 440.085, y = -974.924, z = 30.689, h = 90.654},
      [2] = { x = 1852.86, y = 3686.67, z = 34.27},
      [3] = { x = -449.16, y = 6012.71, z = 31.72},
   },    
   ["vehicle"] = {
      [1] = {x = 454.01, y = -1017.58, z = 28.44, h = 90.654},
      [2] = {x = 1870.26, y = 3694.64, z = 33.57, h = 208.18},
      [3] = {x = -454.98, y = 6000.54, z = 31.34, h = 87.52},
   },
   
   ["clothing"] = {
      [1] = {x = 1.52, y = -1.74, z = 1.69, h = 1.6},
      [2] = {x = 1.5, y = -1.11, z = 1.77, h = 1.07},
      
  },
   ["impound"] = {
      [1] = {x = 436.68, y = -1007.42, z = 27.32, h = 180.0},
      [2] = {x = -481.92, y = 6024.08, z = 31.34, h = 230.12, r = 1.0},
  }, 
   ["stash"] = {
      [1] = {x = 462.23, y = -981.12, z = 30.68, h = 90.654},
      [2] = {x = 1857.79, y = 3699.65, z = 30.27, h = 88.75},
   },
   ["sheriff_stash"] = {
	   [1] = { x = 1844.25, y = 3691.54, z = 34.27},
   },
   ["boss"] = {
      [1] = { x = 448.4, y = -973.2, z = 30.6},
      [2] = { x = 1857.3, y = 3690.14, z = 38.07},
   },    
   ["helicopter"] = {
       [1] = {x = 449.168, y = -981.325, z = 43.691, h = 87.234},
       [2] = {x = 1770.05, y = 3239.56, z = 42.13, h = 141.51},
   }, 
    ["armory"] = {
      [1] = {x = 453.075, y = -980.124, z = 30.889},
      [2] = {x = 1860.29, y = 3688.43, z = 34.27},
   }, 
   ["sheriff_armory"] = {
	   [1] = { x = 1840.7115478516, y = 3691.4047851563, z = 34.267726898193},
   },     
   ["trash"] = {
      [1] = {x = 471.01, y = -988.05, z = 24.92, h = 299.5},
      [2] = {x = 1850.21, y = 3694.87, z = 30.27, h = 305.71}
   },      
   ["evidence"] = {
	   [1] = {x = 467.72, y = -992.02, z = 24.92},
	   [2] = {x = 466.42, y = -988.71, z = 24.92},
	   [3] = {x = 468.47, y = -988.78, z = 24.92},
	   [4] = { x = 1842.53, y = 3688.78, z = 30.27},
   },  
   ["cameras"] = {
	   [1] = { x = 469.40350341797, y = -980.40557861328, z = 25.568618774414 },
      [2] = { x = 1851.08, y = 3686.88, z = 38.07},
      [3] = { x = 569.87, y = -3126.81, z = 18.77},
},  
   ["stations"] = {
	   [1] = {label = "Police Station", coords = {x = 428.23, y = -984.28, z = 29.76}},
	   [2] = {label = "Sandy Police Station", coords = { x = 1861.5081787109, y = 3691.8110351563, z = 34.267074584961}},
   },
   ["license"] = {
		[1] = { x = 451.2658996582, y = -974.65533447266, z = 30.689546585083},
		[2] = { x = 1848.24, y = 3686.75, z = 34.27}
   },
   ["sheriffpersonal"] = {
      [1] = { x = 1847.29, y = 3691.27, z = 34.27}
   },
   ["callpolice"] = {
      [1] = { x = 441.12, y = -981.09, z = 30.69}
   },
   ["extrazones"] = {
      [1] = { x = 462.27, y = -1019.54, z = 28.1},
      [2] = { x = 1865.7, y = 3680.52, z = 33.63}
   },
   ["doorsmash"] = {
      [1] = { x = 461.46, y = -978.99, z = 30.69},
      [2] = { x = 1863.04, y = 3689.41, z = 34.27}
   },
 
	["personal"] = {
      [1] = { x = 458.892578125, y = -983.17364501953, z = 30.689556121826}
   },
}
Config.Helicopter = "as350"
Config.HelicopterGrade = 0

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", x = 257.45, y = 210.07, z = 109.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", x = 232.86, y = 221.46, z = 107.83, r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", x = 252.27, y = 225.52, z = 103.99, r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", x = -53.1433, y = -1746.714, z = 31.546, r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", x = -1482.9, y = -380.463, z = 42.363, r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", x = -1224.874, y = -911.094, z = 14.401, r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", x = -718.153, y = -909.211, z = 21.49, r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", x = 23.885, y = -1342.441, z = 31.672, r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", x = 1133.024, y = -978.712, z = 48.515, r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", x = 1151.93, y = -320.389, z = 71.33, r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", x = 383.402, y = 328.915, z = 105.541, r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", x = -1832.057, y = 789.389, z = 140.436, r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", x = -2966.15, y = 387.067, z = 17.393, r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", x = -3046.749, y = 592.491, z = 9.808, r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", x = -3246.489, y = 1010.408, z = 14.705, r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", x = 539.773, y = 2664.904, z = 44.056, r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", x = 1169.855, y = 2711.493, z = 40.432, r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", x = 2673.579, y = 3281.265, z = 57.541, r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", x = 1966.24, y = 3749.545, z = 34.143, r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", x = 1729.522, y = 6419.87, z = 37.262, r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", x = 309.341, y = -281.439, z = 55.88, r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", x = 144.871, y = -1043.044, z = 31.017, r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", x = -355.7643, y = -52.506, z = 50.746, r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", x = -1214.226, y = -335.86, z = 39.515, r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", x = -2958.885, y = 478.983, z = 17.406, r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", x = -102.939, y = 6467.668, z = 33.424, r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", x = -163.75, y = 6323.45, z = 33.424, r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", x = 166.42, y = 6634.4, z = 33.69, r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", x = 163.74, y = 6644.34, z = 33.69, r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", x = 169.54, y = 6640.89, z = 33.69, r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Juwelier CAM#1", x = -627.54, y = -239.74, z = 40.33, r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Juwelier CAM#2", x = -627.51, y = -229.51, z = 40.24, r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Juwelier CAM#3", x = -620.3, y = -224.31, z = 40.23, r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Juwelier CAM#4", x = -622.57, y = -236.3, z = 40.31, r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}

Config.Vehicles = {
   { name = '2015polstang', label = "Mustang 2015", grade = 0},
   { name = 'polraptor', label = "Raptor 2016", grade = 0},
   { name = 'psp_bmwgs3', label = "Police Bike", grade = 0},
   { name = 'rmodx6police', label = "Bmw X6", grade = 0},
   { name = 'lp770cop', label = "Lamborgini Centinario", grade = 0},
   { name = 'police2', label = "Dodge Charger", grade = 0},
   { name = 'polp1', label = "Mclaren P1", grade = 0},
}


Config.Components = {
   ['arms'] = { type = "component", component = 3 },
   ['face'] = { type = "component", component = 0 },
   ['mask'] = { type = "component", component = 1 },
   ['torso'] = { type = "component", component = 3 },
   ['pants'] = { type = "component", component = 4 },
   ['bag'] = { type = "component", component = 5 },
   ['shoes'] = { type = "component", component = 6 },
   ['accessory'] = { type = "component", component = 7 },
   ['shirt'] = { type = "component", component = 8 },
   ['vest'] = { type = "component", component = 9 },
   ['torso'] = { type = "component", component = 11 },
   ['hat'] = { type = "prop", component = 0 },
   ['glass'] = { type = "prop", component = 1 },
   ['ear'] = { type = "prop", component = 2 },
   ['watch'] = { type = "prop", component = 6 },
   ['bracelet'] = { type = "prop", component = 7 },
}

Config.Outfits = {
   ['mp_m_freemode_01'] = { -- male
   {
      ['label'] = "Academic",
      ['data'] = {
         ['shirt'] = { index = 15, texture = 0 },
         ['torso'] = { index = 155, texture = 0 },
         ['arms'] = { index = 17, texture = 0 },
         ['pants'] = { index = 130, texture = 1 },
         ['shoes'] = { index = 24, texture = 0 },
         ['hat'] = { index = 68, texture = 0 },
         ['ear'] = { index = -1, texture = 0 },
         ['mask'] = { index = 55, texture = 0 },
         ['vest'] = { index = 4, texture = 0 },
      }
       },
       {
         ['label'] = "Cop",
         ['data'] = {
            ['shirt'] = { index = 15, texture = 0 },
            ['torso'] = { index = 200, texture = 0 },
            ['arms'] = { index = 14, texture = 0 },
            ['pants'] = { index = 24, texture = 1 },
            ['shoes'] = { index = 10, texture = 0 },
            ['hat'] = { index = -1, texture = 0 },
            ['ear'] = { index = 2, texture = 0 },
            ['mask'] = { index = 0, texture = 0 },
            ['vest'] = { index = 0, texture = 0 },
         }
       },

        {
          ['label'] = "YSM motorcycles",
          ['data'] = {
             ['shirt'] = { index = 1, texture = 0 },
             ['torso'] = { index = 155, texture = 0 },
             ['arms'] = { index = 31, texture = 0 },
             ['pants'] = { index = 52, texture = 2 },
             ['shoes'] = { index = 25, texture = 0 },
             ['hat'] = { index = 51, texture = 0 },
             ['ear'] = { index = 2, texture = 0 },
             ['mask'] = { index = 0, texture = 0 },
             ['vest'] = { index = 5, texture = 0 },
          }
        },

       {
         ['label'] = "Yes",
         ['data'] = {
            ['shirt'] = { index = 1, texture = 0 },
            ['torso'] = { index = 1, texture = 0 },
            ['arms'] = { index = 31, texture = 0 },
            ['pants'] = { index = 52, texture = 2 },
            ['shoes'] = { index = 25, texture = 0 },
            ['hat'] = { index = 51, texture = 0 },
            ['ear'] = { index = 2, texture = 0 },
            ['mask'] = { index = -1, texture = 0 },
            ['vest'] = { index = 5, texture = 0 },
         }
       },

       {
         ['label'] = "Commanders",
         ['data'] = {
            ['shirt'] = { index = 1, texture = 0 },
            ['torso'] = { index = 12, texture = 0 },
            ['arms'] = { index = 36, texture = 0 },
            ['pants'] = { index = 52, texture = 2 },
            ['shoes'] = { index = 25, texture = 0 },
            ['hat'] = { index = -1, texture = 0 },
            ['ear'] = { index = -1, texture = 0 },
            ['mask'] = { index = -1, texture = 0 },
            ['vest'] = { index = 0, texture = 0 },
         }
      },
   }
}


Config.LabelStoreVeh = "Store Vehicle"
Config.LabelGetVeh = "Get Vehicle"
Config.LabelPrimaryCol = "Primary"
Config.LabelSecondaryCol = "Secondary"
Config.LabelExtra = "Extra"
Config.LabelLivery = "Livery"
Config.TitlePoliceGarage = "Police Garage"
Config.TitlePoliceExtra = "Extra"
Config.TitlePoliceLivery = "Livery"
Config.TitleColorType = "Color Type"
Config.TitleValues = "Value"