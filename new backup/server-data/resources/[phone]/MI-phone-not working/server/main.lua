ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Code

local MIPhone = {}
local Tweets = {}
local AppAlerts = {}
local MentionedTweets = {}
local Hashtags = {}
local Calls = {}
local Adverts = {}
local GeneratedPlates = {}

function getOrGeneratePhoneNumber (sourcePlayer, identifier, cb)
    local sourcePlayer = sourcePlayer
    local identifier = identifier
    local myPhoneNumber = getNumberPhone(identifier)
    if myPhoneNumber == '0' or myPhoneNumber == nil then
        repeat
            myPhoneNumber = getPhoneRandomNumber()
            local id = getIdentifierByPhoneNumber(myPhoneNumber)
        until id == nil
        MySQL.Async.insert("UPDATE users SET phone_number = @myPhoneNumber WHERE identifier = @identifier", {
            ['@myPhoneNumber'] = myPhoneNumber,
            ['@identifier'] = identifier
        }, function ()
            cb(myPhoneNumber)
        end)
    else
        cb(myPhoneNumber)
    end
end

function getPhoneRandomNumber()
    local numBase0 = math.random(052,054)
    local numBase1 = math.random(11111111,99999999)
    local num = string.format("%03d%04d", numBase0, numBase1)

    return num
end

function getSourceFromIdentifier(identifier, cb)
    local xPlayers = ESX.GetPlayers()
    for k, user in pairs(xPlayers) do
        if GetPlayerIdentifiers(user)[1] == identifier then
            cb(user)
            return
        end
    end
    cb(nil)
end

function getIdentifierByPhoneNumber(phone) 
    local result = MySQL.Sync.fetchAll("SELECT users.identifier FROM users WHERE users.phone_number = @phone_number", {
        ['@phone_number'] = phone
    })
    if result[1] ~= nil then
        return result[1].identifier
    end
    return nil
end

function getNumberPhone(a)
    local b=MySQL.Sync.fetchScalar("SELECT users.phone_number FROM users WHERE users.identifier = @identifier",{["@identifier"]=a})
    if b~=nil then 
        return b 
    end;
    return nil 
end

