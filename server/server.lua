-- created by RexshackGaming : Discord : https://discord.gg/AmdXaFvC5v
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
-- github : https://github.com/RexShack

local data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('rsg_moonshiner:start_brewing')
AddEventHandler("rsg_moonshiner:start_brewing", function()
    local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
		local item1 = data.getItem(_source, "sugar")
		total_sugar = (item1.ItemAmount)
		local item2 = data.getItem(_source, "corn")
		total_corn = (item2.ItemAmount)
		local item3 = data.getItem(_source, "water")
		total_water = (item3.ItemAmount)
		
		if total_sugar >= 3 and total_corn >= 3 and total_water >= 3 then
			
		item1.RemoveItem(3)
		item2.RemoveItem(3)
		item3.RemoveItem(3)
			
        TriggerClientEvent("redemrp_notification:start", _source, "Making Moonshine", 18, "success")
        Citizen.Wait(30000)
		
		local item4 = data.getItem(_source, "moonshine")
		total_moonshine = (item4.ItemAmount)
		item4.AddItem(1)
		TriggerClientEvent("rsg_moonshiner:finished_brewing", _source)
				
        else
            TriggerClientEvent("rsg_moonshine:fail_brewing", _source)
        end
    end)
end)