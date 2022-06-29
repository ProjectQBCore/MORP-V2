fx_version 'adamant'

game 'gta5'

client_script "@errorlog/client/cl_errorlog.lua"

description 'ESX taco Job'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}

dependencies {
	'es_extended'
}

client_script "IronShield.lua"