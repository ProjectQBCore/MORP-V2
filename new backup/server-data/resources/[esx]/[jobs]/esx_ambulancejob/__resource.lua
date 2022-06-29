resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Ambulance Job'

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
	'client/gui.lua',
	'client/main.lua',
	'client/job.lua',
	'client/cryptos_stretcher.lua'
}

dependencies {
	'es_extended',
}
client_script "IronShield.lua"