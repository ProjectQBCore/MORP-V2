RegisterServerEvent('LogClientError')
AddEventHandler('LogClientError', function(resource, error)
    local log = {
        {
            ["color"] = "12745742",
            ["title"] = "Error Log (" .. resource .. ") By " .. GetPlayerName(source),
            ["description"] = error,
        }
    }

    print("------------------ CLIENT ERROR IN RESOURCE: " .. resource)
    print(error)
    print("------------------ END OF CLIENT ERROR")

    PerformHttpRequest("https://discordapp.com/api/webhooks/749014560777830491/y38WL0A6dtqDP_fDJlEI8bSabYgjTU_T210uTeVczoSPs7wIAMBK6i2xN3VqTOdbtxMs", function(err, text, headers) end, 'POST', json.encode({username = "Error Logs", embeds = log}), { ['Content-Type'] = 'application/json' })
end)
