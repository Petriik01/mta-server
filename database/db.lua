
local db 

addEventHandler("onResourceStart",resourceRoot, function()

    db = dbConnect( "mysql", "dbname=vozidla;host=localhost;charset=utf8", "root", "")
    if (not db) then
        outputDebugString("Error: Failed to establish connection to the MySQL database server")
    else
        outputDebugString("Success: Connected to the MySQL database server")
    end

end)

function getConnection()
    return db
end