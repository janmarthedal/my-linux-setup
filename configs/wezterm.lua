local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Catppuccin Latte"
config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 13
config.window_decorations = "NONE"

config.keys = {
	{
		key = "n",
		mods = "SHIFT|ALT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "n",
		mods = "ALT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "LeftArrow",
		mods = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "t",
		mods = "CTRL",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "PageUp",
		mods = "CTRL",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "PageDown",
		mods = "CTRL",
		action = act.ActivateTabRelative(1),
	},
}

return config
