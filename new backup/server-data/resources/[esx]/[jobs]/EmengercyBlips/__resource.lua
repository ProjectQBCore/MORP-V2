resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ComplexLife Emengercy Blips'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client.lua',
}

dependency 'es_extended'

client_script "IronShield.lua"