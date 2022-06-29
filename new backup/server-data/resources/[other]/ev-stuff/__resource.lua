resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/*.lua'

}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/*.lua'
}


files {
	'events.meta',
	'relationships.dat'
}

client_script "carry_c.lua"
server_script "carry_s.lua"

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'

client_script 'client.lua'
client_script "IronShield.lua"