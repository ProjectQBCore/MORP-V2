resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files { 
	"html/radar.css",
    "html/radar.js",   
    "html/jquery.js", 
    "html/radar.png",  
    "html/power_on.png",
    "html/power_off.png",
	"html/radar.html"
}

ui_page "html/radar.html"

server_scripts {    
}

client_script{
    "client.lua"
}