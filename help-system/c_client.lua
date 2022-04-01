
GUIEditor = {
    tab = {},
    label = {},
    gridlist = {},
    button = {},
    memo = {}
}

function napovedaWindow()
    if (mainWindow) then 
        if (isElement(mainWindow)) then 
            destroyElement(mainWindow)
        end
        mainWindow = nil 
    else
        mainWindow = guiCreateWindow(336, 226, 658, 406, "Nápověda", false)
        guiWindowSetSizable(mainWindow, false)
        guiSetAlpha(mainWindow, 0.89)

        tabPanelMain = guiCreateTabPanel(17, 33, 622, 359, false, mainWindow)

        GUIEditor.tab[1] = guiCreateTab("Hlavni okno", tabPanelMain)

        GUIEditor.label[1] = guiCreateLabel(44, 119, 162, 18, "Spawni si náhodné vozidlo ;)", false, GUIEditor.tab[1])
        buttonSpawnVehicle = guiCreateButton(41, 147, 165, 41, "Spawnout vozidlo", false, GUIEditor.tab[1])
        guiSetProperty(buttonSpawnVehicle, "NormalTextColour", "FFAAAAAA")
        tabpanelLokace = guiCreateTabPanel(262, 35, 350, 290, false, GUIEditor.tab[1])

        GUIEditor.tab[2] = guiCreateTab("Los Santos", tabpanelLokace)

        buttonLosSantosRadnice = guiCreateButton(22, 20, 131, 55, "Radnice", false, GUIEditor.tab[2])
        guiSetProperty(buttonLosSantosRadnice, "NormalTextColour", "FFAAAAAA")
        buttonLosSantosHospital = guiCreateButton(177, 20, 133, 55, "Nemocnice", false, GUIEditor.tab[2])
        guiSetProperty(buttonLosSantosHospital, "NormalTextColour", "FFAAAAAA")
        buttonLosSantosVinewood = guiCreateButton(22, 89, 131, 58, "Vinewood", false, GUIEditor.tab[2])
        guiSetProperty(buttonLosSantosVinewood, "NormalTextColour", "FFAAAAAA")
        buttonLosSantosTrain = guiCreateButton(177, 91, 133, 56, "Vlakové nádraží", false, GUIEditor.tab[2])
        guiSetProperty(buttonLosSantosTrain, "NormalTextColour", "FFAAAAAA")
        GUIEditor.memo[1] = guiCreateMemo(11, 157, 329, 98, "Los Santos je největší a nejlidnatější město ve státě. Nachází se v jihovýchodní části San Andreas, jižně od\nRed County a východně od Flint County. Los Santos je hlavnísvětové centrum pro film, televizi a další související zábavní průmysl. Najdete zde kina restaurace apod.", false, GUIEditor.tab[2])
        guiMemoSetReadOnly(GUIEditor.memo[1], true)

        GUIEditor.tab[3] = guiCreateTab("Las Venturas", tabpanelLokace)

        buttonLasVenturasRadnice = guiCreateButton(22, 20, 131, 55, "Radnice", false, GUIEditor.tab[3])
        guiSetProperty(buttonLasVenturasRadnice, "NormalTextColour", "FFAAAAAA")
        buttonLasVenturasHospital = guiCreateButton(177, 20, 133, 55, "Nemocnice", false, GUIEditor.tab[3])
        guiSetProperty(buttonLasVenturasHospital, "NormalTextColour", "FFAAAAAA")
        buttonLasVenturasAirport = guiCreateButton(22, 89, 131, 58, "Letiště", false, GUIEditor.tab[3])
        guiSetProperty(buttonLasVenturasAirport, "NormalTextColour", "FFAAAAAA")
        buttonLasVenturasTrain = guiCreateButton(177, 91, 133, 56, "Vlakové nádraží", false, GUIEditor.tab[3])
        guiSetProperty(buttonLasVenturasTrain, "NormalTextColour", "FFAAAAAA")
        GUIEditor.memo[2] = guiCreateMemo(11, 157, 329, 98, "Las Venturas je město hazardu, které se nachází v pouštní oblasti na severovýchodě San Andreas, na východě je propojené se sousedním Bone County, s Los Santos přímo na jih a San Fierro na jihozápad. Je známé také díky své ulici Script, kde se nachází mhoho kasín.", false, GUIEditor.tab[3])
        guiMemoSetReadOnly(GUIEditor.memo[2], true)

        GUIEditor.tab[4] = guiCreateTab("San Fierro", tabpanelLokace)

        buttonSanFierroRadnice = guiCreateButton(22, 20, 131, 55, "Radnice", false, GUIEditor.tab[4])
        guiSetProperty(buttonSanFierroRadnice, "NormalTextColour", "FFAAAAAA")
        buttonSanFierroHospital = guiCreateButton(177, 20, 133, 55, "Nemocnice", false, GUIEditor.tab[4])
        guiSetProperty(buttonSanFierroHospital, "NormalTextColour", "FFAAAAAA")
        buttonSanFierroAirport = guiCreateButton(22, 89, 131, 58, "Letiště", false, GUIEditor.tab[4])
        guiSetProperty(buttonSanFierroAirport, "NormalTextColour", "FFAAAAAA")
        buttonSanFierroTrain = guiCreateButton(177, 91, 133, 56, "Vlakové nádraží", false, GUIEditor.tab[4])
        guiSetProperty(buttonSanFierroTrain, "NormalTextColour", "FFAAAAAA")
        GUIEditor.memo[3] = guiCreateMemo(11, 157, 329, 98,  "San Fierro je druhé největší město v populaci a nejmenší v oblasti v San Andreas. San Fierro má většinovou asijskou populaci a je velmi rozmanité, ekonomicky i etnicky. Je to nejvíce urbanizované město a nachází se \nna poloostrově v západní části státu.", false, GUIEditor.tab[4])
        guiMemoSetReadOnly(GUIEditor.memo[3], true)

        GUIEditor.tab[5] = guiCreateTab("Red County", tabpanelLokace)

        buttonCountyRadnice = guiCreateButton(22, 20, 131, 55, "Radnice Blueberry", false, GUIEditor.tab[5])
        guiSetProperty(buttonCountyRadnice, "NormalTextColour", "FFAAAAAA")
        buttonCountyHospital = guiCreateButton(177, 20, 133, 55, "Nemocnice Montgomery", false, GUIEditor.tab[5])
        guiSetProperty(buttonCountyHospital, "NormalTextColour", "FFAAAAAA")
        buttonCountyBank = guiCreateButton(22, 89, 131, 58, "Banka Palomino", false, GUIEditor.tab[5])
        guiSetProperty(buttonCountyBank, "NormalTextColour", "FFAAAAAA")
        GUIEditor.button[1] = guiCreateButton(177, 91, 133, 56, "Benzínka Montgomery", false, GUIEditor.tab[5])
        guiSetProperty(GUIEditor.button[1], "NormalTextColour", "FFAAAAAA")
        GUIEditor.memo[4] = guiCreateMemo(11, 157, 329, 98, "Red County je venkovská oblast, která obsahuje mnoho kopců a lesů a protéká jí potok připomínající skutečnou řeku Kern, od Palomino Creek na východě po Flint County na západě. V Red County je také mnoho farem, jako je Blueberry Acres a Hilltop Farm.", false, GUIEditor.tab[5])
        guiMemoSetReadOnly(GUIEditor.memo[4], true)


        GUIEditor.label[2] = guiCreateLabel(298, 9, 205, 16, "Spawn do různých měst na mapě", false, GUIEditor.tab[1])

        GUIEditor.tab[6] = guiCreateTab("Pravidla", tabPanelMain)

        GUIEditor.memo[5] = guiCreateMemo(9, 8, 603, 317, "Pravidla tohoto serveru \n\n\n1) adfasdfasdfasasdfsa\n\n3) adfdasfasfasdfasfasdfa\n\n\n4) fd safasdfasfasdfasas\n\n5) asdfasfsdafasddfafs\n\n6) sadfdasfas fasdfasfasfasfasf\n\n7) fas dfsadfsafsdfdfasfasdfasfasdf", false, GUIEditor.tab[6])
        guiMemoSetReadOnly(GUIEditor.memo[5], true)

        GUIEditor.tab[7] = guiCreateTab("Příkazy", tabPanelMain)

        GUIEditor.gridlist[1] = guiCreateGridList(10, 7, 602, 318, false, GUIEditor.tab[7])
        guiGridListAddColumn(GUIEditor.gridlist[1], "příkaz", 0.5)
        guiGridListAddColumn(GUIEditor.gridlist[1], "podrobnosti", 0.5)
        for i = 1, 3 do
            guiGridListAddRow(GUIEditor.gridlist[1])
        end
        guiGridListSetItemText(GUIEditor.gridlist[1], 0, 1, "/pm", false, false)
        guiGridListSetItemText(GUIEditor.gridlist[1], 0, 2, "napíšeš PM druhému hráči", false, false)
        guiGridListSetItemText(GUIEditor.gridlist[1], 1, 1, "/ame", false, false)
        guiGridListSetItemText(GUIEditor.gridlist[1], 1, 2, "-", false, false)
        guiGridListSetItemText(GUIEditor.gridlist[1], 2, 1, "/do", false, false)
        guiGridListSetItemText(GUIEditor.gridlist[1], 2, 2, "-", false, false)   
        
        -- close window button
        buttonCloseWindow = guiCreateButton(543, 23, 96, 29, "Zavřít", false, mainWindow)
        guiSetProperty(buttonCloseWindow, "NormalTextColour", "FFAAAAAA") 

        addEventHandler("onClientGUIClick", buttonCloseWindow, closeWindowByButton, false)
        addEventHandler("onClientGUIClick", buttonSpawnVehicle, spawnRandomVehicleForPlayer, false)
        
        --- activation for every single button :/
        -- Los Santos
        addEventHandler("onClientGUIClick", buttonLosSantosRadnice, setPlayerPositionLosSantosRadnice, false)
        addEventHandler("onClientGUIClick", buttonLosSantosHospital, setPlayerPositionLosSantosHospital, false)
        addEventHandler("onClientGUIClick", buttonLosSantosVinewood, setPlayerPositionLosSantosVinewood, false)
        addEventHandler("onClientGUIClick", buttonLosSantosTrain, setPlayerPositionLosSantosTrain, false)
        -- Las Venturas
        addEventHandler("onClientGUIClick", buttonLasVenturasRadnice, setPlayerPositionLasVenturasRadnice, false)
        addEventHandler("onClientGUIClick", buttonLasVenturasHospital, setPlayerPositionLasVenturasHospital, false)
        addEventHandler("onClientGUIClick", buttonLasVenturasAirport, setPlayerPositionLasVenturasAirport, false)
        addEventHandler("onClientGUIClick", buttonLasVenturasTrain, setPlayerPositionLasVenturasTrain, false)
        --San Fierro
        addEventHandler("onClientGUIClick", buttonSanFierroRadnice, setPlayerPositionSanFierroRadnice, false)
        addEventHandler("onClientGUIClick", buttonSanFierroHospital, setPlayerPositionSanFierroHospital, false)
        addEventHandler("onClientGUIClick", buttonSanFierroAirport, setPlayerPositionSanFierroAirport, false)
        addEventHandler("onClientGUIClick", buttonSanFierroTrain, setPlayerPositionSanFierroTrain, false)
        --Red County
        addEventHandler("onClientGUIClick", buttonCountyRadnice, setPlayerPositionRedCountyRadnice, false)
        addEventHandler("onClientGUIClick", buttonCountyHospital, setPlayerPositionRedCountyHospital, false)
        addEventHandler("onClientGUIClick", buttonCountyBank, setPlayerPositionRedCountyBank, false)
        addEventHandler("onClientGUIClick", GUIEditor.button[1], setPlayerPositionRedCountySecret, false)
         
    end
