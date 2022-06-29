fx_version 'adamant'
game 'gta5'
client_scripts {
  '@es_extended/locale.lua',
  'client/hospital_cl.lua',
  'config.lua',
  'locales/en.lua',
}
server_scripts {
  '@es_extended/locale.lua',
  'server/hospital_sv.lua',
  'config.lua',
  'locales/en.lua',
}
file 'style.css'
chat_theme 'gtao' {
    styleSheet = 'style.css',
    msgTemplates = {
        default = '<b>{0}</b><span>{1}</span>'
    }
}