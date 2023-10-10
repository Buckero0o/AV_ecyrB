ESX = exports["es_extended"]:getSharedObject()

local items = {
	{'bulletproof', 100},
	{'bulletproof50', 50},
}

for _, itemData in ipairs(items) do
	local itemName = itemData[1]
	local armorVal = itemData[2]
	ESX.RegisterUsableItem(itemName, function(source)
		TriggerClientEvent("armor:addArmor", source, armorVal)
	end)
end

RegisterNetEvent('removeItem')
AddEventHandler('removeItem', function(item, count)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(item, count)
end)

--[[
very handy cb, can be utilized in other scripts aswell
item = item from db as @STRING
count = itemcount you need to have to return cb(true) as @INT
]]

ESX.RegisterServerCallback('hasItem', function(source, cb, item, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer then
		local item = item
		local count = count
		local playerInventory = xPlayer.getInventoryItem(item)
		local playerInventoryCount = playerInventory.count
		if playerInventoryCount >= count then
			cb(true)
		else
			cb(false)
		end
	else
		cb(false)
	end
end)
