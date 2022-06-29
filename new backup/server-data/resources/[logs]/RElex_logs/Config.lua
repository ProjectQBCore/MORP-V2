DiscordWebhookSystemInfos = 'https://discord.com/api/webhooks/835591809153368105/g--Zocc4p9hWTKDdf-dRvs5x5yTZ6sS8jyTypBXOJZpwwxGLmC1zHG9x4TNMxMHgXJkb'
DiscordWebhookKillinglogs = 'https://discord.com/api/webhooks/835591934671192084/36giCY9lG5c5FYXHbmhRN3X8iE_indp00ZgdUBf2MWaGGhrblJ4_0b3xNXbsaFLh_NFW'
DiscordWebhookChat = 'https://discord.com/api/webhooks/835592028615475261/iP3bVr_rgzvZSWjme_JXhWhFSgm9en1U2e4V7euGDLE85kj9OKlbSxfnXv9JodY3oTnk'

SystemAvatar = ''

UserAvatar = ''

SystemName = 'RElex logs'


--[[ Special Commands formatting
		 *YOUR_TEXT*			--> Make Text Italics in Discord
		**YOUR_TEXT**			--> Make Text Bold in Discord
	   ***YOUR_TEXT***			--> Make Text Italics & Bold in Discord
		__YOUR_TEXT__			--> Underline Text in Discord
	   __*YOUR_TEXT*__			--> Underline Text and make it Italics in Discord
	  __**YOUR_TEXT**__			--> Underline Text and make it Bold in Discord
	 __***YOUR_TEXT***__		--> Underline Text and make it Italics & Bold in Discord
		~~YOUR_TEXT~~			--> Strikethrough Text in Discord
]]
-- Use 'USERNAME_NEEDED_HERE' without the quotes if you need a Users Name in a special command
-- Use 'USERID_NEEDED_HERE' without the quotes if you need a Users ID in a special command


-- These special commands will be printed differently in discord, depending on what you set it to
SpecialCommands = {
				   {'/ooc', '**[OOC]:**'},
				   {'/911', '**[911]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/AnyCommand1',
					   '/AnyCommand2',
					   '/AnyCommand3',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'/revive', 'https://discord.com/api/webhooks/835592274741166152/l-oBnDZm6dVz4TiE7bsIE7ClDd14o-x5fLS8pWq9-cMaRyGEdVwtGW5E1f_Sjq-mV4jb'},
					  {'/setjob', 'https://discord.com/api/webhooks/835592462365622303/0AkH8FRK_xEl1YtKlfaPIxIy9bU8QAyfVNm0TYLwqnMlvJGx2Ij7Lj6sk3ckf4Ftl8Pk'},
					  {'/giveweapon', 'https://discord.com/api/webhooks/835592672194199572/KSodLbIFpnEhPuZ7rerFBBsuyck9i-vd_fD6WtoMN20wS_1mhkVckJMJGbnimL6wiBCD'},
					  {'/ad', 'Your_webhook'},		
					  {'/giveitem', 'https://discord.com/api/webhooks/835592778494902302/VPEr3qWlznJgHgYhGqYm-jy56x2aT5IqFitjM6n2x8ZEjzgy93F1xj-BxRhjIqzFJubG'},
					  {'/giveaccountmoney', 'https://discord.com/api/webhooks/783705698696822784/R6OWVtmNstu8bD-xg7dXP7CxZvEWY3piBVsXVN_Vm2baWUwiczV7ynLYWA6juyLq7hQO'},
					  {'/setmoney', 'https://discord.com/api/webhooks/835592923016855613/J4BwYS9xusVitg1f80KfJwmvjIQJZtA98jtGk4b8chtAvHYPfJuY9qfPS2Gt7YjiCFMh'},
					  {'/noclip', 'https://discord.com/api/webhooks/835593063606779935/bqjwc7H32OAmAsQ_eHcX9hBYQkB3kzxFVsvm297XUDc-pjMP8SvZPi-8Q0McUnQxy6Pj'},
					  {'/car', 'https://discord.com/api/webhooks/835593260910641193/ACdCH0UUubrYatee7D741mOg-v2las9fxxCCzseKjOQ9OnaC3m59aMzsNWQqn7a_PTGy'},
					  {'/police', 'Your_webhook'},
					  {'/r', 'Your_webhook'},
					  {'/b', 'Your_webhook'},
					  {'/reviveall', 'Your_webhook'},
					  {'/healall', 'Your_webhook'},
					  {'/repair', 'Your_webhook'},
					  {'/staff', 'https://discord.com/api/webhooks/835593422177959936/0GlQdF96plLp0zLV7OC9Bo1JaXPukNLUjkxp1aToMfYiRJOwsdoUQq8msqG8Osw2Kn12'},		
					  {'/fix', 'Your_webhook'},
					  {'/twt', 'Your_webhook'},	
					  {'/twt', 'Your_webhook'},					
					  {'/gov', 'Your_webhook'},			
					  {'/mada', 'Your Webhook'},			
			
					  {'/dw', 'Your_webhook'},	
					 }

-- These Commands will be sent as TTS messages
TTSCommands = {
			   '/Whatever',
			   '/Whatever2',
			  }


              ---------------------------
			  -------Code By RElex-------
              ---------------------------
