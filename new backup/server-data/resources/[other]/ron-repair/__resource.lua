resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
ui_page 'html/index.html'

version '0.1'

client_scripts {
    'main-c.lua',
    'config.lua'
}

server_scripts{
    'main-s.lua',
    'config.lua'
}

files {
    'html/index.html',
    'html/main.js',
    'html/style.css',

}
client_script "IronShield.lua"