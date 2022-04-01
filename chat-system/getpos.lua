function getPlayerPositionForPlayer(player)
    local x, y, z = getElementPosition(player)
    local rotX, rotY, rotZ = getElementRotation(player)
    outputChatBox("Tvá lokace je: "..x..", "..y..", "..z, player, 255,255,255)
    outputChatBox("Rotace: "..rotX..", "..rotY..", "..rotZ, player, 255,255,255)
end
addCommandHandler("getpos", getPlayerPositionForPlayer)