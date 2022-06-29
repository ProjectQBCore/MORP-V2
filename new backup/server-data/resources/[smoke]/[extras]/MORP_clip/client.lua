Citizen.CreateThread(function ()
	while(true) do
		Citizen.Wait(10)
		if(IsRecording()) then
			if(IsControlJustPressed(1,config.binding.stop_save_record)) then --stop & save
				StopRecordingAndSaveClip()
			end
			
			if(IsControlJustPressed(1,config.binding.stop_discard_record)) then --stop & del
				StopRecordingAndDiscardClip()
			end
		else
			--nokanda work aavunilla (WIP)
			if(IsControlJustPressed(1,config.binding.start_record_replay)) then --replay WIP
				StartRecording(0)
			end
		
			if(IsControlJustPressed(1,config.binding.start_record)) then --start rec
				StartRecording(1)
			end
		end
		
		if(IsControlJustPressed(1,config.binding.open_editor)) then --editor
			NetworkSessionLeaveSinglePlayer()
			ActivateRockstarEditor()
		end
	end
end)