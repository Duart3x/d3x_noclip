ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('noclip', function(source) 
	local xPlayer = ESX.GetPlayerFromId(source)
	local group = xPlayer.getGroup()
	if group ~= 'user' then
		TriggerClientEvent("d3x_noclip:noclip", source)
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Sem permissões!")
	end
end)