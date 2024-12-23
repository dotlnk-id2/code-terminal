-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'UltraDark'
config.font =wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
config.font_size = 10
config.window_frame = {
  font =wezterm.font('JetBrains Mono', { weight = 'Bold'}),
  font_size = 9,
}
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
config.initial_cols = 120
config.initial_rows = 30
config.scrollback_lines = 100000
-- and finally, return the configuration to wezterm
return config
