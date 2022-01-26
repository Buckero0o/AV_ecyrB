ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('bulletproof', 1)
	TriggerClientEvent('armor:addArmor', source, 100)
	xPlayer.showNotification(_U('used_bulletproof'))
end)

ESX.RegisterUsableItem('bulletproof50', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('bulletproof50', 1)
	TriggerClientEvent('armor:addArmor', source, 50)
	xPlayer.showNotification(_U('used_bulletproof'))
end)

-- Credit to helping me improve this script goes to DrAceMisanthrope. Thanks for the help!