local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.font = wezterm.font_with_fallback({"JetBrains Mono Medium"})
config.font_size = 10
config.line_height = 1.0
config.window_background_opacity = 0.75
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false
config.colors = {
  background = "#1a1b26",
}

config.window_padding = {
	top = 5,
	bottom = 1,
	left = 10,
	right = 10,
}

config.warn_about_missing_glyphs = false

return config
