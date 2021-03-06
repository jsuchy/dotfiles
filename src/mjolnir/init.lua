local application = require "mjolnir.application"
local window = require "mjolnir.window"
local hotkey = require "mjolnir.hotkey"

local cmdShift = { "cmd", "shift" }

hotkey.bind(cmdShift, "M", function()
  local current = window.focusedwindow()
  current:maximize()
end)

hotkey.bind(cmdShift, "H", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0, w = 0.5, h = 1.0})
end)

hotkey.bind(cmdShift, "L", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0.5, y = 0, w = 0.5, h = 1.0})
end)

hotkey.bind(cmdShift, "J", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0.5, w = 1.0, h = 0.5})
end)

hotkey.bind(cmdShift, "K", function()
  local current = window.focusedwindow()
  current:movetounit({x = 0, y = 0, w = 1.0, h = 0.5})
end)
