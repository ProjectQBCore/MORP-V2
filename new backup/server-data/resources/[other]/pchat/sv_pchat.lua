ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("pchat",function(source,args)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    if Player.job.name == 'police'   then
        local name = GetName(source)
        local msg = table.concat(args, " ")
        for _,v in pairs(ESX.GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(v)
            if xPlayer and xPlayer.job.name == 'police'   then
                -- change thechat trigger to your chat
                TriggerClientEvent('chat:addMessage', v, {
                    template = '<div class="chat-message blue"><span style = " color:rgba(255, 41, 41,, 0.9);  font-weight:bold">Police Chat</span> | <b>{0} </b>: {1}</div>',
                    args = { name, msg }
                })
            end
        end
    end
end)

function GetName(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]
        local name = identity['firstname'] .. " " .. identity['lastname']
		return name
	else
		return nil
	end
end