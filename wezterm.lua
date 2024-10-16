-- Pull in the wezterm API
local wezterm = require("wezterm")

local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)
local config = wezterm.config_builder()
config.use_fancy_tab_bar = false
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.color_scheme = "citruszest"
config.font = wezterm.font("MartianMono Nerd Font")
config.font_size = 16.0
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 10,
	bottom = 0,
}
config.window_close_confirmation = "NeverPrompt"
-- and finally, return the configuration to wezterm
return config
