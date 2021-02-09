ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('pistolbox', function(weapon, ammo)
    local xPlayer = ESX.GetPlayerFromId(source)
    local rand = math.random(0, 100)
      
    if rand > 90 then 
        TriggerClientEvent("esx:showNotification", source, "Unpacking...")
        xPlayer.removeInventoryItem('pistolbox', 1)
        Wait(3500)
        xPlayer.addWeapon('WEAPON_PISTOL', 50)
        TriggerClientEvent("esx:showNotification", source, 'You got ~y~PISTOL')
    elseif rand < 10 then 
        TriggerClientEvent("esx:showNotification", source, "Unpacking...")
        xPlayer.removeInventoryItem('pistolbox', 1)
        Wait(3500)
        TriggerClientEvent("esx:showNotification", source, 'Ups...box is ~r~empty')
    end
end)
