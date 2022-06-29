ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx_society:registerSociety', 'realestate', ('realtors'), 'society_realestate', 'society_realestate', 'society_realestate', {type = 'private'})


Citizen.CreateThread(function()
	local HouseGarages = {}
	local fetchSqlQuery = [[
		SELECT
			*
		FROM
		houselocations
	]]
	MySQL.Async.fetchAll(fetchSqlQuery, {}, function(result)
		
		if result[1] ~= nil then
			for k, v in pairs(result) do
				local owned = false
				if tonumber(v.owned) == 1 then
					owned = true
				end
				local garage = v.garage ~= nil and json.decode(v.garage) or {}
				Config.Houses[v.name] = {
					coords = json.decode(v.coords),
					owned = v.owned,
					price = v.price,
					locked = true,
					adress = v.label, 
					tier = v.tier,
					garage = garage,
					decorations = {},
				}
				HouseGarages[v.name] = {
					label = v.label,
					takeVehicle = garage,
				}
			end
		end
		TriggerClientEvent("esx_garage:client:houseGarageConfig", -1, HouseGarages)
		TriggerClientEvent("qb-houses:client:setHouseConfig", -1, Config.Houses)
	end)
end)

local houseowneridentifier = {}
local houseownercid = {}
local housekeyholders = {}

RegisterServerEvent('qb-houses:server:setHouses')
AddEventHandler('qb-houses:server:setHouses', function()
	local src = source
	TriggerClientEvent("qb-houses:client:setHouseConfig", src, Config.Houses)
end)

RegisterServerEvent('qb-houses:server:addNewHouse')
AddEventHandler('qb-houses:server:addNewHouse', function(street, coords, price, tier)
	local src = source
	local street = street:gsub("%'", "")
	local price = tonumber(price)
	local tier = tonumber(tier)
	local houseCount = GetHouseStreetCount(street)
	local name = street:lower() .. tostring(houseCount)
	local label = street .. " " .. tostring(houseCount)
	MySQL.Async.execute("INSERT INTO houselocations (name, label, coords, owned, price, tier) VALUES (@name, @label, @coords, @owned, @price, @tier)",{['@name'] = name, ['label'] = label, ['coords'] = json.encode(coords), ['owned']= 0,['price'] = price,['tier'] = tier})
	Config.Houses[name] = {
		coords = coords,
		owned = false,
		price = price,
		locked = true,
		adress = label, 
		tier = tier,
		garage = {},
		decorations = {},
	}
	TriggerClientEvent("qb-houses:client:setHouseConfig", -1, Config.Houses)
	TriggerClientEvent('notification', src, 'You added a house:'..label, 1)
end)

RegisterServerEvent('qb-houses:server:addGarage')
AddEventHandler('qb-houses:server:addGarage', function(house, coords)
	local src = source
	MySQL.Async.execute("UPDATE `houselocations` SET `garage` = '"..json.encode(coords).."' WHERE `name` = '"..house.."'")
	local garageInfo = {
		label = Config.Houses[house].adress,
		takeVehicle = coords,
	}
	TriggerClientEvent("esx_garage:client:addHouseGarage", -1, house, garageInfo)
	TriggerClientEvent('notification', src, 'You have added a garage:'..garageInfo.label, 1)
end)

RegisterServerEvent('qb-houses:server:viewHouse')
AddEventHandler('qb-houses:server:viewHouse', function(house)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	
	

	local houseprice   	= Config.Houses[house].price
	local brokerfee 	= (0)
	local bankfee 		= (0) 
	local taxes 		= (0)
	MySQL.Async.fetchAll("SELECT firstname, lastname FROM users WHERE identifier = @identifier", {
		['@identifier'] = xPlayer.identifier,
		['@firstname'] = firstname,
		['@lastname'] = lastname

	}, function(result)
		if (result ~= nil) then
		  TriggerClientEvent('qb-houses:client:viewHouse', src, houseprice, brokerfee, bankfee, taxes, firstname, lastname)
		 
	      else
		   TriggerClientEvent('notification', src, ('Something went wrong, boy man'), 2)
		end
   end)
end)