end

function loadThisCode()
    addCommandHandler("helper", napovedaWindow)
end
addEventHandler("onClientResourceStart", resourceRoot, loadThisCode)

function closeWindowByButton()
    if (mainWindow) then 
        if (isElement(mainWindow)) then 
            destroyElement(mainWindow)
        end
        mainWindow = nil 
    end
end
addEventHandler("onClientResourceStart", resourceRoot, closeWindowByButton)

function spawnRandomVehicleForPlayer()
    triggerServerEvent("spawnRandomVeh", localPlayer)
end

--Los Santos
function setPlayerPositionLosSantosRadnice()
    outputChatBox ("Byl si teleportován do Los Santos, #FFC000 Radnice.",255,255,255,true) 
    triggerServerEvent("LosSantosRadniceTP",localPlayer)
end

function setPlayerPositionLosSantosHospital()
    outputChatBox ("Byl si teleportován do Los Santos, #FFC000 Nemocnice.",255,255,255,true) 
    triggerServerEvent("LosSantosNemocniceTP",localPlayer)
end

function setPlayerPositionLosSantosVinewood()
    outputChatBox ("Byl si teleportován do Los Santos, #FFC000 Vinewood.",255,255,255,true) 
    triggerServerEvent("LosSantosVinewodTP",localPlayer)
