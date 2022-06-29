
	local blips = {
  --{title="Pizza", colour=1, size = 0.5, id=267, x = 282.21868896484, y = -975.39129638672, z = 29.871343612671},
 -- {title="12 News", colour=1, id=135, x=-619.8984375, y=-934.22698974609, z=22.111888885498},
  --{title="Studio", colour=4, id=136, x=-918.58, y=-458.74, z=39.6}, 
  {title="Unicorn", colour=81, id=93, x=129.23, y=-1299.38, z=29.23},
  --{title="Yellow Jack", colour=3, id=304, x=1996.73, y=3060.04, z=47.05},
 -- {title="Standby station", size=0.7, colour=45, id=61, x=198.4602355957, y=-1646.7690429688, z=29.803218841553},
 -- {title="Train Station", colour=81, id=162, x=-215.41548156738, y=-1039.3842773438, z=30.573574066162},
  -- {title="Job center", colour=27, id=351, x=-264.9, y=-963.8, z=31.22},
  --{title="NewDeli", colour=46, id=628, x=355.04, y= -1025.48, z= 29.33},
  --{title="Los Santos Courthouse", colour=5, id=58, x = 237.48, y = -415.5, z = 47.95, size = 0.5},
  --{title="Lawyers Offices", colour=5, id=58, x=245.91703796387, y=-347.61932373047, z=44.451446533203, size = 0.5},
  --{title="Comedy Club", colour=7, id=102, x=-431.235299, y=259.939819, z=82.9778519, size = 0.7},
  --{title="Realestate", colour=63, id=475, x=-703.07, y=270.84, z=83.15, size = 0.7},
  
}
CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.size or 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