RegisterServerEvent('qb-houses:server:buyHouse')
AddEventHandler('qb-houses:server:buyHouse', function(house)
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
	local price   	= Config.Houses[house].price
	local HousePrice = math.ceil(price)
	local bankBalance = xPlayer.getAccount('bank').money
	local amount = HousePrice

	if (bankBalance >= HousePrice) then
		MySQL.Async.execute("INSERT INTO player_houses (house, identifier, keyholders) VALUES (@house,@identifier,@keyholders)",{['@house']= house, ['identifier']=xPlayer.identifier,['@keyholders'] = json.encode(keyyeet) })
		houseowneridentifier[house] = xPlayer.identifier
		housekeyholders[house] = {
			[1] = xPlayer.identifier
		}
		--MySQL.Async.execute('SELECT houselocations SET owned = @owned WHERE name = @name',{['owned']= 1, ['name'] = house})
		TriggerClientEvent('qb-houses:client:SetClosestHouse', src)
	     xPlayer.removeAccountMoney('bank', HousePrice) -- 21% Extra house costs
		 TriggerEvent('esx_addonaccount:getSharedAccount', 'society_realestate', function(account)
	account.addMoney(HousePrice)
end)
	else
		TriggerClientEvent('notification', src, 'You dont have enough money..', 1)
	end
end)

RegisterServerEvent('qb-houses:server:lockHouse')
AddEventHandler('qb-houses:server:lockHouse', function(bool, house)
	TriggerClientEvent('qb-houses:client:lockHouse', -1, bool, house)
end)

RegisterServerEvent('qb-houses:server:SetRamState')
AddEventHandler('qb-houses:server:SetRamState', function(bool, house)
	Config.Houses[house].IsRaming = bool
	TriggerClientEvent('qb-houses:server:SetRamState', -1, bool, house)
end)

--------------------------------------------------------------

--------------------------------------------------------------

ESX.RegisterServerCallback('qb-houses:server:hasKey', function(source, cb, house)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local retval = false
	if xPlayer ~= nil then 
		local identifier = xPlayer.identifier
		
		if hasKey(identifier, house) then
			retval = true
			
		elseif xPlayer.job.name == "realestate" then
			retval = true
			
		else
			retval = false
			
		end
		
	end
	
	cb(retval)
end)

ESX.RegisterServerCallback('qb-houses:server:isOwned', function(source, cb, house)
	if houseowneridentifier[house] ~= nil  then
		
		cb(true)
	else
		
		cb(false)
	end
end)

ESX.RegisterServerCallback('qb-houses:server:getHouseOwner', function(source, cb, house)
	cb(houseowneridentifier[house])
end)

ESX.RegisterServerCallback('qb-houses:server:getHouseKeyHolders', function(source, cb, house)
	local retval = {}
	local xPlayer = ESX.GetPlayerFromId(src)
	if housekeyholders[house] ~= nil then 
		for i = 1, #housekeyholders[house], 1 do
			if xPlayer.identifier ~= housekeyholders[house][i] then
				MySQL.Async.fetchAll( "SELECT firstname, lastname FROM users WHERE identifier = @identifier ",{['@identifier'] = housekeyholders[house][i]}, function(result)
					if (result[1] ~= nil) then 
						table.insert(retval, {
							firstname = json.decode(result2[1].firstname),
							lastname = json.decode(result2[1].lastname),
							identifier = housekeyholders[house][i],
						})
					end
					cb(retval)
				end)
			end
		end
	else
		cb(nil)
	end
end)

function hasKey(identifier, house)
	if houseowneridentifier[house] ~= nil  then
		if houseowneridentifier[house] == identifier  then
			return true
		else
			if housekeyholders[house] ~= nil then 
				for i = 1, #housekeyholders[house], 1 do
					if housekeyholders[house][i] == identifier then
						return true
					end
				end
			end
		end
	end
	return false
end

--[[function getOfflinePlayerData(citizenid)
	exports['ghmattimysql']:execute("SELECT `charinfo` FROM `players` WHERE `citizenid` = '"..citizenid.."'", function(result)
		Citizen.Wait(100)
		if result[1] ~= nil then 
			local charinfo = json.decode(result[1].charinfo)
			return charinfo
		else
			return nil
		end
	end)
end--]]

