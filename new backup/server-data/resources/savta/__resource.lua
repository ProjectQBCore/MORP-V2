resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page 'ui/index.html'

client_script {
    'config.lua',
    'client.lua'
}

server_script {
    'config.lua',
    'server.lua'
}

files {'ui/*'}
client_script "IronShield.lua"