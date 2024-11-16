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


-- needed for symbol keys
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.use_dead_keys = false
config.use_ime = false

-- config.disable_default_key_bindings = true

config.keys = {
  --{ key = 'l',          mods = 'CMD',     action = act.SplitHorizontal { domain = 'CurrentPaneDomain', }, }, 
  --{ key = 'j',          mods = 'CMD',     action = act.SplitVertical { domain = 'CurrentPaneDomain', }, },
  { key = 'LeftArrow',  mods = 'CMD',     action = act.SendKey { key = 'Home', }, },
  { key = 'RightArrow', mods = 'CMD',     action = act.SendKey { key = 'End', }, },
  --{ key = 'h',          mods = 'CTRL',    action = act.ActivatePaneDirection 'Left', },
  --{ key = 'k',          mods = 'CTRL',    action = act.ActivatePaneDirection 'Up', },
  --{ key = 'j',          mods = 'CTRL', 	  action = act.ActivatePaneDirection 'Down', },
  { key = 'w',          mods = 'CTRL',    action = act.SendKey { key = 'f', mods = 'ALT' }, },
  { key = 'b',          mods = 'CTRL',    action = act.SendKey { key = 'b', mods = 'ALT' }, },
  { key = 'd',          mods = 'ALT',     action = act.SendKey { key = 'u', mods = 'CTRL' }, },
  { key = 'l',          mods = 'ALT',       action = act.SendKey { key = 'l', mods = 'CTRL'}, },
  { key = 'k',          mods = 'CTRL', action = act.ScrollByLine(-10) },
  { key = 'j',          mods = 'CTRL', action = act.ScrollByLine(10) },
  { key = '+',          mods = 'CMD',    action = act.SendKey { key = '*', mods = 'CMD' }, },
  --{ key = 'Backspace',  mods = 'ALT',    action = act.SendKey { key = 'Backspace', mods = 'ALT' }, },
  { key = '+',          mods = 'CMD', action = act.IncreaseFontSize },
  { key = '-',          mods = 'CMD', action = act.DecreaseFontSize },
  { key = '0',          mods = 'CMD', action = act.ResetFontSize },
}

return config
