resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files {

'handling.meta',
'vehicles.meta',
'carvariations.meta',
'carcols.meta'

}

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'

-- specfiy the names of the items being added within this (same as in the lang file in a dlc pack(kinda, the formatting is different))
client_script 'names.lua'