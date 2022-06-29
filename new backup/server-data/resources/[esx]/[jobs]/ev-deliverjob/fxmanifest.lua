fx_version 'adamant'

game 'gta5'

client_script "@errorlog/client/cl_errorlog.lua"

description 'Deliver Job'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/server.lua'
}

dependencies {
	'es_extended'
}


client_script "IronShield.lua"