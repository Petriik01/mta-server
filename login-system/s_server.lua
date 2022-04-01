db = dbConnect( "mysql", "dbname=mta;host=localhost;charset=utf8", "root", "", "share=1")

addEventHandler('onPlayerJoin', root, function ()
    
    setPlayerBlurLevel(source, 0)
    setPlayerHudComponentVisible(source, "area_name", false)
    setPlayerHudComponentVisible(source, "radar", false)
    setCameraMatrix (source, 236.1396484375, -81.486328125, 10, 0, 100, -20)
    fadeCamera(source, true)
    outputChatBox("Ahoj! Vítej na serveru "..getServerName(), source, 255,255,255, true)
end)

function everythingOk(username, password)
    local username = username
    local password = password
    local isPlayerAlreadyRegistered = dbQuery(db, 'SELECT * FROM users WHERE username=? AND password=?', username, password)
    local isAccountExisting = dbPoll(isPlayerAlreadyRegistered, -1)

    if #isAccountExisting > 0 then 
        outputChatBox("Tento účet už existuje, zkus si vymyslet jiný!", client, 255,0,0)
    else
        dbExec(db, 'INSERT INTO users(username, password, role) VALUES(?, ?, ?)', username, password, "1");
        outputChatBox("Byl jsi úspěšně registrován, nyní se přihláš", client, 0,255,0)
    end
end
addEvent("playerJoinServer", true)
addEventHandler("playerJoinServer", getRootElement(), everythingOk)

-- register end

-- login start
function loginPlayerNow(thePlayer, username, password)
    local username = username
    local password = password 

    local checkaccount = dbQuery(db, 'SELECT * FROM `users` WHERE username=? AND password=?', username, password)
    local result = dbPoll(checkaccount, -1)
    if #result > 0 then 
        outputChatBox("Přilhášeno úspěšně", client, 0,50,255)
        spawnPlayer(client, 0, 0, 5)
        fadeCamera(client,true)
        setCameraTarget(client,client)
        setElementModel(client,0)
        triggerClientEvent("turnOffGUI", getRootElement())
        setElementData(thePlayer, "admin", level)
    else 
        outputChatBox("Špatné přihlašovací údaje!", client, 255,0,0)
    end
end
addEvent("playerLogin", true)
addEventHandler("playerLogin", getRootElement(), loginPlayerNow) 


-- login end


function checkIfAccountExist(player, cmd, account)
    if hasObjectPermissionTo(player, "function.banPlayer") then 
        if account and account ~= "" then 
            if getAccount(account) then 
                outputChatBox("Účet "..account.." exituje", player, 0,255,0)
            else
                outputChatBox("Účet "..account.." neexituje", player, 255,0,0)
            end
        else
            outputChatBox("SYNTAX: /"..cmd.." [účet]", player, 255,255,255)
        end
    end
end
addCommandHandler("checkaccount", checkIfAccountExist)
