local logs = "https://discord.com/api/webhooks/835573800540176414/oADclzz_WVrogto7JKDf8KYqycqwH8oD1ir0-kJWBR2rgcDg6e0ulEt2fjDuRPFUnAzR"
local identifiers = {discord = "", steam = "", license = "", ip = "", live = "", xbl = ""}

local dono = "MORP Logs System"
local communtiylogo = "https://cdn.discordapp.com/attachments/713049735824670893/835532479099305994/logo.png" 
AddEventHandler('playerConnecting', function()
    local num = GetNumPlayerIdentifiers(source)
for i = 0, num-1 do
    local a = GetPlayerIdentifier(source, i)
    local f = string.find(a, ":")
    if f then
        local b = string.sub(a, 1, f-1)
        identifiers[b] = a
    end
end
local israel = GetPlayerName(source)
local adamtest = GetPlayerLastMsg(source)
local guid = GetPlayerGuid(source)
local ping = GetPlayerPing(source)
local connect = {
        {
            ["color"] = "12745742",
            ["title"] = "A player is coming in now",
            ["description"] = "[The name of the Player] **"..israel.."**\n[The Player's ping]: **"..ping.."**\n[The Player's epic]: **"..identifiers.ip.."**\n[Global ID]: **"..guid.."**\n [discord id]: **"..identifiers.discord.."**\n [license]: **"..identifiers.license.."**\n[Steam id]: **"..identifiers.steam.."**\n[Live id]: **"..identifiers.live.."**\n[xbl id]: **"..identifiers.xbl.."**",
            ["footer"] = {
                ["text"] = dono,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)