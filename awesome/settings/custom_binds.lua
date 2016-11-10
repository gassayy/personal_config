local awful = require("awful")

-- GLOBAL KEYBINDINGS
globalkeys = awful.util.table.join(globalkeys,
    --move floater
    awful.key({ modkey }, "Up",    function () awful.client.moveresize(  0, -20,   0,   0) end),
    --MULTIMEDIA KEYS
    awful.key({ }, "XF86AudioRaiseVolume", function() 
        awful.util.spawn("amixer -D pulse set Master 1+ 5%+", false) 
        update_volume(volume_widget) 
        end),
    awful.key({ }, "XF86AudioLowerVolume", function () 
        awful.util.spawn("amixer -D pulse set Master 1+ 5%-", false) 
        update_volume(volume_widget)
        end),
    awful.key({ }, "XF86MonBrightnessDown", function () 
        awful.util.spawn(brightness_cmd .. "-inc 10") end),
    awful.key({ }, "XF86MonBrightnessUp", function () 
        awful.util.spawn(brightness_cmd .. " -dec 10") end),
    awful.key({ }, "XF86AudioMute", function () 
        awful.util.spawn("amixer -D pulse set Master 1+ toggle") 
        update_volume(volume_widget)
        end),
    awful.key({ }, "XF86Launch4", function () 
        awful.util.spawn(hibernate_cmd) end),
    --PROMPT EXECUTE
    awful.key({ modkey },            "q",     function () mypromptbox[mouse.screen]:run() end),
    --MOD+TAB -- instead of switching to last client, rotate trough all clients
    awful.key({ modkey }, "Tab",
        function ()
            awful.client.focus.byidx(1)
            if client.focus then
                client.focus:raise()
            end
        end)
)

-- CLIENT KEYS (work on current clients-windows)
clientkeys = awful.util.table.join(clientkeys,
    --KILL active client
    awful.key({ modkey, "Shift"   }, "#52",      function (c) c:kill()                         end)
)

-- CLIENT BUTTONS BINDINGS
--clientbuttons = awful.util.table.join(clientbuttons
--)
