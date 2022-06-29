ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local SQLTables = {
    {table = "addon_account_data", column = "owner"},
    {table = "addon_inventory_items", column = "owner"},
    {table = "billing", column = "identifier"},
    {table = "datastore_data", column = "owner"},
    {table = "disc_ammo", column = "owner"},
    {table = "disc_inventory", column = "owner"},
    {table = "characters", column = "identifier"},
	{table = "apartments", column = "identifier"},
    {table = "owned_vehicles", column = "owner"},
    {table = "society_moneywash", column = "identifier"},
    {table = "pw_motels", column = "ident"},
    {table = "users", column = "identifier"},
    {table = "user_accounts", column = "identifier"},
    -- {table = "user_ammo", column = "steam"},
    {table = "user_inventory", column = "identifier"},
	{table = "playerskins", column = "identifier"},
	{table = "player_outfits", column = "identifier"},
    {table = "user_licenses", column = "owner"},
}

RegisterServerEvent("multicharacter:server:SetupCharacters")
AddEventHandler('multicharacter:server:SetupCharacters', function()
    local src = source
    local LastCharId = GetLastCharacter(src)
    SetIdentifierToChar(GetPlayerIdentifiers(src)[1], LastCharId)
    local Characters = GetPlayerCharacters(src)
    TriggerClientEvent('multicharacter:client:SetupUI', src, Characters)
end)

RegisterServerEvent("multicharacter:server:CharacterChosen")
AddEventHandler('multicharacter:server:CharacterChosen', function(charid, ischar)
    local src = source
    local spawn = {}
    SetLastCharacter(src, tonumber(charid))
    SetCharToIdentifier(GetPlayerIdentifiers(src)[1], tonumber(charid))
    if ischar == "true" then
        spawn = GetSpawnPos(src)
    else
        TriggerClientEvent('multicharacter:client:loadDefaultModel', src)
        spawn = { x = -1037.79, y = -2737.78, z = 20.17 } -- DEFAULT SPAWN POSITION
    end
    TriggerClientEvent("multicharacter:client:SpawnCharacter", src, spawn,ischar)
end)

RegisterServerEvent("multicharacter:server:DeleteCharacter")
AddEventHandler('multicharacter:server:DeleteCharacter', function(charid)
    local src = source
    DeleteCharacter(GetPlayerIdentifiers(src)[1], charid)
    TriggerClientEvent("multicharacter:client:ReloadCharacters", src)
end)

function GetPlayerCharacters(source)
    local identifier = GetIdentifierWithoutSteam(GetPlayerIdentifiers(source)[1])
    local Chars = MySQLAsyncExecute("SELECT * FROM `users` WHERE identifier LIKE '%"..identifier.."%'")
    return Chars
end

function GetLastCharacter(source)
    local LastChar = MySQLAsyncExecute("SELECT `charid` FROM `user_lastcharacter` WHERE `steamid` = '"..GetPlayerIdentifiers(source)[1].."'")
    if LastChar[1] ~= nil and LastChar[1].charid ~= nil then
        return tonumber(LastChar[1].charid)
    else
        MySQLAsyncExecute("INSERT INTO `user_lastcharacter` (`steamid`, `charid`) VALUES('"..GetPlayerIdentifiers(source)[1].."', 1)")
        return 1
    end
end

function SetLastCharacter(source, charid)
    MySQLAsyncExecute("UPDATE `user_lastcharacter` SET `charid` = '"..charid.."' WHERE `steamid` = '"..GetPlayerIdentifiers(source)[1].."'")
end

function SetIdentifierToChar(identifier, charid)
    for _, itable in pairs(SQLTables) do
        MySQLAsyncExecute("UPDATE `"..itable.table.."` SET `"..itable.column.."` = 'Char"..charid..GetIdentifierWithoutSteam(identifier).."' WHERE `"..itable.column.."` = '"..identifier.."'")
    end
end

function SetCharToIdentifier(identifier, charid)
    for _, itable in pairs(SQLTables) do
        MySQLAsyncExecute("UPDATE `"..itable.table.."` SET `"..itable.column.."` = '"..identifier.."' WHERE `"..itable.column.."` = 'Char"..charid..GetIdentifierWithoutSteam(identifier).."'")
    end
end

function DeleteCharacter(identifier, charid)
    for _, itable in pairs(SQLTables) do
        MySQLAsyncExecute("DELETE FROM `"..itable.table.."` WHERE `"..itable.column.."` = 'Char"..charid..GetIdentifierWithoutSteam(identifier).."'")
    end
end

function GetSpawnPos(source)
    local SpawnPos = MySQLAsyncExecute("SELECT `position` FROM `users` WHERE `identifier` = '"..GetPlayerIdentifiers(source)[1].."'")
    return json.decode(SpawnPos[1].position)
end

function GetIdentifierWithoutSteam(Identifier)
    return string.gsub(Identifier, "steam", "")
end

function MySQLAsyncExecute(query)
    local IsBusy = true
    local result = nil
    MySQL.Async.fetchAll(query, {}, function(data)
        result = data
        IsBusy = false
    end)
    while IsBusy do
        Citizen.Wait(0)
    end
    return result
end