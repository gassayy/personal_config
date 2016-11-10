local awful = require("awful")

-- LAYOUTS
layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier
}

-- TAGS (aka screens)
-- two options, for single or dual display
tags = {}
if screen.count() == 1 then
    tags1_1 = {
              names  = { "[terminal]", "[web]", "[work]" },
              layout = { layouts[2], layouts[2], layouts[2] }
              }
              tags[1] = awful.tag(tags1_1.names, 1, tags1_1.layout)
else
    tags2_1 = {
               names  = { "[terminal-1]", "[web-1]", "[work-1]", "[dev-1]" },
               layout = { layouts[2], layouts[2], layouts[2], layouts[2] }
              }
    tags2_2 = {
              names  = { "[terminal-2]", "[web-2]", "[work-2]", "[dev-2]" },
              layout = { layouts[2], layouts[2], layouts[2], layouts[2] }
               }
    tags[1] = awful.tag(tags2_1.names, 1, tags2_1.layout)
    tags[2] = awful.tag(tags2_2.names, 2, tags2_2.layout)
    
    if screen.count() == 3 then
        tags2_3 = {
                names  = { "[terminal-3]", "[web-3]", "[work-3]", "[dev-3]" },
                layout = { layouts[2], layouts[2], layouts[2], layouts[2] }
              }
        tags[3] = awful.tag(tags2_3.names, 3, tags2_3.layout)
    end
end
--- }}}