function getPlayerID(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    return  xPlayer.identifier
end

RegisterServerEvent("MI-phone:onPlayerLoaded")
AddEventHandler("MI-phone:onPlayerLoaded",function(a)
    local b=tonumber(a)
    local c=getPlayerID(b)
    getOrGeneratePhoneNumber(b,c,function(d)end)
end)

RegisterServerEvent('MI-phone:server:AddAdvert')
AddEventHandler('MI-phone:server:AddAdvert', function(msg)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local Identifier = Player.identifier
    local character = GetCharacter(src)

    if Adverts[Identifier] ~= nil then
        Adverts[Identifier].message = msg
        Adverts[Identifier].name = "@" .. character.firstname .. "" .. character.lastname
        Adverts[Identifier].number = character.phone_number
    else
        Adverts[Identifier] = {
            message = msg,
            name = "@" .. character.firstname .. "_" .. character.lastname,
            number = character.phone_number,
        }
    end

    TriggerClientEvent('MI-phone:client:UpdateAdverts', -1, Adverts, "@" .. character.firstname .. "" .. character.lastname)
end)

function GetOnlineStatus(number)
    local Target = GetPlayerFromPhone(number)
    local retval = false
    if Target ~= nil then retval = true end
    return retval
end

ESX.RegisterServerCallback('MI-phone:server:GetPhoneData', function(source, cb)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local character = GetCharacter(src)
    if Player ~= nil then
        local PhoneData = {
            Applications = {},
            PlayerContacts = {},
            MentionedTweets = {},
            Chats = {},
            Hashtags = {},
            Invoices = {},
            Garage = {},
            Mails = {},
            Adverts = {},
            CryptoTransactions = {},
            Tweets = {}
        }
        PhoneData.Adverts = Adverts

        ExecuteSql(false, "SELECT * FROM player_contacts WHERE `identifier` = '"..Player.identifier.."' ORDER BY `name` ASC", function(result)
            local Contacts = {}
            if result[1] ~= nil then
                for k, v in pairs(result) do
                    v.status = GetOnlineStatus(v.number)
                end
                
                PhoneData.PlayerContacts = result
            end


            ExecuteSql(false, "SELECT * FROM owned_vehicles WHERE `owner` = '"..Player.identifier.."'", function(garageresult)

                if garageresult[1] ~= nil then
                    PhoneData.Garage = garageresult
                end

                ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` ASC', function(mails)

                    if mails[1] ~= nil then
                        for k, v in pairs(mails) do
                            if mails[k].button ~= nil then
                                mails[k].button = json.decode(mails[k].button)
                            end
                        end
                        PhoneData.Mails = mails
                    end

                    ExecuteSql(false, "SELECT * FROM phone_messages WHERE `identifier` = '"..Player.identifier.."'", function(messages)
                        if messages ~= nil and next(messages) ~= nil then 
                            PhoneData.Chats = messages
                        end

                        if AppAlerts[Player.identifier] ~= nil then 
                            PhoneData.Applications = AppAlerts[Player.identifier]
                        end

                        if MentionedTweets[Player.identifier] ~= nil then 
                            PhoneData.MentionedTweets = MentionedTweets[Player.identifier]
                        end

                        if Hashtags ~= nil and next(Hashtags) ~= nil then
                            PhoneData.Hashtags = Hashtags
                        end

                        if Tweets ~= nil and next(Tweets) ~= nil then
                            PhoneData.Tweets = Tweets
                        end

                        PhoneData.charinfo = GetCharacter(src)

                        if Config.UseESXBilling then
                            ExecuteSql(false, "SELECT * FROM billing  WHERE `identifier` = '"..Player.identifier.."'", function(invoices)
                                if invoices[1] ~= nil then
                                    for k, v in pairs(invoices) do
                                        local Ply = ESX.GetPlayerFromIdentifier(v.sender)
                                        if Ply ~= nil then
                                            v.number = GetCharacter(Ply.source).phone_number
                                        else
                                            ExecuteSql(true, "SELECT * FROM `users` WHERE `identifier` = '"..v.sender.."'", function(res)
                                                if res[1] ~= nil then
                                                    v.number = res[1].phone_number
                                                else
                                                    v.number = nil
                                                end
                                            end)
                                        end
                                    end
                                    PhoneData.Invoices = invoices
                                end
                                cb(PhoneData)
                            end)
                        else 
                            PhoneData.Invoices = {}
                            cb(PhoneData)
                        end
                    end)
                end)
            end)
        end)
    end
end)


ESX.RegisterServerCallback('MI-phone:server:GetCallState', function(source, cb, ContactData)
    local Target = GetPlayerFromPhone(ContactData.number)

    if Target ~= nil then
        if Calls[Target.identifier] ~= nil then
            if Calls[Target.identifier].inCall then
                cb(false, true)
            else
                cb(true, true)
            end
        else
            cb(true, true)
        end
    else
        cb(false, false)
    end
end)

RegisterServerEvent('MI-phone:server:SetCallState')
AddEventHandler('MI-phone:server:SetCallState', function(bool)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)

    if Calls[Ply.identifier] ~= nil then
        Calls[Ply.identifier].inCall = bool
    else
        Calls[Ply.identifier] = {}
        Calls[Ply.identifier].inCall = bool
    end
end)

RegisterServerEvent('MI-phone:server:RemoveMail')
AddEventHandler('MI-phone:server:RemoveMail', function(MailId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    ExecuteSql(false, 'DELETE FROM `player_mails` WHERE `mailid` = "'..MailId..'" AND `identifier` = "'..Player.identifier..'"')
    SetTimeout(100, function()
        ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` ASC', function(mails)
            if mails[1] ~= nil then
                for k, v in pairs(mails) do
                    if mails[k].button ~= nil then
                        mails[k].button = json.decode(mails[k].button)
                    end
                end
            end
    
            TriggerClientEvent('MI-phone:client:UpdateMails', src, mails)
        end)
    end)
end)

function GenerateMailId()
    return math.random(111111, 999999)
end

RegisterServerEvent('MI-phone:server:sendNewMail')
AddEventHandler('MI-phone:server:sendNewMail', function(mailData)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    if mailData.button == nil then
        ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"..Player.identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0')")
    else
        ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"..Player.identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0', '"..json.encode(mailData.button).."')")
    end
    TriggerClientEvent('MI-phone:client:NewMailNotify', src, mailData)
    SetTimeout(200, function()
        ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` DESC', function(mails)
            if mails[1] ~= nil then
                for k, v in pairs(mails) do
                    if mails[k].button ~= nil then
                        mails[k].button = json.decode(mails[k].button)
                    end
                end
            end
    
            TriggerClientEvent('MI-phone:client:UpdateMails', src, mails)
        end)
    end)
end)

RegisterServerEvent('MI-phone:server:sendNewMailToOffline')
AddEventHandler('MI-phone:server:sendNewMailToOffline', function(steam, mailData)
    local Player = ESX.GetPlayerFromIdentifier(steam)

    if Player ~= nil then
        local src = Player.source

        if mailData.button == nil then
            ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"..Player.identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0')")
            TriggerClientEvent('MI-phone:client:NewMailNotify', src, mailData)
        else
            ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"..Player.identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0', '"..json.encode(mailData.button).."')")
            TriggerClientEvent('MI-phone:client:NewMailNotify', src, mailData)
        end

        SetTimeout(200, function()
            ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` DESC', function(mails)
                if mails[1] ~= nil then
                    for k, v in pairs(mails) do
                        if mails[k].button ~= nil then
                            mails[k].button = json.decode(mails[k].button)
                        end
                    end
                end
        
                TriggerClientEvent('MI-phone:client:UpdateMails', src, mails)
            end)
        end)
    else
        if mailData.button == nil then
            ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"..identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0')")
        else
            ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"..identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0', '"..json.encode(mailData.button).."')")
        end
    end
end)

