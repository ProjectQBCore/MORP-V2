-- Discord Ice Heart#1826
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependency 'es_extended'

ui_page "html/ui.html"

files {
  "html/ui.html",
  "html/js/index.js",
  "html/css/style.css"
}

client_script {
  '@es_extended/locale.lua',
  'config.lua',
  'client.lua'
}

server_script {
  '@es_extended/locale.lua',
  'config.lua',
  'server.lua'
}
