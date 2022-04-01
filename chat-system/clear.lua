function clearChatForPlayer(player, cmd)
    for i= 1,20 do 
        outputChatBox(" ", root)
    end
end
addCommandHandler("cls", clearChatForPlayer)