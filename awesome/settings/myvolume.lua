local wibox = require("wibox")
local awful = require("awful") 

---{{{ volume widget
volume_widget = wibox.widget.textbox()                                          
volume_widget:set_align("right")                                                
                                                                                
function update_volume(widget)                                                  
    local fd = io.popen("amixer -D pulse sget Master 1+")                       
    local status = fd:read("*all")                                              
    fd:close()                                                                  
    local volume = string.match(status, "%d+%%")                                
    status = string.match(status, "%[(o[^%]]*)%]")                              
    if string.find(status, "on", 1, true) then                                  
        volume = " <span> Volume: " .. volume .. " </span>"                     
    else                                                                        
        volume = " <span> Volume:OFF </span>"                                   
    end                                                                         
    widget:set_markup(volume)                                                   
end                                                                             
---}}}                                                                          
                                                                                
update_volume(volume_widget)                                                    
