Citizen.CreateThread(function()							
			-- Heist Yatch: -2043.974,-1031.582, 11.981
	
				RequestIpl("hei_yacht_heist")
				RequestIpl("hei_yacht_heist_bar")
				RequestIpl("hei_yacht_heist_bar_lod")
				RequestIpl("hei_yacht_heist_bedrm")
				RequestIpl("hei_yacht_heist_bedrm_lod")
				RequestIpl("hei_yacht_heist_bridge")
				RequestIpl("hei_yacht_heist_bridge_lod")
				RequestIpl("hei_yacht_heist_enginrm")
				RequestIpl("hei_yacht_heist_enginrm_lod")
				RequestIpl("hei_yacht_heist_lod")
				RequestIpl("hei_yacht_heist_lounge")
				RequestIpl("hei_yacht_heist_lounge_lod")
				RequestIpl("hei_yacht_heist_slod")
	
			-- Gunrunning Yacht: -1363.724, 6734.108, 2.44598
	
				RequestIpl("gr_heist_yacht2")
				RequestIpl("gr_heist_yacht2_bar")
				RequestIpl("gr_heist_yacht2_bar_lod")
				RequestIpl("gr_heist_yacht2_bedrm")
				RequestIpl("gr_heist_yacht2_bedrm_lod")
				RequestIpl("gr_heist_yacht2_bridge")
				RequestIpl("gr_heist_yacht2_bridge_lod")
				RequestIpl("gr_heist_yacht2_enginrm")
				RequestIpl("gr_heist_yacht2_enginrm_lod")
				RequestIpl("gr_heist_yacht2_lod")
				RequestIpl("gr_heist_yacht2_lounge")
				RequestIpl("gr_heist_yacht2_lounge_lod")
				RequestIpl("gr_heist_yacht2_slod")
end)
		
Citizen.CreateThread(function() 
    RequestAllIpls() 
end) 

function RequestAllIpls() 
    RequestIpl("vw_casino_main") -- 1100.000, 220.000, -50.000

    RequestIpl("vw_casino_garage") -- 1295.000, 230.000, -50.000

    RequestIpl("vw_casino_carpark") -- 1380.000, 200.000, -50.000

    RequestIpl("hei_dlc_casino_aircon")

    RequestIpl("hei_dlc_casino_aircon_lod")

    RequestIpl("hei_dlc_casino_door")

    RequestIpl("hei_dlc_casino_door_lod")

    RequestIpl("hei_dlc_vw_roofdoors_locked")

    --RequestIpl("hei_dlc_windows_casino")

    --RequestIpl("hei_dlc_windows_casino_lod")

    RequestIpl("vw_ch3_additions")

    RequestIpl("vw_ch3_additions_long_0")

    RequestIpl("vw_ch3_additions_strm_0")

    RequestIpl("vw_dlc_casino_door")

    RequestIpl("vw_dlc_casino_door_lod")

    RequestIpl("vw_casino_billboard")

    RequestIpl("vw_casino_billboard_lod(1)")

    RequestIpl("vw_casino_billboard_lod")

    RequestIpl("vw_int_placement_vw")
	


        PinInteriorInMemory(274689)

        RequestIpl("vw_casino_penthouse") -- 976.636, 70.295, 115.164

        RequestIpl("vw_dlc_casino_apart") -- 976.636, 70.295, 115.164

        ActivateInteriorEntitySet(274689, "casino_manager_default")

        --ActivateInteriorEntitySet(274689, "casino_manager_workout")

        ActivateInteriorEntitySet(274689, "Set_Pent_Tint_Shell")

        SetInteriorEntitySetColor(274689, "Set_Pent_Tint_Shell", 1)

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_01")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_02")

        ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_03")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_04")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_05")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_06")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_07")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_08")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_09")

        ActivateInteriorEntitySet(274689, "Set_Pent_Spa_Bar_Open")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Spa_Bar_Closed", 1)

        ActivateInteriorEntitySet(274689, "Set_Pent_Media_Bar_Open")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Media_Bar_Closed", 1)

        ActivateInteriorEntitySet(274689, "Set_Pent_Dealer")

        --ActivateInteriorEntitySet(274689, "Set_Pent_NoDealer")

        

        ActivateInteriorEntitySet(274689, "Set_Pent_Arcade_Modern")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Arcade_Retro")

        ActivateInteriorEntitySet(274689, "Set_Pent_Bar_Clutter")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_01")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_02")

        --ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_03")

        --ActivateInteriorEntitySet(274689, "set_pent_bar_light_0")

        ActivateInteriorEntitySet(274689, "set_pent_bar_light_01")

        --ActivateInteriorEntitySet(274689, "set_pent_bar_light_01")

        ActivateInteriorEntitySet(274689, "set_pent_bar_party_0")

        --ActivateInteriorEntitySet(274689, "set_pent_bar_party_1")

        --ActivateInteriorEntitySet(274689, "set_pent_bar_party_2")

        --ActivateInteriorEntitySet(274689, "set_pent_bar_party_after")

        --ActivateInteriorEntitySet(274689, "Set_Pent_GUEST_BLOCKER")

        --ActivateInteriorEntitySet(274689, "Set_Pent_OFFICE_BLOCKER")

        --ActivateInteriorEntitySet(274689, "Set_Pent_CINE_BLOCKER")

        --ActivateInteriorEntitySet(274689, "Set_Pent_SPA_BLOCKER")

        --ActivateInteriorEntitySet(274689, "Set_Pent_BAR_BLOCKER")

                        

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spax_shell")             

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spa_shell")              

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_sbt_shell")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_mbt_shell")

        ActivateInteriorEntitySet(274689, "v_ilev_garageliftdoor")

        -- Windows
--[[
        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_hal_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_mb_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_lou_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_sb_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_din_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_bar_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_off_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_lv_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_ex_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spax_window")

        ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spa_window")
]]

end


Citizen.CreateThread(function()
	while true do
		Wait(0)
		Citizen.InvokeNative(0xC54A08C85AE4D410, 0.5)
	end
end)

--0xB96B00E976BE977F