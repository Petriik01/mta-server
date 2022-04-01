function pmSystem(player, cmd, target, ...)
    if (not target or not ...) then 
        outputChatBox("SYNTAX: #FFFFFF/" ..cmd.. " [Hráč] [Zpráva]", player, 255, 0, 0, true)
        return false
    end

    local prijemce = getPlayerFromName(target)
    if prijemce then
        local message = table.concat({...}, " ") 
        local prijemceName = getPlayerName(prijemce)
        local playerName = getPlayerName(player)
            
        if (prijemceName == playerName) then
            outputChatBox("Vím, že jsi sám, ale sám sobě opravdu nepiš :(", player, 0, 255, 255)

        else
            outputChatBox("PM pro " .. prijemceName .. ": #FFFFFF " .. message, player, 255, 255, 0, true)
            outputChatBox("PM od " .. playerName .. ": #FFFFFF " .. message, prijemce, 255, 255, 0, true) 
         end
    else
        outputChatBox("Hráče se nepovedlo nalézt, zkus to znovu #FFFFFF" .. target .. "#FF0000 neexistuje", player, 245, 0, 0, true)
    end
end
addCommandHandler("pm", pmSystem)