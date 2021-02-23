-- created by RexshackGaming : Discord : https://discord.gg/AmdXaFvC5v
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
-- github : https://github.com/RexShack

start_brewing = {}

local brewing = false

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1);
    DisplayText(str, x, y)
end

---------------- Amborino Still
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -1094.84, 714.26, 81.04, true)
			if brewing == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.moonshine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerServerEvent('rsg_moonshiner:start_brewing')
					brewing = true
				end
			end
		end
	end
end)

---------------- Leymone Still
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, 1793.66, -818.3, 189.4, true)
			if brewing == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.moonshine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerServerEvent('rsg_moonshiner:start_brewing')
					brewing = true
				end
			end
		end
	end
end)

---------------- New Austin Still
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -2774.91, -3041.45, -11.9, true)
			if brewing == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.moonshine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerServerEvent('rsg_moonshiner:start_brewing')
					brewing = true
				end
			end
		end
	end
end)

---------------- New Hanover Still
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, 1634.34, 828.96, 121.74, true)
			if brewing == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.moonshine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerServerEvent('rsg_moonshiner:start_brewing')
					brewing = true
				end
			end
		end
	end
end)

---------------- West Elizabeth Still
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		local betweencoords = GetDistanceBetweenCoords(coords, -1869.5, -1727.56, 86.06, true)
			if brewing == false then
				if betweencoords < 2.0 then
					DrawTxt(Config.moonshine1, 0.50, 0.90, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, 0xC7B5340A) then
					TriggerServerEvent('rsg_moonshiner:start_brewing')
					brewing = true
				end
			end
		end
	end
end)

---------------- moonshine success
RegisterNetEvent('rsg_moonshiner:finished_brewing')
AddEventHandler('rsg_moonshiner:finished_brewing', function()
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you have brewed 1 moonshine, which has been added to your inventory", 3, "success")
		brewing = false
	end, false)
end)

---------------- moonshine fail message
RegisterNetEvent('rsg_moonshine:fail_brewing')
AddEventHandler('rsg_moonshine:fail_brewing', function()
    Citizen.CreateThread(function()
        TriggerEvent("redemrp_notification:start", "you do not have enough rescources, you need 3x water & 3x corn & 3x sugar!", 3, "fail")
		brewing = false
	end, false)
end)