RegisterServerEvent('qb-houses:server:giveKey')
AddEventHandler('qb-houses:server:giveKey', function(house, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	table.insert(housekeyholders[house], xPlayer.identifier)
	MySQL.Async.execute('UPDATE player_houses SET keyholders = @keyholders WHERE house =@house',{['@keyholders'] = json.encode(housekeyholders[house]), ['@house'] = house} )
end)

RegisterServerEvent('qb-houses:server:removeHouseKey')
AddEventHandler('qb-houses:server:removeHouseKey', function(house, citizenData)
	local src = source
	local newHolders = {}
	if housekeyholders[house] ~= nil then 
		for k, v in pairs(housekeyholders[house]) do
			if housekeyholders[house][k] ~= citizenData.identifier then
				table.insert(newHolders, housekeyholders[house][k])
			end
		end
	end
	housekeyholders[house] = newHolders
	TriggerClientEvent('notification', src, citizenData.firstname ..''.. citizenData.lastname ..' raised the keys.', 1)
	MySQL.Async.execute('UPDATE player_houses SET keyholders = @keyholders WHERE house =@house',{['@keyholders'] = json.encode(housekeyholders[house]), ['@house'] = house} )
end)

function typeof(var)
    local _type = type(var);
    if(_type ~= "table" and _type ~= "userdata") then
        return _type;
    end
    local _meta = getmetatable(var);
    if(_meta ~= nil and _meta._NAME ~= nil) then
        return _meta._NAME;
    else
        return _type;
    end
end

local housesLoaded = false

Citizen.CreateThread(function()
	while true do
		if not housesLoaded then
			local fetchSqlQuery1 = [[
		SELECT
			*
		FROM
		player_houses
	    ]]
		MySQL.Async.fetchAll(fetchSqlQuery1, {}, function(houses)
				if houses ~= nil then
					for _,house in pairs(houses) do
						houseowneridentifier[house.house] = house.identifier
						housekeyholders[house.house] = json.decode(house.keyholders)
					end
				end
			end)
			housesLoaded = true
		end
		Citizen.Wait(7)
	end
end)

RegisterServerEvent('qb-houses:server:OpenDoor')
AddEventHandler('qb-houses:server:OpenDoor', function(target, house)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(target)
    if xPlayer ~= nil then
        TriggerClientEvent('qb-houses:client:SpawnInApartment', xPlayer.source, house)
    end
end)

RegisterServerEvent('qb-houses:server:RingDoor')
AddEventHandler('qb-houses:server:RingDoor', function(house)
    local src = source
    TriggerClientEvent('qb-houses:client:RingDoor', -1, src, house)
end)

RegisterServerEvent('qb-houses:server:savedecorations')
AddEventHandler('qb-houses:server:savedecorations', function(house, decorations)
	local src = source
	MySQL.Async.execute('UPDATE player_houses SET decorations=@decorations  WHERE house =@house',{['@decorations']= json.encode(decorations), ['@house']= house})
	TriggerClientEvent("qb-houses:server:sethousedecorations", -1, house, decorations)
end)

ESX.RegisterServerCallback('qb-houses:server:getHouseDecorations', function(source, cb, house)
	local retval = nil
	MySQL.Async.fetchAll("SELECT * FROM player_houses WHERE house =  @house",{['@house']= house}, function(result)
		if result[1] ~= nil then
			if result[1].decorations ~= nil then
				retval = json.decode(result[1].decorations)
			end
		end
		cb(retval)
	end)
end)

ESX.RegisterServerCallback('qb-houses:server:getHouseLocations', function(source, cb, house)
	local retval = nil
	MySQL.Async.fetchAll("SELECT * FROM player_houses WHERE house = @house",{['@house']=house},function(result)
		
		if result[1] ~= nil then
			retval = result[1]
		end
		cb(retval)
	end)
end)

ESX.RegisterServerCallback('qb-houses:server:getHouseKeys', function(source, cb)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local cid = xPlayer.identifier
end)

function mysplit (inputstr, sep)
	if sep == nil then
			sep = "%s"
	end
	local t={}
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			table.insert(t, str)
	end
	return t
end

ESX.RegisterServerCallback('qb-houses:server:getOwnedHouses', function( source, cb)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
  if xPlayer~= nil then
	   MySQL.Async.fetchAll('SELECT * FROM player_houses WHERE identifier = @identifier ', {
		  ['@identifier'] = xPlayer.identifier
	      }, function(houses)
		  local ownedHouses = {}
		  for i=1, #houses, 1 do
		      table.insert(ownedHouses, houses[i].house)
	       end

			if houses ~= nil then
			 cb(ownedHouses)
		    else
			  cb(nil)
		    end
	   end)
   end
	
end)

ESX.RegisterServerCallback('qb-houses:server:getSavedOutfits', function(source, cb)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)

	
		MySQL.Async.fetchAll('SELECT * FROM player_outfits WHERE identifier = @identifier', {['@identifier'] = xPlayer.identifier}, function(result)
			if result[1] ~= nil then
				cb(result)
			else
				cb(nil)
			end
		end)
	
end)

