peds = { 
    {115, "John", 1, 1, 3, 180} 
    } 
      
for i = 1, #peds do 
    ped = createPed(peds[i][1], peds[i][3], peds[i][4], peds[i][5]) 
    setElementRotation(ped, 0, 0, peds[i][6]) 
    setElementData(ped, "name", peds[i][2], true)
    setElementFrozen(ped, true) 
end

function skylineChosen()
    skylineR34 = createVehicle(562,4,4,3) 
end
addEvent("SkylineGTR",true)
addEventHandler("SkylineGTR",getRootElement(),skylineChosen)

function fastLambo()
    fastlambospawn = createVehicle(411,-4,-4,3) 
end
addEvent("FastLambo",true)
addEventHandler("FastLambo",getRootElement(),fastLambo)