end

function setPlayerPositionLosSantosTrain()
    outputChatBox ("Byl si teleportován do Los Santos, #FFC000 Vlakové nádraží.",255,255,255,true) 
    triggerServerEvent("LosSantosTrainTP",localPlayer)
end
-- Las Venturas
function setPlayerPositionLasVenturasRadnice()
    outputChatBox ("Byl si teleportován do Las Venturas, #FFC000 Radnice.",255,255,255,true) 
    triggerServerEvent("LasVenturasRadniceTP",localPlayer)
end

function setPlayerPositionLasVenturasHospital()
    outputChatBox ("Byl si teleportován do Las Venturas, #FFC000 Nemocnice.",255,255,255,true) 
    triggerServerEvent("LasVenturasHospitalTP",localPlayer)
end

function setPlayerPositionLasVenturasAirport()
    outputChatBox ("Byl si teleportován do Las Venturas, #FFC000 Letiště.",255,255,255,true) 
    triggerServerEvent("LasVenturasAirportTP",localPlayer)
end

function setPlayerPositionLasVenturasTrain()
    outputChatBox ("Byl si teleportován do Las Venturas, #FFC000 Vlakové nádraží.",255,255,255,true) 
    triggerServerEvent("LasVenturasTrainTP",localPlayer)
end
-- San Fierro
function setPlayerPositionSanFierroRadnice()
    outputChatBox ("Byl si teleportován do San Fierra, #FFC000 Radnice.",255,255,255,true) 
    triggerServerEvent("SanFierroRadniceTP",localPlayer)