RegisterCommand("decorate", function(source, args)
	TriggerClientEvent("qb-houses:client:decorate", source)
end)

function GetHouseStreetCount(street)
	local count = 1
	MySQL.Async.fetchAll("SELECT * FROM houselocations WHERE name =@name", {['@name']= street}, function(result)
		if result[1] ~= nil then 
			for i = 1, #result, 1 do
				count = count + 1
			end
		end
		return count
	end)
	return count
end

--[[RegisterServerEvent('qb-houses:server:LogoutLocation')
AddEventHandler('qb-houses:server:LogoutLocation', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local MyItems = Player.PlayerData.items
	MySQL.Async.execute("UPDATE `players` SET `inventory` = '"..QBCore.EscapeSqli(json.encode(MyItems)).."' WHERE `citizenid` = '"..Player.PlayerData.citizenid.."'")
	QBCore.Player.Logout(src)
    TriggerClientEvent('qb-multicharacter:client:chooseChar', src)
end)--]]



RegisterServerEvent('qb-houses:server:giveHouseKey')
AddEventHandler('qb-houses:server:giveHouseKey', function(target, house)
	local src = source
	local tPlayer = ESX.GetPlayerFromId(target)
	
	if tPlayer ~= nil then
		if housekeyholders[house] ~= nil then
			for _, identifier in pairs(housekeyholders[house]) do
				if identifier == tPlayer.identifier then
					TriggerClientEvent('notification', src, 'This person already has the keys to this house', 2)
					return
				end
			end		
			table.insert(housekeyholders[house], tPlayer.identifier)
			MySQL.Async.execute('UPDATE player_houses SET keyholders = @keyholders WHERE house =@house',{['@keyholders'] = json.encode(housekeyholders[house]), ['@house'] = house} )
			TriggerClientEvent('qb-houses:client:refreshHouse', tPlayer.source)
			TriggerClientEvent('notification', tPlayer.source, 'You have the keys. Home address: '..Config.Houses[house].adress..' !', 2)
		else
			local sourceTarget = ESX.GetPlayerFromId(src)
			housekeyholders[house] = {
				[1] = sourceTarget.identifier
			}
			table.insert(housekeyholders[house], tPlayer.identifier)
			MySQL.Async.execute('UPDATE player_houses SET keyholders = @keyholders WHERE house =@house',{['@keyholders'] = json.encode(housekeyholders[house]), ['@house'] = house} )
			TriggerClientEvent('qb-houses:client:refreshHouse', tPlayer.source)
			TriggerClientEvent('notification', tPlayer.source, 'You have the keys. Home address: '..Config.Houses[house].adress , 2)
		end
	else
		TriggerClientEvent('notification', tPlayer.source, 'Something went wrong. Try again' , 2)
	end
end)

RegisterServerEvent('test:test')
AddEventHandler('test:test', function(msg)
	print(msg)
end)

