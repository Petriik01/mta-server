function parseMe(thePlayer, command, ...)
    local contentMe = table.concat({...}, " ")
    outputChatBox("★ " .. getPlayerName(thePlayer) .. " řekl " .. contentMe, thePlayer, 255, 15, 0)
end
addCommandHandler("ame", parseMe)