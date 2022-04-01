
addEventHandler("onResourceLoad", root, function()
    outputConsole("Vše je načteno")
end)

function hodMince(player, cmd)
    if(getPlayerMoney(player) >=1) then
        takePlayerMoney(player, 1)

        if (math.random(1,2)==1) then 
            outputChatBox("Hodil jsi Orla a vyhrál jsi 1 minci", player, 255, 255, 255)
            givePlayerMoney(player, 2)
        else
            outputChatBox("Hodil jsi panu a prohrál jsi 1 minci", player, 255,255, 255)
        end
        
    else
        outputChatBox("Nedostatek peněz na nákup", player, 255, 255, 255)
        givePlayerMoney(player, 1)
    end
end
addCommandHandler("hodmince", hodMince)