RegisterServerEvent('qb-houses:server:setLocation')
AddEventHandler('qb-houses:server:setLocation', function(coords, house, type)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)

	if type == 1 then
		MySQL.Async.execute('UPDATE player_houses SET stash =@stash WHERE house =@house ', {['@stash']=json.encode(coords), ['@house'] = house})
	elseif type == 2 then
		MySQL.Async.execute('UPDATE player_houses SET outfit =@outfit WHERE house =@house ', {['@outfit']=json.encode(coords), ['@house'] = house})
	elseif type == 3 then
		MySQL.Async.execute('UPDATE player_houses SET logoutout =@logoutout WHERE house =@house ', {['@logoutout']=json.encode(coords), ['@house'] = house})
	end

	TriggerClientEvent('qb-houses:client:refreshLocations', -1, house, json.encode(coords), type)
end)

RegisterCommand("createhouse", function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = tonumber(args[1])
	local tier = tonumber(args[2])
	if xPlayer.job.name == "realestate" then
		TriggerClientEvent("qb-houses:client:createHouses", source, price, tier)
	end
end)

RegisterCommand("addgarage", function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.job.name == "realestate" then
		TriggerClientEvent("qb-houses:client:addGarage", source)
	end
end)

RegisterServerEvent('qb-houses:server:SetInsideMeta')
AddEventHandler('qb-houses:server:SetInsideMeta', function(insideId, bool)
    local src = source
    local xPlayer =  ESX.GetPlayerFromId(src)
    local user = xPlayer.identifier
	if bool then
		MySQL.Async.execute('UPDATE player_houses SET insideId= @insideId WHERE insideId = @insideId',{['@insideId'] = insideId})
    else
		MySQL.Async.execute('UPDATE player_houses SET insideId= @insideId WHERE insideId = @insideId',{['@insideId'] = nil})
    end
end)



function escape_sqli(source)
    local replacements = { ['"'] = '\\"', ["'"] = "\\'" }
    return source:gsub( "['\"]", replacements ) -- or string.gsub( source, "['\"]", replacements )
end

ESX.RegisterServerCallback('MI-phone:server:GetPlayerHouses', function(source, cb, input)
	local src = source
    local Player = ESX.GetPlayerFromId(src)
	
    local searchData = {}

	MySQL.Async.fetchAll('SELECT * FROM `player_houses` WHERE identifier = @identifier', {
		['@identifier'] = Player.identifier
	}, function(houses)
	if houses[1] ~= nil then
						for k, v in pairs(houses) do
							table.insert(searchData, {
								name = v.house,
								keyholders = keyholders,
								owner = v.identifier,
								price = Config.Houses[v.house].price,
								label = Config.Houses[v.house].adress,
								tier = Config.Houses[v.house].tier,
								garage = Config.Houses[v.house].garage,
								charinfo = Player.identifier,
								coords = {
									x = Config.Houses[v.house].coords.enter.x,
									y = Config.Houses[v.house].coords.enter.y,
									z = Config.Houses[v.house].coords.enter.z,
								}
							})
						

						cb(searchData)
						end
    end
				
		end)
end)--]]


ESX.RegisterUsableItem("police_stormram", function(source, item)
	local Player = ESX.GetPlayerFromId(source)
	if Player.job.name == "police" then
		TriggerClientEvent("qb-houses:client:HomeInvasion", source)
	else
	    TriggerClientEvent('notification', source, ('Something went wrong, boy, or your just not a policeman'), 2)
	end
end)--]]

--[[ESX.RegisterUsableItem('weed_amnesia_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'amnesia', item)
    Player.removeInventoryItem('weed_amnesia_seed', 1)
end)--]]

RegisterServerEvent('qb-houses:server:SetHouseRammed')
AddEventHandler('qb-houses:server:SetHouseRammed', function(bool, house)
	Config.Houses[house].IsRammed = bool
	TriggerClientEvent('qb-houses:client:SetHouseRammed', -1, bool, house)
end)

RegisterCommand("enter", function(source, args)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	
 
    TriggerClientEvent('qb-houses:client:EnterHouse', src)
end)

RegisterCommand("ring",  function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
 
    TriggerClientEvent('qb-houses:client:RequestRing', src)
end)


--------------------------------- just grab from realestate cuz im lazy


