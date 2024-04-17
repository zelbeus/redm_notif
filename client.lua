function PrepareTexture(dict)
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true) 
        while not HasStreamedTextureDictLoaded(dict) do
            Citizen.Wait(5)
        end
    end
end

RegisterNetEvent('Notification:ShowAdvancedNotification', function(title, subTitle, dict, icon, duration, color)
    PrepareTexture(dict)
    exports.redm_notif.ShowAdvancedNotification(0, title, subTitle, dict, icon, duration, color)
    SetStreamedTextureDictAsNoLongerNeeded(dict)
end)

RegisterNetEvent('Notification:ShowLocationNotification', function(text, location, duration)
    exports.redm_notif.ShowLocationNotification(0, text, location, duration)
end)

RegisterNetEvent('Notification:ShowTooltip', function(text, duration)
    exports.redm_notif.ShowTooltip(0, text, duration)
end)

RegisterNetEvent('Notification:ShowSimpleRightText', function(text, duration)
    exports.redm_notif.ShowSimpleRightText(0, text, duration)
end)

RegisterNetEvent('Notification:ShowObjective', function(text, duration)
    exports.redm_notif.ShowObjective(0, text, duration)
end)

RegisterNetEvent('Notification:ShowTopNotification', function(title, subtext, duration)
    exports.redm_notif.ShowTopNotification(0, title, subtext, duration)
end)

RegisterNetEvent('Notification:ShowAdvancedRightNotification', function(text, dict, icon, text_color, duration)
    PrepareTexture(dict)
    exports.redm_notif.ShowAdvancedRightNotification(0, text, dict, icon, text_color, duration)
    SetStreamedTextureDictAsNoLongerNeeded(dict)
end)

RegisterNetEvent('Notification:ShowBasicTopNotification', function(text, duration)
    exports.redm_notif.ShowBasicTopNotification(0, text, duration)
end)

RegisterNetEvent('Notification:ShowSimpleCenterText', function(text, duration, color)
    exports.redm_notif.ShowSimpleCenterText(0, text, duration, color)
end)