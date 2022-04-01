local mainWindow
local mainText = "nějaký text"

function createWindow()
    if (mainWindow) then 
        if (isElement (mainWindow)) then 
            destroyElement(mainWindow)
        end
        mainWindow = nil
    else

        local screenW, screenH = guiGetScreenSize()
        mainWindow = guiCreateWindow((screenW - 597) / 2, (screenH - 350) / 2, 597, 350, "", false)
        guiWindowSetSizable(mainWindow, false)

        windowMainTextPole = guiCreateMemo(9, 26, 578, 314, mainText, false, mainWindow)   
    end 
end
  
  function onLoad()
    bindKey("Q", "down", createWindow)
  end
addEventHandler("onClientResourceStart", resourceRoot, onLoad)