end

function setPlayerPositionSanFierroHospital()
    outputChatBox ("Byl si teleportován do San Fierra, #FFC000 Nemocnice.",255,255,255,true) 
    triggerServerEvent("SanFierroHospitalTP",localPlayer)
end

function setPlayerPositionSanFierroAirport()
    outputChatBox ("Byl si teleportován do San Fierra, #FFC000 Letiště.",255,255,255,true) 
    triggerServerEvent("SanFierroAirportTP",localPlayer)
end

function setPlayerPositionSanFierroTrain()
    outputChatBox ("Byl si teleportován do San Fierra, #FFC000 Vlakové nádraží.",255,255,255,true) 
    triggerServerEvent("SanFierroTrainTP",localPlayer)
end

-- Red County
function setPlayerPositionRedCountyRadnice()
    outputChatBox ("Byl si teleportován do Red County, #FFC000 Radnice Blueberry.",255,255,255,true) 
    triggerServerEvent("CountyRadniceTP",localPlayer)
end

function setPlayerPositionRedCountyHospital()
    outputChatBox ("Byl si teleportován do Red County, #FFC000 Nemocnice Montgomery.",255,255,255,true) 
    triggerServerEvent("CountyHospitalTP",localPlayer)
end

function setPlayerPositionRedCountyBank()
    outputChatBox ("Byl si teleportován do Red County, #FFC000 Banka Palomino Creek.",255,255,255,true) 
    triggerServerEvent("CountyBankTP",localPlayer)
end

function setPlayerPositionRedCountySecret()
    outputChatBox ("Byl si teleportován do Red County, #FFC000 Vinařský sklípek Jiřího lásky.",255,255,255,true) 
    triggerServerEvent("CountySecretTP",localPlayer)
end