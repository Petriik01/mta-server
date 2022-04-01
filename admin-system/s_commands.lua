local places = {
    ["Blueberry"] = { 327.9677734375, -65.3466796875, 1.4466429948807 },
    ["Montgomery"] = { 1369.4052734375, 272.091796875, 19.42813873291 },
    ["Palomino"] = { 2284.5, 33.623046875, 26.484375 },
    ["spawn"] = { 0, 0, 5 },
}

function teleportToPlace(player, cmd, target)
    if not target then 
        outputChatBox("SYNTAX: /"..cmd.." [místo]", player, 255, 255, 255)
        return false 
    end
    if target and places[target] then
        setElementPosition(player, unpack(places[target]))
        outputChatBox("Byl jsi teleportován na pozici #FFC000" .. target, player, 255, 255, 255, true)
    else
        outputChatBox("Tato pozice neexistuje!", player, 255, 255, 255)
    end
end
addCommandHandler("setpos", teleportToPlace)


function teleportToAnotherPlayer(thePlayer, cmd, target, ...)

	local x,y,z = getElementPosition(getPlayerFromName(target))

    if x and y and z and target then

        setElementPosition(thePlayer, x+2, y, z)
        outputChatBox("Byl jsi teleportován na hráče "..target, thePlayer, 255, 255, 45)
    else
        outputChatBox("Zadaný hráč nebyl nalezen", thePlayer, 255, 255, 255)
        return false 
    end

end
addCommandHandler("sendto", teleportToAnotherPlayer)

function teleportX(player, cmd, sizeX)
    local x,y,z = getElementPosition(player)

    if (tonumber(sizeX)) then 
        setElementPosition(player, x + tonumber(sizeX) or 0, y, z)
    else 
        outputChatBox("SYNTAX: /"..cmd.. " [hodnota]", player, 255, 255, 255)
        return false 
    end
end 
addCommandHandler("x", teleportX)

function teleportY(player, cmd, sizeY)
    local x,y,z = getElementPosition(player)

    if (tonumber(sizeY)) then 
        setElementPosition(player, x, y+ tonumber(sizeY) or 0, z)
    else 
        outputChatBox("SYNTAX: /"..cmd.. " [hodnota]", player, 255, 255, 255)
        return false 
    end
end 
addCommandHandler("y", teleportY)


function teleportY(player, cmd, sizeZ)
    local x,y,z = getElementPosition(player)

    if (tonumber(sizeZ)) then 
        setElementPosition(player, x, y, z + tonumber(sizeZ) or 0)
    else 
        outputChatBox("SYNTAX: /"..cmd.. " [hodnota]", player, 255, 255, 255)
        return false 
    end
end 
addCommandHandler("z", teleportY)
