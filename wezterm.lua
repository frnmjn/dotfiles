local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux
local act = wezterm.action

config.window_close_confirmation = 'NeverPrompt'
config.enable_scroll_bar = true
config.scrollback_lines = 100000

wezterm.on('gui-startup', function()
 local tab, pane, window = mux.spawn_window({})
 window:gui_window():maximize()
end)

config.font = wezterm.font 'Fira Code'
config.font_size = 18
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.color_scheme = 'AdventureTime'
config.window_decorations = 'RESIZE'


config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false
config.use_dead_keys = false
config.use_ime = false

config.keys = {
  { key = 'LeftArrow',  mods = 'CMD',     action = act.SendKey { key = 'Home', }, },
  { key = 'RightArrow', mods = 'CMD',     action = act.SendKey { key = 'End', }, },
  { key = '+',          mods = 'CMD',     action = act.IncreaseFontSize },
  { key = '-',          mods = 'CMD',     action = act.DecreaseFontSize },
  { key = '0',          mods = 'CMD',     action = act.ResetFontSize },
  { key = 'PageUp',                       action = act.ScrollByLine(-10) },
  { key = 'PageDown',                     action = act.ScrollByLine(10) },
  --  Clear
  { key = 'l',          mods = 'CMD',     action = act.SendKey { key = 'l', mods = 'CTRL'}, },
  -- Delete Line
  { key =  'k', mods = 'CMD',             action = act.SendKey { key = 'u', mods = 'CTRL' }, },
  -- Delete Left Word
  { key = 'h',  mods = 'ALT',             action = act.SendKey {key = 'w', mods = 'CTRL'} },
  -- Delete Right Word
  { key = 'l',  mods = 'ALT',             action = act.SendKey {key = 'd', mods = 'ALT'} },
}

return config
