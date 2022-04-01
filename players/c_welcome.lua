function snbl(posx, posy, posz)
    local bloqueo = playSound("pisnicka.mp3")
    setSoundMaxDistance(bloqueo, 20)
    setSoundVolume(bloqueo, 0.8)
    if bloqueo then 
        outputChatBox("hrajeme")
    else
        outputChatBox("nehrajeme")
    end
end
addEvent("playBLQ", true) 
addEventHandler("playBLQ", root, snbl) 
