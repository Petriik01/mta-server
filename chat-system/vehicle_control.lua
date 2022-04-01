function vehicleEngineControl()
    local vehicle = getPedOccupiedVehicle(localPlayer)

    local engineState

    if engineState then
            if (isElement (engineState)) then 
                destroyElement(engineState)
            end
            engineState = nil
        else
            setVehicleEngineState(vehicle, not getVehicleEngineState(vehicle))
    end 
end

function vehicleEngineControlLoad()
    bindKey("J", "down", vehicleEngineControl)
end
addEventHandler("onClientResourceStart", resourceRoot, vehicleEngineControlLoad)