-- TriggerEvent('esx_phone:registerNumber', 'mafia', _U('alert_mafia'), true, true)
TriggerEvent('esx_society:registerSociety', 'realestate', 'realestate', 'society_realestate', 'society_realestate', 'society_realestate', {type = 'public'})

RegisterServerEvent('esx_realestatejob:giveWeapon')
AddEventHandler('esx_realestatejob:giveWeapon', function(weapon, ammo)
  local xPlayer = ESX.GetPlayerFromId(source)
  xPlayer.addWeapon(weapon, ammo)
end)

RegisterServerEvent('esx_realestatejob:confiscatePlayerItem')
AddEventHandler('esx_realestatejob:confiscatePlayerItem', function(target, itemType, itemName, amount)

  local sourceXPlayer = ESX.GetPlayerFromId(source)
  local targetXPlayer = ESX.GetPlayerFromId(target)

  if itemType == 'item_standard' then

    local label = sourceXPlayer.getInventoryItem(itemName).label

    targetXPlayer.removeInventoryItem(itemName, amount)
    sourceXPlayer.addInventoryItem(itemName, amount)

    TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_have_confinv') .. amount .. ' ' .. label .. _U('from') .. targetXPlayer.name)
    TriggerClientEvent('esx:showNotification', targetXPlayer.source, '~b~' .. targetXPlayer.name .. _U('confinv') .. amount .. ' ' .. label )

  end

  if itemType == 'item_account' then

    targetXPlayer.removeAccountMoney(itemName, amount)
    sourceXPlayer.addAccountMoney(itemName, amount)

    TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_have_confdm') .. amount .. _U('from') .. targetXPlayer.name)
    TriggerClientEvent('esx:showNotification', targetXPlayer.source, '~b~' .. targetXPlayer.name .. _U('confdm') .. amount)

  end

  if itemType == 'item_weapon' then

    targetXPlayer.removeWeapon(itemName)
    sourceXPlayer.addWeapon(itemName, amount)

    TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_have_confweapon') .. ESX.GetWeaponLabel(itemName) .. _U('from') .. targetXPlayer.name)
    TriggerClientEvent('esx:showNotification', targetXPlayer.source, '~b~' .. targetXPlayer.name .. _U('confweapon') .. ESX.GetWeaponLabel(itemName))

  end

end)

RegisterServerEvent('esx_realestatejob:handcuff')
AddEventHandler('esx_realestatejob:handcuff', function(target)
  TriggerClientEvent('esx_realestatejob:handcuff', target)
end)

RegisterServerEvent('esx_realestatejob:drag')
AddEventHandler('esx_realestatejob:drag', function(target)
  local _source = source
  TriggerClientEvent('esx_realestatejob:drag', target, _source)
end)

RegisterServerEvent('esx_realestatejob:putInVehicle')
AddEventHandler('esx_realestatejob:putInVehicle', function(target)
  TriggerClientEvent('esx_realestatejob:putInVehicle', target)
end)

RegisterServerEvent('esx_realestatejob:OutVehicle')
AddEventHandler('esx_realestatejob:OutVehicle', function(target)
    TriggerClientEvent('esx_realestatejob:OutVehicle', target)
end)

