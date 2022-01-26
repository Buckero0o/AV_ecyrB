RegisterNetEvent('armor:addArmor')
AddEventHandler('armor:addArmor', function(amount)
	AddArmourToPed(GetPlayerPed(-1), amount)
end)

-- Credit to helping me improve this script goes to DrAceMisanthrope. Thanks for the help!