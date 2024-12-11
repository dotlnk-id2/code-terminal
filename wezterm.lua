-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'UltraDark'
config.font =wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
config.font_size = 12
config.window_frame = {
  font =wezterm.font('JetBrains Mono', { weight = 'Bold'}),
  font_size = 13,
}
-- and finally, return the configuration to wezterm
return config
