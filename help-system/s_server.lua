local vehicles = {400, 411, 518, 507, 579, 402, 535, 415, 434, 429}

function randomVehicleSpawnDone(thePlayer)

    local x,y,z = getElementPosition(client)
    if vehicles then 
        randomVehicleSpawn = math.random(#vehicles)
        vehicleFinalSpawn = vehicles[randomVehicleSpawn]

        if randomVehicleSpawn then 
            createVehicle(vehicleFinalSpawn, x+2, y, z)
            outputChatBox("Vozidlo bylo spawnuto vedle tebe.", thePlayer, 255, 255, 45)
        end
    end
end
addEvent("spawnRandomVeh", true)
addEventHandler("spawnRandomVeh", getRootElement(), randomVehicleSpawnDone)


-- Los Santos
function teleportationLSRadnice()
    setElementPosition(client, 1481.9931640625, -1743.220703125, 13.273935317993)
end
addEvent("LosSantosRadniceTP",true)
addEventHandler("LosSantosRadniceTP",getRootElement(),teleportationLSRadnice)

function teleportationLSHospital()
    setElementPosition(client, 1186.208984375, -1330.56640625, 13.291386604309)
end
addEvent("LosSantosNemocniceTP",true)
addEventHandler("LosSantosNemocniceTP",getRootElement(),teleportationLSHospital)

function teleportationLSVinewod()
    setElementPosition(client, 1377.7236328125, -904.8359375, 35.643558502197)
end
addEvent("LosSantosVinewodTP",true)
addEventHandler("LosSantosVinewodTP",getRootElement(),teleportationLSVinewod)

function teleportationLSTrain()
    setElementPosition(client, 1780.1591796875, -1931.8642578125, 13.113827705383)
end
addEvent("LosSantosTrainTP",true)
addEventHandler("LosSantosTrainTP",getRootElement(),teleportationLSTrain)


-- Las Venturas
function teleportationLVRadnice()
    setElementPosition(client, 2375.3701171875, 2470.2314453125, 10.8203125)
end
addEvent("LasVenturasRadniceTP", true)
addEventHandler("LasVenturasRadniceTP", getRootElement(),teleportationLVRadnice)

function teleportationLVHospital()
    setElementPosition(client, 1609.05859375, 1823.5849609375, 10.8203125)
end
addEvent("LasVenturasHospitalTP", true)
addEventHandler("LasVenturasHospitalTP", getRootElement(),teleportationLVHospital)

function teleportationLVAirport()
    setElementPosition(client, 1694.6396484375, 1446.9208984375, 10.763206481934)
end
addEvent("LasVenturasAirportTP", true)
addEventHandler("LasVenturasAirportTP", getRootElement(),teleportationLVAirport)

function teleportationLVTrain()
    setElementPosition(client, 2841.50390625, 1290.263671875, 11.390625)
end
addEvent("LasVenturasTrainTP", true)
addEventHandler("LasVenturasTrainTP", getRootElement(),teleportationLVTrain)

-- San Fierro 

function teleportationSFTrain()
    setElementPosition(client, -1974.1630859375, 138.064453125, 27.6875)
end
addEvent("SanFierroTrainTP", true)
addEventHandler("SanFierroTrainTP", getRootElement(), teleportationSFTrain)

function teleportationSFRadnice()
    setElementPosition(client, -2049.205078125, 459.3076171875, 35.171875)
end
addEvent("SanFierroRadniceTP", true)
addEventHandler("SanFierroRadniceTP", getRootElement(), teleportationSFRadnice)

function teleportationSFHospital()
    setElementPosition(client, -2667.447265625, 604.845703125, 14.453125)
end
addEvent("SanFierroHospitalTP", true)
addEventHandler("SanFierroHospitalTP", getRootElement(), teleportationSFHospital)

function teleportationSFAirport()
    setElementPosition(client, -1553.294921875, -440.0458984375, 6)
end
addEvent("SanFierroAirportTP", true)
addEventHandler("SanFierroAirportTP", getRootElement(), teleportationSFAirport)

-- Red County

function teleportationRCRadnice()
    setElementPosition(client, 207.978515625, -63.8369140625, 1.578125)
end
addEvent("CountyRadniceTP", true)
addEventHandler("CountyRadniceTP", getRootElement(), teleportationRCRadnice)

function teleportationRCHospital()
    setElementPosition(client, 1248.3564453125, 333.8779296875, 19.5546875)
end
addEvent("CountyHospitalTP", true)
addEventHandler("CountyHospitalTP", getRootElement(), teleportationRCHospital)

function teleportationRCBank()
    setElementPosition(client, 2301.8994140625, -16.642578125, 26.484375)
end
addEvent("CountyBankTP", true)
addEventHandler("CountyBankTP", getRootElement(), teleportationRCBank)

function teleportationRCSecret()
    setElementPosition(client, 1399.2900390625, 456.22265625, 20.171976089478)
end
addEvent("CountySecretTP", true)
addEventHandler("CountySecretTP", getRootElement(), teleportationRCSecret)