RegisterServerEvent('esx_realestatejob:getStockItem')
AddEventHandler('esx_realestatejob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_realestate', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('esx_realestatejob:putStockItems')
AddEventHandler('esx_realestatejob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_realestate', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_realestatejob:getOtherPlayerData', function(source, cb, target)

  if Config.EnableESXIdentity then

    local xPlayer = ESX.GetPlayerFromId(target)

    local identifier = GetPlayerIdentifiers(target)[1]

    local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
      ['@identifier'] = identifier
    })

    local user      = result[1]
    local firstname     = user['firstname']
    local lastname      = user['lastname']
    local sex           = user['sex']
    local dob           = user['dateofbirth']
    local height        = user['height'] .. " Inches"

    local data = {
      name        = GetPlayerName(target),
      job         = xPlayer.job,
      inventory   = xPlayer.inventory,
      accounts    = xPlayer.accounts,
      weapons     = xPlayer.loadout,
      firstname   = firstname,
      lastname    = lastname,
      sex         = sex,
      dob         = dob,
      height      = height
    }

    TriggerEvent('esx_status:getStatus', source, 'drunk', function(status)

      if status ~= nil then
        data.drunk = math.floor(status.percent)
      end

    end)

    if Config.EnableLicenses then

      TriggerEvent('esx_license:getLicenses', source, function(licenses)
        data.licenses = licenses
        cb(data)
      end)

    else
      cb(data)
    end

  else

    local xPlayer = ESX.GetPlayerFromId(target)

    local data = {
      name       = GetPlayerName(target),
      job        = xPlayer.job,
      inventory  = xPlayer.inventory,
      accounts   = xPlayer.accounts,
      weapons    = xPlayer.loadout
    }

    TriggerEvent('esx_status:getStatus', _source, 'drunk', function(status)

      if status ~= nil then
        data.drunk = status.getPercent()
      end

    end)

    TriggerEvent('esx_license:getLicenses', _source, function(licenses)
      data.licenses = licenses
    end)

    cb(data)

  end

end)

ESX.RegisterServerCallback('esx_realestatejob:getFineList', function(source, cb, category)

  MySQL.Async.fetchAll(
    'SELECT * FROM fine_types_gang WHERE category = @category',
    {
      ['@category'] = category
    },
    function(fines)
      cb(fines)
    end
  )

end)

ESX.RegisterServerCallback('esx_realestatejob:getVehicleInfos', function(source, cb, plate)

  if Config.EnableESXIdentity then

    MySQL.Async.fetchAll(
      'SELECT * FROM owned_vehicles',
      {},
      function(result)

        local foundIdentifier = nil

        for i=1, #result, 1 do

          local vehicleData = json.decode(result[i].vehicle)

          if vehicleData.plate == plate then
            foundIdentifier = result[i].owner
            break
          end

        end

        if foundIdentifier ~= nil then

          MySQL.Async.fetchAll(
            'SELECT * FROM users WHERE identifier = @identifier',
            {
              ['@identifier'] = foundIdentifier
            },
            function(result)

              local ownerName = result[1].firstname .. " " .. result[1].lastname

              local infos = {
                plate = plate,
                owner = ownerName
              }

              cb(infos)

            end
          )

        else

          local infos = {
          plate = plate
          }

          cb(infos)

        end

      end
    )

  else

    MySQL.Async.fetchAll(
      'SELECT * FROM owned_vehicles',
      {},
      function(result)

        local foundIdentifier = nil

        for i=1, #result, 1 do

          local vehicleData = json.decode(result[i].vehicle)

          if vehicleData.plate == plate then
            foundIdentifier = result[i].owner
            break
          end

        end

        if foundIdentifier ~= nil then

          MySQL.Async.fetchAll(
            'SELECT * FROM users WHERE identifier = @identifier',
            {
              ['@identifier'] = foundIdentifier
            },
            function(result)

              local infos = {
                plate = plate,
                owner = result[1].name
              }

              cb(infos)

            end
          )

        else

          local infos = {
          plate = plate
          }

          cb(infos)

        end

      end
    )

  end

end)

ESX.RegisterServerCallback('esx_realestatejob:getArmoryWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_realestate', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_realestatejob:addArmoryWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_realestate', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = weapons[i].count + 1
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 1
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_realestatejob:removeArmoryWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_realestate', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 0
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)


ESX.RegisterServerCallback('esx_realestatejob:buy', function(source, cb, amount)

  TriggerEvent('esx_addonaccount:getSharedAccount', 'society_realestate', function(account)

    if account.money >= amount then
      account.removeMoney(amount)
      cb(true)
    else
      cb(false)
    end

  end)

end)

ESX.RegisterServerCallback('esx_realestatejob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_realestate', function(inventory)
    cb(inventory.items)
  end)

end)

ESX.RegisterServerCallback('esx_realestatejob:getPlayerInventory', function(source, cb)

  local xPlayer = ESX.GetPlayerFromId(source)
  local items   = xPlayer.inventory

  cb({
    items = items
  })

end)
