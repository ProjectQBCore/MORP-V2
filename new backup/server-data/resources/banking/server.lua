--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
			TriggerClientEvent('notification', source, 'Invalid amount.', 2)
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('notification', source, "You have successfully deposited $"..amount.."", 1)
	end
end)

RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local base = 0
	amount = tonumber(amount)
	base = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > base then
			TriggerClientEvent('notification', source, 'Invalid amount.', 2)
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('notification', source, "You have successfully withdrawn $"..amount.."", 1)
	end
end)

RegisterServerEvent('bank:balance')
AddEventHandler('bank:balance', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('currentbalance1', _source, balance)
end)

RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local zPlayer = ESX.GetPlayerFromId(to)
	local balance = 0
	balance = xPlayer.getAccount('bank').money
	zbalance = xPlayer.getAccount('bank').money
	if tonumber(_source) == tonumber(to) then
		TriggerClientEvent('notification', source, 'You cannot transfer funds to yourself.', 2)
	else
		if balance <= 0 or balance < tonumber(amount) or tonumber(amount) <= 0 then
			TriggerClientEvent('notification', source, 'Invalid amount.', 2)
		else
			xPlayer.removeAccountMoney('bank', amount)
			zPlayer.addAccountMoney('bank', amount)
			-- advanced notification with bank icon
			TriggerClientEvent('notification', source, "You have transfered $".. amount .. " to " .. to .. ".", 1)
			TriggerClientEvent('notification', source, "You have received $".. amount .. " from " .. _source .. ".", 1)
		end
	end
end)

RegisterCommand('cash', function(source, args, rawCommand)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    cash = xPlayer.getMoney()
    TriggerClientEvent('banking:updateCash', source, cash)
end)

RegisterCommand('bank', function(source, args, rawCommand)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    bank = xPlayer.getAccount('bank').money
    TriggerClientEvent('banking:updateBank', source, bank)
end)

RegisterCommand('atm', function(source, args, rawCommand)
    TriggerClientEvent('bank:checkATM', source, cash)
end)

RegisterServerEvent('bank:updateFuckingInfo')
AddEventHandler('bank:updateFuckingInfo', function()
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local bank = xPlayer.getAccount('bank').money
	local name = GetCharacterName(source)
	TriggerClientEvent('banking:updateBank', source, bank, false, name)
end)

function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		return ('%s %s'):format(result[1].firstname, result[1].lastname)
	else
		return GetPlayerName(source)
	end
end