RegisterServerEvent('MI-phone:server:sendNewEventMail')
AddEventHandler('MI-phone:server:sendNewEventMail', function(steam, mailData)
    if mailData.button == nil then
        ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"..identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0')")
    else
        ExecuteSql(false, "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"..identifier.."', '"..mailData.sender.."', '"..mailData.subject.."', '"..mailData.message.."', '"..GenerateMailId().."', '0', '"..json.encode(mailData.button).."')")
    end
    SetTimeout(200, function()
        ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` DESC', function(mails)
            if mails[1] ~= nil then
                for k, v in pairs(mails) do
                    if mails[k].button ~= nil then
                        mails[k].button = json.decode(mails[k].button)
                    end
                end
            end
    
            TriggerClientEvent('MI-phone:client:UpdateMails', src, mails)
        end)
    end)
end)

RegisterServerEvent('MI-phone:server:ClearButtonData')
AddEventHandler('MI-phone:server:ClearButtonData', function(mailId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    ExecuteSql(false, 'UPDATE `player_mails` SET `button` = "" WHERE `mailid` = "'..mailId..'" AND `identifier` = "'..Player.identifier..'"')
    SetTimeout(200, function()
        ExecuteSql(false, 'SELECT * FROM `player_mails` WHERE `identifier` = "'..Player.identifier..'" ORDER BY `date` DESC', function(mails)
            if mails[1] ~= nil then
                for k, v in pairs(mails) do
                    if mails[k].button ~= nil then
                        mails[k].button = json.decode(mails[k].button)
                    end
                end
            end
    
            TriggerClientEvent('MI-phone:client:UpdateMails', src, mails)
        end)
    end)
end)

RegisterServerEvent('MI-phone:server:MentionedPlayer')
AddEventHandler('MI-phone:server:MentionedPlayer', function(firstName, lastName, TweetMessage)
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)
        if Player ~= nil then
            if (character.firstname == firstName and character.lastname == lastName) then
                MIPhone.SetPhoneAlerts(Player.identifier, "twitter")
                MIPhone.AddMentionedTweet(Player.identifier, TweetMessage)
                TriggerClientEvent('MI-phone:client:GetMentioned', Player.source, TweetMessage, AppAlerts[Player.identifier]["twitter"])
            else
                ExecuteSql(false, "SELECT * FROM `users` WHERE `firstname`='"..firstName.."' AND `lastname`='"..lastName.."'", function(result)
                    if result[1] ~= nil then
                        local MentionedTarget = result[1].identifier
                        MIPhone.SetPhoneAlerts(MentionedTarget, "twitter")
                        MIPhone.AddMentionedTweet(MentionedTarget, TweetMessage)
                    end
                end)
            end
        end
	end
end)

RegisterServerEvent('MI-phone:server:CallContact')
AddEventHandler('MI-phone:server:CallContact', function(TargetData, CallId, AnonymousCall)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local Target = GetPlayerFromPhone(TargetData.number)
    local character = GetCharacter(src)

    if Target ~= nil then
        TriggerClientEvent('MI-phone:client:GetCalled', Target.source, character.phone_number, CallId, AnonymousCall)
    end
end)

ESX.RegisterServerCallback('MI-phone:server:GetBankData', function(source, cb)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local character = GetCharacter(src)

    cb({bank = xPlayer.getBank(), iban = character.phone_number})
end)

ESX.RegisterServerCallback('MI-phone:server:CanPayInvoice', function(source, cb, amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    cb(xPlayer.getBank() >= amount)
end)

ESX.RegisterServerCallback('MI-phone:server:GetInvoices', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT amount, id, label FROM billing WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		cb(result)
    end)
end)

ESX.RegisterServerCallback("MI-phone:getBills", function(source, b)
    local c = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll("SELECT * FROM billing WHERE identifier = @identifier", {["@identifier"] = c.identifier}, function(d)
        b(d)
    end)
end)

RegisterServerEvent("MI-phone:faturapayBill")
AddEventHandler("MI-phone:faturapayBill", function(a)
    local b = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll("SELECT * FROM billing WHERE id = @id", {["@id"] = a}, function(c)
        local d = c[1].sender;
        local e = c[1].target_type;
        local f = c[1].target;
        local g = c[1].amount;
        local h = ESX.GetPlayerFromIdentifier(d)
        if e == "player" then if h ~= nil then
            if b.getAccount("bank").money >= g then
                MySQL.Async.execute("DELETE from billing WHERE id = @id", {["@id"] = a}, function(i)
                    b.removeAccountMoney("bank", g)
                    h.addAccountMoney("bank", g)
                    TriggerClientEvent("esx:showNotification", b.source, _U("paying_bill"))
                    TriggerClientEvent("esx:showNotification", h.source, _U("payed_bill"))
                    TriggerClientEvent("MI-phone:updateFaturalar", b.source) end)
            end
        end
        else
            TriggerEvent("esx_addonaccount:getSharedAccount", f, function(j)
                if b.getAccount("bank").money >= g then
                    MySQL.Async.execute("DELETE from billing WHERE id = @id", {["@id"] = a}, function(i)
                        local k = ESX.Math.Round(g / 100 * 10)
                        local l = ESX.Math.Round(g / 100 * 90)
                        if h ~= nil then h.addAccountMoney("bank", k)
                        end;
                        b.removeAccountMoney("bank", g)
                        j.addMoney(l)
                        TriggerClientEvent("esx:showNotification", b.source, _U("payed_bill_complete") .. g)
                        TriggerClientEvent("MI-phone:updateFaturalar", b.source)
                        if h ~= nil then
                            TriggerClientEvent("esx:showNotification", h.source, _U("payed_bill_target") .. k)
                        end
                    end)
                else TriggerClientEvent("esx:showNotification", b.source, _U("not_enough_money"))
                end
            end)
        end
    end)
end)


RegisterServerEvent('MI-phone:server:UpdateHashtags')
AddEventHandler('MI-phone:server:UpdateHashtags', function(Handle, messageData)
    if Hashtags[Handle] ~= nil and next(Hashtags[Handle]) ~= nil then
        table.insert(Hashtags[Handle].messages, messageData)
    else
        Hashtags[Handle] = {
            hashtag = Handle,
            messages = {}
        }
        table.insert(Hashtags[Handle].messages, messageData)
    end
    TriggerClientEvent('MI-phone:client:UpdateHashtags', -1, Handle, messageData)
end)

local webhooks =
{
  TwT = 'https://discordapp.com/api/webhooks/763495935044747284/VwWiAnPAGsnUzuju5qm7tBpmV65t2xyL243oWYFtscFqETGgodaYR36Fr2orDwMVDn7l',
}
AddEventHandler('gcPhone:twitter_newTweets', function (NewTweets)
  -- print(json.encode(tweet))

  local headers = {
    ['Content-Type'] = 'application/json'
  }
  local data = {
    ["username"] = 'NewTweets',
    ["embeds"] = {{
	["message"] = NewTweets,
    ["thumbnail"] = {
    ["url"] = ''
},
    ["color"] = 1942002,
}}}

  
  PerformHttpRequest('https://discordapp.com/api/webhooks/763495935044747284/VwWiAnPAGsnUzuju5qm7tBpmV65t2xyL243oWYFtscFqETGgodaYR36Fr2orDwMVDn7l', function(err, text, headers) end, 'POST', json.encode(data), headers)
end)

MIPhone.AddMentionedTweet = function(identifier, TweetData)
    if MentionedTweets[identifier] == nil then MentionedTweets[identifier] = {} end
    table.insert(MentionedTweets[identifier], TweetData)
end

MIPhone.SetPhoneAlerts = function(identifier, app, alerts)
    if identifier ~= nil and app ~= nil then
        if AppAlerts[identifier] == nil then
            AppAlerts[identifier] = {}
            if AppAlerts[identifier][app] == nil then
                if alerts == nil then
                    AppAlerts[identifier][app] = 1
                else
                    AppAlerts[identifier][app] = alerts
                end
            end
        else
            if AppAlerts[identifier][app] == nil then
                if alerts == nil then
                    AppAlerts[identifier][app] = 1
                else
                    AppAlerts[identifier][app] = 0
                end
            else
                if alerts == nil then
                    AppAlerts[identifier][app] = AppAlerts[identifier][app] + 1
                else
                    AppAlerts[identifier][app] = AppAlerts[identifier][app] + 0
                end
            end
        end
    end
end

ESX.RegisterServerCallback('MI-phone:server:GetContactPictures', function(source, cb, Chats)
    for k, v in pairs(Chats) do
        local Player = ESX.GetPlayerFromIdentifier(v.number)
        
        ExecuteSql(false, "SELECT * FROM `users` WHERE `phone_number`='"..v.number.."'", function(result)
            if result[1] ~= nil then
                if result[1].profilepicture ~= nil then
                    v.picture = result[1].profilepicture
                else
                    v.picture = "default"
                end
            end
        end)
    end
    SetTimeout(100, function()
        cb(Chats)
    end)
end)

ESX.RegisterServerCallback('MI-phone:server:GetContactPicture', function(source, cb, Chat)
    ExecuteSql(false, "SELECT * FROM `users` WHERE `phone_number`='" .. Chat.number .. "'", function(result)
        if result[1] and result[1].background then
            Chat.picture = result[1].background
            cb(Chat)
        else
            Chat.picture = "default"
            cb(Chat)
        end
    end)
end)

ESX.RegisterServerCallback('MI-phone:server:GetPicture', function(source, cb, number)
    local Player = GetPlayerFromPhone(number)
    local Picture = nil

    ExecuteSql(false, "SELECT * FROM `users` WHERE `phone_number`='"..number.."'", function(result)
        if result[1] ~= nil then
            if result[1].profilepicture ~= nil then
                Picture = result[1].profilepicture
            else
                Picture = "default"
            end
            cb(Picture)
        else
            cb(nil)
        end
    end)
end)

RegisterServerEvent('MI-phone:server:SetPhoneAlerts')
AddEventHandler('MI-phone:server:SetPhoneAlerts', function(app, alerts)
    local src = source
    local Identifier = ESX.GetPlayerFromId(src).identifier
    MIPhone.SetPhoneAlerts(Identifier, app, alerts)
end)

RegisterServerEvent('MI-phone:server:UpdateTweets')
AddEventHandler('MI-phone:server:UpdateTweets', function(NewTweets, TweetData)
    Tweets = NewTweets
    local TwtData = TweetData
    local src = source
    TriggerClientEvent('MI-phone:client:UpdateTweets', -1, src, Tweets, TwtData)
	TriggerEvent('gcPhone:twitter_newTweets')
	
end)

RegisterServerEvent('MI-phone:server:TransferMoney')
AddEventHandler('MI-phone:server:TransferMoney', function(iban, amount)
    local src = source
    local sender = ESX.GetPlayerFromId(src)

    ExecuteSql(false, "SELECT * FROM `users` WHERE `phone_number`='"..iban.."'", function(result)
        if result[1] ~= nil then
            local recieverSteam = ESX.GetPlayerFromIdentifier(result[1].identifier)

            if recieverSteam ~= nil then
                local PhoneItem = recieverSteam.getInventoryItem("phone") and recieverSteam.getInventoryItem("phone").count > 0
                recieverSteam.addBank(amount)
                sender.removeBank(amount)

                if PhoneItem ~= nil then
                    TriggerClientEvent('MI-phone:client:TransferMoney', recieverSteam.source, amount, recieverSteam.getBank())

                    ExecuteSql(false, "SELECT * FROM `users` WHERE `identifier`='"..ESX.GetPlayerFromId(src).identifier.."'", function(result)
                        TriggerClientEvent("notification", recieverSteam.source, 'You just received $' .. amount .. ' to your bank account, from IBAN "' .. result[1].phone_number .. '"')
                    end)
                end
            else
                ExecuteSql(false, "UPDATE `users` SET `bank` = '"..result[1].bank + amount.."' WHERE `identifier` = '"..result[1].identifier.."'")
                sender.removeBank(amount)
            end
        else
            TriggerClientEvent('notification', src, "This account number does not exist!", 2)
        end
    end)
end)

RegisterServerEvent('MI-phone:server:EditContact')
AddEventHandler('MI-phone:server:EditContact', function(newName, newNumber, newIban, oldName, oldNumber, oldIban)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    ExecuteSql(false, "UPDATE `player_contacts` SET `name` = '"..newName.."', `number` = '"..newNumber.."', `phone_number` = '"..newIban.."' WHERE `identifier` = '"..Player.identifier.."' AND `name` = '"..oldName.."' AND `number` = '"..oldNumber.."'")
end)

RegisterServerEvent('MI-phone:server:RemoveContact')
AddEventHandler('MI-phone:server:RemoveContact', function(Name, Number)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    
    ExecuteSql(false, "DELETE FROM `player_contacts` WHERE `name` = '"..Name.."' AND `number` = '"..Number.."' AND `identifier` = '"..Player.identifier.."'")
end)

RegisterServerEvent('MI-phone:server:AddNewContact')
AddEventHandler('MI-phone:server:AddNewContact', function(name, number, iban)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    ExecuteSql(false, "INSERT INTO `player_contacts` (`identifier`, `name`, `number`, `phone_number`) VALUES ('"..Player.identifier.."', '"..tostring(name).."', '"..tostring(number).."', '"..tostring(iban).."')")
end)

RegisterServerEvent('MI-phone:server:UpdateMessages')
AddEventHandler('MI-phone:server:UpdateMessages', function(ChatMessages, ChatNumber, New)
    local src = source
    local SenderData = ESX.GetPlayerFromId(src)
    local SenderCharacter = GetCharacter(src)

    ExecuteSql(false, "SELECT * FROM `users` WHERE `phone_number`='"..ChatNumber.."'", function(Player)
        if Player[1] ~= nil then
            local TargetData = ESX.GetPlayerFromIdentifier(Player[1].identifier)

            if TargetData ~= nil then
                ExecuteSql(false, "SELECT * FROM `phone_messages` WHERE `identifier` = '"..SenderData.identifier.."' AND `number` = '"..ChatNumber.."'", function(Chat)
                    if Chat[1] ~= nil then
                        -- Update for target
                        ExecuteSql(false, "UPDATE `phone_messages` SET `messages` = '"..json.encode(ChatMessages).."' WHERE `identifier` = '"..TargetData.identifier.."' AND `number` = '"..SenderCharacter.phone_number.."'")
                                
                        -- Update for sender
                        ExecuteSql(false, "UPDATE `phone_messages` SET `messages` = '"..json.encode(ChatMessages).."' WHERE `identifier` = '"..SenderData.identifier.."' AND `number` = '"..SenderCharacter.phone_number.."'")
                    
                        -- Send notification & Update messages for target
                        TriggerClientEvent('MI-phone:client:UpdateMessages', TargetData.source, ChatMessages, SenderCharacter.phone_number, false)
                    else
                        -- Insert for target
                        ExecuteSql(false, "INSERT INTO `phone_messages` (`identifier`, `number`, `messages`) VALUES ('"..TargetData.identifier.."', '"..SenderCharacter.phone_number.."', '"..json.encode(ChatMessages).."')")
                                            
                        -- Insert for sender
                        ExecuteSql(false, "INSERT INTO `phone_messages` (`identifier`, `number`, `messages`) VALUES ('"..SenderData.identifier.."', '"..SenderCharacter.phone_number.."', '"..json.encode(ChatMessages).."')")

                        -- Send notification & Update messages for target
                        TriggerClientEvent('MI-phone:client:UpdateMessages', TargetData.source, ChatMessages, SenderCharacter.phone_number, true)
                    end
                end)
            else
                ExecuteSql(false, "SELECT * FROM `phone_messages` WHERE `identifier` = '"..SenderData.identifier.."' AND `number` = '"..ChatNumber.."'", function(Chat)
                    if Chat[1] ~= nil then
                        -- Update for target
                        ExecuteSql(false, "UPDATE `phone_messages` SET `messages` = '"..json.encode(ChatMessages).."' WHERE `identifier` = '"..Player[1].identifier.."' AND `number` = '"..SenderCharacter.phone_number.."'")
                                
                        -- Update for sender
                        ExecuteSql(false, "UPDATE `phone_messages` SET `messages` = '"..json.encode(ChatMessages).."' WHERE `identifier` = '"..SenderData.identifier.."' AND `number` = '"..Player[1].phone_number.."'")
                    else
                        -- Insert for target
                        ExecuteSql(false, "INSERT INTO `phone_messages` (`identifier`, `number`, `messages`) VALUES ('"..Player[1].identifier.."', '"..SenderCharacter.phone_number.."', '"..json.encode(ChatMessages).."')")
                        
                        -- Insert for sender
                        ExecuteSql(false, "INSERT INTO `phone_messages` (`identifier`, `number`, `messages`) VALUES ('"..SenderData.identifier.."', '"..Player[1].phone_number.."', '"..json.encode(ChatMessages).."')")
                    end
                end)
            end
        end
    end)
end)

RegisterServerEvent('MI-phone:server:AddRecentCall')
AddEventHandler('MI-phone:server:AddRecentCall', function(type, data)
    local src = source
    local Ply = ESX.GetPlayerFromId(src)
    local character = GetCharacter(src)

    local Hour = os.date("%H")
    local Minute = os.date("%M")
    local label = Hour..":"..Minute

    TriggerClientEvent('MI-phone:client:AddRecentCall', src, data, label, type)

    local Trgt = GetPlayerFromPhone(data.number)
    if Trgt ~= nil then
        TriggerClientEvent('MI-phone:client:AddRecentCall', Trgt.source, {
            name = character.firstname .. " " ..character.lastname,
            number = character.phone_number,
            anonymous = anonymous
        }, label, "outgoing")
    end
end)

RegisterServerEvent('MI-phone:server:CancelCall')
AddEventHandler('MI-phone:server:CancelCall', function(ContactData)
    local Ply = GetPlayerFromPhone(ContactData.TargetData.number)

    if Ply ~= nil then
        TriggerClientEvent('MI-phone:client:CancelCall', Ply.source)
    end
end)

RegisterServerEvent('MI-phone:server:AnswerCall')
AddEventHandler('MI-phone:server:AnswerCall', function(CallData)
    local Ply = GetPlayerFromPhone(CallData.TargetData.number)

    if Ply ~= nil then
        TriggerClientEvent('MI-phone:client:AnswerCall', Ply.source)
    end
end)

RegisterServerEvent('MI-phone:server:SaveMetaData')
AddEventHandler('MI-phone:server:SaveMetaData', function(column,data)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    if data and column then
        if type(data) == 'table' then
            ExecuteSql(false, "UPDATE `users` SET `" .. column .. "` = '".. json.encode(data) .."' WHERE `identifier` = '"..Player.identifier.."'")
        else
            ExecuteSql(false, "UPDATE `users` SET `" .. column .. "` = '".. data .."' WHERE `identifier` = '"..Player.identifier.."'")
        end
    end
end)

function escape_sqli(source)
    local replacements = { ['"'] = '\\"', ["'"] = "\\'" }
    return source:gsub( "['\"]", replacements ) -- or string.gsub( source, "['\"]", replacements )
end

ESX.RegisterServerCallback('MI-phone:server:FetchResult', function(source, cb, search)
    local src = source
    local search = escape_sqli(search)
    local searchData = {}
    local ApaData = {}
    local character = GetCharacter(src)
    ExecuteSql(false, "SELECT * FROM `users` WHERE firstname LIKE '%"..search.."%'", function(result)
        if result[1] ~= nil then
            for k, v in pairs(result) do
                local driverlicense = false
                local weaponlicense = false
                local doingSomething = true

                if Config.UseESXLicense then
                    CheckLicense(v.identifier, 'weapon', function(has)
                        if has then
                            weaponlicense = true
                        end

                        CheckLicense(v.identifier, 'drive', function(has)
                            if has then
                                driverlicense = true
                            end
                            
                            doingSomething = false
                        end)
                    end)
                else
                    doingSomething = false
                end

                while doingSomething do Wait(1) end
                
                table.insert(searchData, {
                    identifier = v.identifier,
                    firstname = character.firstname,
                    lastname = character.lastname,
                    birthdate = character.dateofbirth,
                    phone = character.phone_number,
                    gender = character.sex,
                    weaponlicense = weaponlicense,
                    driverlicense = driverlicense,
                })
            end
            cb(searchData)
        else
            cb(nil)
        end
    end)
end)

function CheckLicense(target, type, cb)
	local target = target

	if target then
		MySQL.Async.fetchAll('SELECT COUNT(*) as count FROM user_licenses WHERE type = @type AND owner = @owner', {
			['@type'] = type,
			['@owner'] = target
		}, function(result)
			if tonumber(result[1].count) > 0 then
				cb(true)
			else
				cb(false)
			end
		end)
	else
		cb(false)
	end
end

ESX.RegisterServerCallback('MI-phone:server:GetVehicleSearchResults', function(source, cb, search)
    local src = source
    local search = escape_sqli(search)
    local searchData = {}
    local character = GetCharacter(src)

    ExecuteSql(false, 'SELECT * FROM `owned_vehicles` WHERE `plate` LIKE "%'..search..'%" OR `owner` = "'..search..'"', function(result)
        if result[1] ~= nil then
            for k, v in pairs(result) do
                ExecuteSql(true, 'SELECT * FROM `users` WHERE `identifier` = "'..result[k].identifier..'"', function(player)
                    if player[1] ~= nil then 
                        local vehicleInfo = { ['name'] = json.decode(result[k].vehicle).model }
                        if vehicleInfo ~= nil then 
                            table.insert(searchData, {
                                plate = result[k].plate,
                                status = true,
                                owner = character.firstname .. " " .. character.lastname,
                                identifier = result[k].identifier,
                                label = vehicleInfo["name"]
                            })
                        else
                            table.insert(searchData, {
                                plate = result[k].plate,
                                status = true,
                                owner = character.firstname .. " " .. character.lastname,
                                identifier = result[k].identifier,
                                label = "Nome non trovato"
                            })
                        end
                    end
                end)
            end
        elseif GeneratedPlates[search] ~= nil then
            table.insert(searchData, {
                plate = GeneratedPlates[search].plate,
                status = GeneratedPlates[search].status,
                owner = GeneratedPlates[search].owner,
                identifier = GeneratedPlates[search].identifier,
                label = "Marca Sconosciuta.."
            })
        else
            local ownerInfo = GenerateOwnerName()
            GeneratedPlates[search] = {
                plate = search,
                status = true,
                owner = ownerInfo.name,
                identifier = ownerInfo.identifier,
            }
            table.insert(searchData, {
                plate = search,
                status = true,
                owner = ownerInfo.name,
                identifier = ownerInfo.identifier,
                label = "Marca Sconosciuta.."
            })
        end
        cb(searchData)
    end)
end)

ESX.RegisterServerCallback('MI-phone:server:ScanPlate', function(source, cb, plate)
    local src = source
    local vehicleData = {}
    local character = GetCharacter(src)
    if plate ~= nil then 
        ExecuteSql(false, 'SELECT * FROM `owned_vehicles` WHERE `plate` = "'..plate..'"', function(result)
            if result[1] ~= nil then
                ExecuteSql(true, 'SELECT * FROM `users` WHERE `identifier` = "'..result[1].identifier..'"', function(player)
                    vehicleData = {
                        plate = plate,
                        status = true,
                        owner = character.firstname .. " " .. character.lastname,
                        identifier = result[1].identifier,
                    }
                end)
            elseif GeneratedPlates ~= nil and GeneratedPlates[plate] ~= nil then 
                vehicleData = GeneratedPlates[plate]
            else
                local ownerInfo = GenerateOwnerName()
                GeneratedPlates[plate] = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    identifier = ownerInfo.identifier,
                }
                vehicleData = {
                    plate = plate,
                    status = true,
                    owner = ownerInfo.name,
                    identifier = ownerInfo.identifier,
                }
            end
            cb(vehicleData)
        end)
    else
        TriggerClientEvent('notification', src, Lang('NO_VEHICLE'), 2)
        cb(nil)
    end
end)

function GenerateOwnerName()
    local names = {
        [1] = { name = "Jan Bloksteen", identifier = "DSH091G93" },
        [2] = { name = "Jay Dendam", identifier = "AVH09M193" },
        [3] = { name = "Ben Klaariskees", identifier = "DVH091T93" },
        [4] = { name = "Karel Bakker", identifier = "GZP091G93" },
        [5] = { name = "Klaas Adriaan", identifier = "DRH09Z193" },
        [6] = { name = "Nico Wolters", identifier = "KGV091J93" },
        [7] = { name = "Mark Hendrickx", identifier = "ODF09S193" },
        [8] = { name = "Bert Johannes", identifier = "KSD0919H3" },
        [9] = { name = "Karel de Grote", identifier = "NDX091D93" },
        [10] = { name = "Jan Pieter", identifier = "ZAL0919X3" },
        [11] = { name = "Huig Roelink", identifier = "ZAK09D193" },
        [12] = { name = "Corneel Boerselman", identifier = "POL09F193" },
        [13] = { name = "Hermen Klein Overmeen", identifier = "TEW0J9193" },
        [14] = { name = "Bart Rielink", identifier = "YOO09H193" },
        [15] = { name = "Antoon Henselijn", identifier = "QBC091H93" },
        [16] = { name = "Aad Keizer", identifier = "YDN091H93" },
        [17] = { name = "Thijn Kiel", identifier = "PJD09D193" },
        [18] = { name = "Henkie Krikhaar", identifier = "RND091D93" },
        [19] = { name = "Teun Blaauwkamp", identifier = "QWE091A93" },
        [20] = { name = "Dries Stielstra", identifier = "KJH0919M3" },
        [21] = { name = "Karlijn Hensbergen", identifier = "ZXC09D193" },
        [22] = { name = "Aafke van Daalen", identifier = "XYZ0919C3" },
        [23] = { name = "Door Leeferds", identifier = "ZYX0919F3" },
        [24] = { name = "Nelleke Broedersen", identifier = "IOP091O93" },
        [25] = { name = "Renske de Raaf", identifier = "PIO091R93" },
        [26] = { name = "Krisje Moltman", identifier = "LEK091X93" },
        [27] = { name = "Mirre Steevens", identifier = "ALG091Y93" },
        [28] = { name = "Joosje Kalvenhaar", identifier = "YUR09E193" },
        [29] = { name = "Mirte Ellenbroek", identifier = "SOM091W93" },
        [30] = { name = "Marlieke Meilink", identifier = "KAS09193" },
    }
    return names[math.random(1, #names)]
end

ESX.RegisterServerCallback('MI-phone:server:GetGarageVehicles', function(source, cb)
    local Player = ESX.GetPlayerFromId(source)
    local Vehicles = {}

    ExecuteSql(false, "SELECT * FROM `owned_vehicles` WHERE `owner` = '"..Player.identifier.."'", function(result)
        if result[1] ~= nil then
            for k, v in pairs(result) do

                if v.garage == "OUT" then
                    VehicleState = "Fuori"
                else
                    VehicleState = "Garage"
                end

                local vehdata = {}

                vehdata = {
                    model = json.decode(result[k].vehicle).model,
                    plate = v.plate,
                    garage = v.garage,
                    state = VehicleState,
                    fuel = v.fuel or 1000,
                    engine = v.engine or 1000,
                    body = v.body or 1000,
                }

                table.insert(Vehicles, vehdata)
            end
            cb(Vehicles)
        else
            cb(nil)
        end
    end)
end)

ESX.RegisterServerCallback('MI-phone:server:GetCharacterData', function(source, cb,id)
    local src = source or id
    local xPlayer = ESX.GetPlayerFromId(source)
    
    cb(GetCharacter(src))
end)

ESX.RegisterServerCallback('MI-phone:server:HasPhone', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer ~= nil then
        local HasPhone = xPlayer.getInventoryItem("phone")

        if HasPhone ~= nil then
            cb(HasPhone["count"] >= 1)
        else
            cb(true)
            TriggerClientEvent('mythic_notify:client:SendAlert', source, {type='error', text ='Non hai un telefono'})
        end
    end
end)

RegisterServerEvent('MI-phone:server:GiveContactDetails')
AddEventHandler('MI-phone:server:GiveContactDetails', function(PlayerId)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    local character = GetCharacter(src)

    local SuggestionData = {
        name = {
            [1] = character.firstname,
            [2] = character.lastname
        },
        number = character.phone_number,
        bank = Player.getBank(),
    }

    TriggerClientEvent('MI-phone:client:AddNewSuggestion', PlayerId, SuggestionData)
end)

RegisterServerEvent('MI-phone:server:AddTransaction')
AddEventHandler('MI-phone:server:AddTransaction', function(data)
    local src = source
    local Player = ESX.GetPlayerFromId(src)

    ExecuteSql(false, "INSERT INTO `crypto_transactions` (`identifier`, `title`, `message`) VALUES ('"..Player.identifier.."', '"..escape_sqli(data.TransactionTitle).."', '"..escape_sqli(data.TransactionMessage).."')")
end)

ESX.RegisterServerCallback('MI-phone:server:GetCurrentLawyers', function(source, cb)
    local Lawyers = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == Config.LawyersJob then
                table.insert(Lawyers, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(Lawyers)
end)


ESX.RegisterServerCallback('MI-phone:server:GetCurrentMedic', function(source, cb)
    local Medic = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == "ambulance" then
                table.insert(Medic, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(Medic)
end)



ESX.RegisterServerCallback('MI-phone:server:GetCurrentpolice', function(source, cb)
    local police = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == "police" then
                table.insert(police, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(police)
end)

ESX.RegisterServerCallback('MI-phone:server:GetCurrentcardealer', function(source, cb)
    local cardealer = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == "cardealer" then
                table.insert(cardealer, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(cardealer)
end)

ESX.RegisterServerCallback('MI-phone:server:GetCurrentmechanic', function(source, cb)
    local mechanic = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == "mechanic" then
                table.insert(mechanic, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(mechanic)
end)

ESX.RegisterServerCallback('MI-phone:server:GetCurrentAmmu', function(source, cb)
    local Ammu = {}
    for k, v in pairs(ESX.GetPlayers()) do
        local Player = ESX.GetPlayerFromId(v)
        local character = GetCharacter(v)

        if Player ~= nil then
            if Player.job.name == 'ammu' then
                table.insert(Ammu, {
                    firstname = character.firstname,
                    lastname = character.lastname,
                    phone = character.phone_number,
                })
            end
        end
    end
    cb(Ammu)
end)

function GetCharacter(source)
	local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

    return result[1]
end


function GetPlayerFromPhone(phone)
    local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE phone_number = @phone_number', {
		['@phone_number'] = phone
    })
    
    if result[1] and result[1].identifier then
        return ESX.GetPlayerFromIdentifier(result[1].identifier)
    end

    return nil
end

function ExecuteSql(wait, query, cb)
	local rtndata = {}
	local waiting = true
	MySQL.Async.fetchAll(query, {}, function(data)
		if cb ~= nil and wait == false then
			cb(data)
		end
		rtndata = data
		waiting = false
	end)
	if wait then
		while waiting do
			Citizen.Wait(5)
		end
		if cb ~= nil and wait == true then
			cb(rtndata)
		end
    end
    
	return rtndata
end

function Lang(item)
    local lang = Config.Languages[Config.Language]

    if lang and lang[item] then
        return lang[item]
    end

    return item
end
