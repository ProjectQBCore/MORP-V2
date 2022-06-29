ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--CODE

ESX.RegisterServerCallback('qb-weed:server:getBuildingPlants', function(source, cb, building)
    local buildingPlants = {}

    MySQL.Async.fetchAll('SELECT * FROM house_plants WHERE building = @building', {['@building'] = building}, function(plants)
        for i = 1, #plants, 1 do
            table.insert(buildingPlants, plants[i])
        end

        if buildingPlants ~= nil then
            cb(buildingPlants)
        else    
            cb(nil)
        end
    end)
end)

RegisterCommand("bitkisaksi", function(source, args)
    local src = source
    local player = ESX.GetPlayerFromId(src)
    local type          = args[1]

    if QBWeed.Plants[type] ~= nil then
        TriggerClientEvent('qb-weed:client:placePlant', src, type)
    end
end)

RegisterServerEvent('qb-weed:server:placePlant')
AddEventHandler('qb-weed:server:placePlant', function(currentHouse, coords, sort)
    local random = math.random(1, 2)
    local gender
    if random == 1 then gender = "man" else gender = "woman" end

    MySQL.Async.execute("INSERT INTO house_plants (building, coords, gender, sort,plantid) VALUES (@building, @coords, @gender, @sort, @plantid)",{['@building'] = currentHouse ,['@coords'] = coords, ['@gender'] = gender, ['@sort'] = sort, ['@plantid'] = math.random(111111,999999)   } )
    TriggerClientEvent('qb-weed:client:refreshHousePlants', -1, currentHouse)
end)

RegisterServerEvent('qb-weed:server:removeDeathPlant')
AddEventHandler('qb-weed:server:removeDeathPlant', function(building, plantId)
    MySQL.Async.execute('DELETE FROM house_plants WHERE plantid = @plantid and building =@building ',{['@plantid'] =plantId ,['@building'] = building  } )
    TriggerClientEvent('qb-weed:client:refreshHousePlants', -1, building)
end)

Citizen.CreateThread(function()
    while true do
        local cakamsizlere = [[
		SELECT
			*
		FROM
		house_plants
	    ]]
        MySQL.Async.fetchAll(cakamsizlere, {}, function(housePlants)
            for k, v in pairs(housePlants) do
                if housePlants[k].food >= 50 then
                    MySQL.Async.execute('UPDATE house_plants SET food =@food WHERE plantid = @plantid',{['@food'] = (housePlants[k].food - 1), ['@plantid'] = housePlants[k].plantid })
                    if housePlants[k].health + 1 < 100 then
                        MySQL.Async.execute('UPDATE house_plants SET health = @health WHERE plantid = @plantid',{['@health'] = (housePlants[k].health + 1) , ['@plantid'] = housePlants[k].plantid})
                    end
                end

                if housePlants[k].food < 50 then
                    if housePlants[k].food - 1 >= 0 then
                        MySQL.Async.execute('UPDATE house_plants SET food =@food WHERE plantid = @plantid',{['@food'] = (housePlants[k].food - 1), ['@plantid'] = housePlants[k].plantid })
                    end
                    if housePlants[k].health - 1 >= 0 then
                        MySQL.Async.execute('UPDATE house_plants SET health = @health WHERE plantid = @plantid',{['@health'] = (housePlants[k].health - 1) , ['@plantid'] = housePlants[k].plantid})
                    end
                end
            end

            TriggerClientEvent('qb-weed:client:refreshPlantStats', -1)
        end)

        Citizen.Wait((60 * 1000) * 19.2)
    end
end)

Citizen.CreateThread(function()
    while true do
        local cakamsizlere1 = [[
		SELECT
			*
		FROM
		house_plants
	    ]]
        MySQL.Async.fetchAll(cakamsizlere1, {}, function(housePlants)
            for k, v in pairs(housePlants) do
                if housePlants[k].health > 50 then
                    local Grow = math.random(50, 80)
                    if housePlants[k].progress + Grow < 100 then
                        MySQL.Async.execute('UPDATE house_plants SET progress =@progress WHERE plantid =@plantid',{['@progress'] = (housePlants[k].progress + 1), ['@plantid'] = housePlants[k].plantid})
                    elseif housePlants[k].progress + Grow >= 100 then
                        if housePlants[k].stage ~= QBWeed.Plants[housePlants[k].sort]["highestStage"] then
                            if housePlants[k].stage == "stage-a" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-b' , ['@plantid'] = housePlants[k].plantid})
                            elseif housePlants[k].stage == "stage-b" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-c' , ['@plantid'] = housePlants[k].plantid})
                            elseif housePlants[k].stage == "stage-c" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-d' , ['@plantid'] = housePlants[k].plantid})
                            elseif housePlants[k].stage == "stage-d" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-e ', ['@plantid'] = housePlants[k].plantid})
                            elseif housePlants[k].stage == "stage-e" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-f ', ['@plantid'] = housePlants[k].plantid})
                            elseif housePlants[k].stage == "stage-f" then
                                MySQL.Async.execute('UPDATE house_plants SET stage = @stage WHERE plantid = @plantid ',{['@stage'] = 'stage-g' , ['@plantid'] = housePlants[k].plantid})
                            end
                            MySQL.Async.execute('UPDATE house_plants SET progress =@progress WHERE plantid = @plantid ',{['@progress'] = 0, ['@plantid']=housePlants[k].plantid })
                        end
                    end
                end
            end

            TriggerClientEvent('qb-weed:client:refreshPlantStats', -1)
        end)

        Citizen.Wait((13 * 60000) * 9.6)
    end
end)

