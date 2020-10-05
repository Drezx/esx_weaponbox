ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-------------------------------------------   Drez#1359   ------------------------------------------------------------------------

ESX.RegisterUsableItem('skrzynkapistolet', function(weapon, ammo)
    local xPlayer = ESX.GetPlayerFromId(source)
    local losoj = math.random(0, 100)
    if losoj > 90 then 
        TriggerClientEvent("esx:showNotification", source, "Rozpakowywujesz ~y~skrzynie~s~...")
        xPlayer.removeInventoryItem('skrzynkapistolet', 1)
        Citizen.Wait(3500)
        xPlayer.addWeapon('WEAPON_PISTOL', 50)
        TriggerClientEvent("esx:showNotification", source, 'Wyjmujesz ze skrzynki ~r~Pistolet~s~')
    elseif losoj < 10 then 
        TriggerClientEvent("esx:showNotification", source, "Rozpakowywujesz ~y~skrzynie~s~...")
        xPlayer.removeInventoryItem('skrzynkapistolet', 1)
        Citizen.Wait(3500)
        TriggerClientEvent("esx:showNotification", source, 'Niestety skrzynka okazała się być ~r~pusta')
    end
end)

----------------------------------------------------------------------------------------------------------------------------------