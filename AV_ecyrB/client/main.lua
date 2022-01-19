RegisterNetEvent('AC_ecyrB:bulletproof')
AddEventHandler('AC_ecyrB:bulletproof', function()
	local playerPed = GetPlayerPed(-1)

	AddArmourToPed(playerPed, 100)
	SetPedArmour(playerPed, 100)
end),

RegisterNetEvent('AC_ecyrB:bulletproof50')
AddEventHandler('AC_ecyrB:bulletproof50', function()
	local playerPed = GetPlayerPed(-1)

	AddArmourToPed(playerPed, 50)
end)