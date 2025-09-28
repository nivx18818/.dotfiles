local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- font settings
config.font = wezterm.font("DankMono Nerd Font")
config.font_size = 12.0

-- color scheme
config.color_scheme = "Catppuccin Mocha"

-- default: launch Arch WSL
config.default_prog = { "wsl.exe", "-d", "Arch" }

-- disable tab bar
config.enable_tab_bar = false

-- keep border, remove titlebar
config.window_decorations = "RESIZE"

-- remove padding for full usage
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
