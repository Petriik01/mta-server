function toggleCursor () 
    showCursor(not isCursorShowing()) 
    end 
      
    addEventHandler ("onClientResourceStart",resourceRoot,function() 
    bindKey("m", "down", toggleCursor) 
end) 