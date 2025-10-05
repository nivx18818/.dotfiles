local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "Poimandres"

-- cursor
config.default_cursor_style = "BlinkingBlock"
config.colors = {
  cursor_bg = "#A6ACCD",
  cursor_border = "#A6ACCD",
  cursor_fg = "#1B1E28",
}

-- font
config.font = wezterm.font("DankMono Nerd Font Mono", { weight = "Bold" });
config.font_size = 12.5
config.line_height = 1.8

-- tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 999999

-- window
config.window_padding = {
  left = 30, right = 30, top = 30, bottom = 30,
}
config.window_decorations = "RESIZE"

-- default program
config.default_prog = { "wsl.exe", "-d", "Arch" }

return config
