-- Announcing
TriggerEvent('es:addGroupCommand', 'announce', "admin", function(source, args, user)
	TriggerClientEvent('announce', -1, "~r~ANNONCE", table.concat(args, " "), 5)
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficient permissions!")
end, {help = "Announce a message to the whole server", params = {{name = "announcement", help = "The message to announce"}}})