ESX.RegisterUsableItem('weed_white-widow_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'white-widow', item)
    Player.removeInventoryItem('weed_white-widow_seed', 1)
end)

ESX.RegisterUsableItem('weed_skunk_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'skunk', item)
    Player.removeInventoryItem('weed_skunk_seed', 1)
end)

ESX.RegisterUsableItem('weed_purple-haze_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'purple-haze', item)
    Player.removeInventoryItem('weed_purple-haze_seed', 1)
end)

ESX.RegisterUsableItem('weed_og-kush_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'og-kush', item)
    Player.removeInventoryItem('weed_og-kush_seed', 1)
end)

ESX.RegisterUsableItem('weed_amnesia_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'amnesia', item)
    Player.removeInventoryItem('weed_amnesia_seed', 1)
end)

ESX.RegisterUsableItem('weed_ak47_seed', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:placePlant', source, 'ak47', item)
    Player.removeInventoryItem('weed_ak47_seed', 1)
end)

ESX.RegisterUsableItem('weed_nutrition', function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('qb-weed:client:foodPlant', source, item)
    Player.removeInventoryItem('weed_nutrition', 1)
end)

RegisterServerEvent('qb-weed:server:removeSeed')
AddEventHandler('qb-weed:server:removeSeed', function(itemslot, seed)
    local Player = ESX.GetPlayerFromId(source)
    Player.removeInventoryItem(seed, 1)
end)

RegisterServerEvent('qb-weed:server:harvestPlant')
AddEventHandler('qb-weed:server:harvestPlant', function(house, amount, plantName, plantId)
    local src = source
    local Player = ESX.GetPlayerFromId(source)
    local weedBag = Player.getInventoryItem('empty_weed_bag')["count"]
    local sndAmount = math.random(1, 3)
    print(plantName)
    if weedBag ~= nil then
        if weedBag >= sndAmount then
            if house ~= nil then 
                MySQL.Async.fetchAll("SELECT * FROM house_plants WHERE plantid =@plantid and building= @building",{['@plantid'] = plantId , ['@building'] = house  }, function(result)
                    if result[1] ~= nil then
                        Player.addInventoryItem('weed_100g', sndAmount )
                        Player.removeInventoryItem('empty_weed_bag', 1)
                        MySQL.Async.execute('DELETE FROM house_plants WHERE plantid =@plantid and building =@building',{['@plantid'] =plantId,['@building'] = house  })
                        TriggerClientEvent('notification',src, ('The plant is harvested.'), 1)
                        TriggerClientEvent('qb-weed:client:refreshHousePlants', -1, house)
                    else
                        TriggerClientEvent('notification',src, ('This plant no longer exists'),2)
                    end
                end)
            else
                TriggerClientEvent('notification',src, ('Home not found'),2)
            end
        else
            TriggerClientEvent('notification',src, ('You dont have enough free packages'),2)
        end
    else
        TriggerClientEvent('notification',source, ('You have no resealable packages'),2)
    end
end)

RegisterServerEvent('qb-weed:server:foodPlant')
AddEventHandler('qb-weed:server:foodPlant', function(house, amount, plantName, plantId)
    local src = source
    local Player = ESX.GetPlayerFromId(source)

    MySQL.Async.fetchAll('SELECT * FROM house_plants WHERE building = @building and sort = @sort and plantid = @plantid',{['@building'] = house ,['@sort'] = plantName,['@plantid'] = tostring(plantId)  }, function(plantStats)
    --    TriggerClientEvent('notification',src, (QBWeed.Plants[plantName]["label"]..' | Nutrition: '..plantStats[1].food..'% + '..amount..'% ('..(plantStats[1].food + amount)..'%)'),1)
        if plantStats[1].food > 100 then
            MySQL.Async.execute( 'UPDATE house_plants SET food =@food  WHERE building = @building and plantid= @plantid ',{['@food'] = 100 , ['@building'] = house , ['@plantid'] = plantId})
        else
            MySQL.Async.execute( 'UPDATE house_plants SET food =@food  WHERE building = @building and plantid= @plantid ',{['@food'] = (plantStats[1].food + 25) , ['@building'] = house , ['@plantid'] = plantId})
        
        end
        Player.removeInventoryItem('weed_nutrition', 1)
        TriggerClientEvent('qb-weed:client:refreshHousePlants', -1, house)
    end)
end)