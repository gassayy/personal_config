local awful = require("awful")
local beautiful = require("beautiful")

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     size_hints_honor = false } },
        {
                rule = { class = "Firefox"},
                properties= { tag = tags[1][2] },
        },
        {
                rule = { class = "sublime_text"},
                properties= { tag = tags[1][3] },
        },
        {
                rule = { class = "eclipse"},
                properties= { tag = tags[1][4] },
        },
}
-- }}}


