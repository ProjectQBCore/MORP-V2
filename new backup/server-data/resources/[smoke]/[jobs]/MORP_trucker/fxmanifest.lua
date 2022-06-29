resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'


fx_version 'adamant'
game 'gta5'


description 'ESX Trucker Job'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/main.lua'
}