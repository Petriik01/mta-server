local tips = {"Ahoj!", "Věděl jsi, že příkazem #FFC300 /pm #FFFFFF napíšeš PMku?", "Věděl jsi že dnes je na serveru " ..getPlayerCount(source).. " hráčů?"}

function toolTips()

    local intervalSeconds = 5   --zde si nastavíte svůj vlastní interval v minutách

    local sumaIntervalSeconds = intervalSeconds * 60000

    local interval = setTimer(toolTips, sumaIntervalSeconds, 1)

      if tips then 
        randomTips = math.random(#tips)

        textTips = tips[randomTips]

        if randomTips then 
            outputChatBox ( textTips, getRootElement() , 255, 255, 255,  true ) 
        end
        resetTimer(interval)
      end 
end 
addEventHandler("onResourceStart", resourceRoot, toolTips)

