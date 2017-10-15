-----------------------------------------------
-- Setup
-----------------------------------------------
hs.window.animationDuration = 0

-----------------------------------------------
-- Modules
-----------------------------------------------
require('modules.caffeine')

-----------------------------------------------
-- cmd-left for left one half window
-----------------------------------------------
hs.hotkey.bind({"cmd"}, "Left", function()

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-----------------------------------------------
-- cmd-ctrl-left for left third window
-----------------------------------------------
hs.hotkey.bind({"cmd","ctrl"}, "Left", function()

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)

-----------------------------------------------
-- cmd-ctrl-left for left 2/3 window
-----------------------------------------------
hs.hotkey.bind({"cmd","option"}, "Left", function()

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = (max.w / 3) *2
  f.h = max.h
  win:setFrame(f)
end)

-----------------------------------------------
-- cmd-right for right one half window
-----------------------------------------------
hs.hotkey.bind({"cmd"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-----------------------------------------------
-- cmd-ctrl-right for right third window
-----------------------------------------------
hs.hotkey.bind({"cmd","ctrl"}, "Right", function()

  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3) + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f)
end)
