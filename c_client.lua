-- login window 
GUIEditor = {
    button = {},
    window = {},
    edit = {}
}
local sound = playSound("login-song.mp3", true)


addEventHandler("onClientResourceStart", resourceRoot,
    function()
        local screenW, screenH = guiGetScreenSize()
        GUIEditor.window[1] = guiCreateWindow((screenW - 304) / 2, (screenH - 198) / 2, 304, 198, "Login system | Petriik", false)
        guiWindowSetSizable(GUIEditor.window[1], false)

        username = guiCreateEdit(28, 29, 243, 32, "Jméno", false, GUIEditor.window[1])
        password = guiCreateEdit(29, 81, 242, 35, "Heslo", false, GUIEditor.window[1])
        

        GUIEditor.button[1] = guiCreateButton(24, 141, 121, 39, "Přihlásit", false, GUIEditor.window[1])
        addEventHandler("onClientGUIClick", GUIEditor.button[1], loginPlayer, false)
        

        guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFAAAAAA")
        GUIEditor.button[2] = guiCreateButton(165, 143, 116, 37, "Registrovat", false, GUIEditor.window[1])

        addEventHandler("onClientGUIClick", GUIEditor.button[2], registerPlayer, false)
        guiSetProperty(GUIEditor.button[2], "NormalTextColour", "FFAAAAAA")  
        showCursor(true)  
        
        setSoundVolume(sound, 0.9)

    end
)

function registerPlayer()
    local username = guiGetText(username)
    local password = guiGetText(password)
    
    if (password and username) then 
        triggerServerEvent("playerJoinServer", localPlayer, username, password)
    else
        outputChatBox("Naskytla se chyba!")
    end
end

function loginPlayer()
    local username = guiGetText(username)
    local password = guiGetText(password)
    local role

    triggerServerEvent("playerLogin", localPlayer, username, password)

end

function guiSettingsOff()
        guiSetVisible(GUIEditor.window[1], false)
        stopSound(sound)
        
        showCursor(false)
end
addEvent("turnOffGUI", true)
addEventHandler("turnOffGUI", getRootElement(), guiSettingsOff)



