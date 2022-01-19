ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('AC_ecyrB:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)
end)

ESX.RegisterUsableItem('bulletproof50', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('AC_ecyrB:bulletproof50', source)
	xPlayer.removeInventoryItem('bulletproof50', 1)
end)