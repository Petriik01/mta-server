function parseDo(thePlayer, cmd, ...)
    local content = table.concat({...}, " ")
    outputChatBox("* " .. content .. " (( " .. getPlayerName(thePlayer) .. " ))", thePlayer, 255, 45, 0)
end
addCommandHandler("do", parseDo)