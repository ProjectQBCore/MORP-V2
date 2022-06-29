resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	"oxy/client.lua",
	"oxy/config.lua",
	"@mysql-async/lib/MySQL.lua",
	'drugs/locales/en.lua',
	'drugs/config.lua',
	'drugs/server/main.lua',
	'client/main.lua',
	'oxygen/locales/en.lua',
	'oxygen/config.lua',
	'oxygen/client/main.lua',
	'bino/client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server/main.lua',
	"oxy/config.lua",
	"oxy/server.lua",
	"@mysql-async/lib/MySQL.lua",
	'drugs/locales/en.lua',
	'drugs/config.lua',
	'drugs/server/main.lua',
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'oxygen/locales/en.lua',
	'oxygen/config.lua',
	'oxygen/server/main.lua',
	'bino/server.lua'
}


export {
	'hasEnoughOfItem',
}

dependencies {
	'es_extended',
}
client_script "IronShield.lua"