local wezterm = require("wezterm") -- pull API
local act = wezterm.action
local config = wezterm.config_builder()

-- store the actual configuration
config.font = wezterm.font("D2CodingLigature Nerd Font")
config.font_size = 12.0
config.window_background_opacity = 0.7
config.color_scheme = "Rasi"

-- keybinding
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 3000 }
config.keys = {
	-- tab navigation
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = act.ActivateTabRelative(-1), -- Move to previous tab :contentReference[oaicite:2]{index=2}
	},
	{
		key = "L",
		mods = "CTRL|SHIFT",
		action = act.ActivateTabRelative(1), -- Move to next tab :contentReference[oaicite:3]{index=3}
	},

	-- system clipboard copy/paste
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = act.CopyTo("Clipboard"), -- Copy selection to system clipboard :contentReference[oaicite:4]{index=4}
	},
	{
		key = "V",
		mods = "CTRL|SHIFT",
		action = act.PasteFrom("Clipboard"), -- Paste from system clipboard :contentReference[oaicite:5]{index=5}
	},

	-- pane manipulation
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "LEADER",

		action = act.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},

	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "LEADER",

		action = act.ActivatePaneDirection("Right"),
	},

	-- Tab manipulation

	{ key = "t", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "T", mods = "LEADER", action = act.CloseCurrentTab({ confirm = true }) },
}

-- Tab index mapping
for i = 1, 9 do
	table.insert(config.keys, {

		key = tostring(i),
		mods = "LEADER",
		action = act.ActivateTab(i - 1),
	})
end

return config
