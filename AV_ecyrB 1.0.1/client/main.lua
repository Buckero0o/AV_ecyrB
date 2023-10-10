ESX = exports["es_extended"]:getSharedObject()

function mugshotNotify(titel, undertitle, message)
	local mugshot, mugshotStr = ESX.Game.GetPedMugshot(GetPlayerPed(-1))
	ESX.ShowAdvancedNotification(titel, undertitle, message, mugshotStr, 1)
	UnregisterPedheadshot(mugshot)
end

RegisterNetEvent('armor:addArmor')
AddEventHandler('armor:addArmor', function(amount)
	ESX.TriggerServerCallback('hasItem', function(hasItem, count)
		if hasItem then
			AddArmourToPed(GetPlayerPed(-1), amount)
			if amount == 100 then
				TriggerServerEvent('removeItem', 'bulletproof', 1)
				mugshotNotify(Config.Translation.Title, Config.Translation.Undertitle, Config.Translation.Text100) 
			else
				TriggerServerEvent('removeItem', 'bulletproof50', 1)
				mugshotNotify(Config.Translation.Title, Config.Translation.Undertitle, Config.Translation.Text50) 
			end
		else
			mugshotNotify(Config.Translation.Title, Config.TranslationUndertitleNoItem, Config.Translation.TextNoItem)
		end
	end, item, count)
end)

