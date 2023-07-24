-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
-- config.color_scheme = 'Batman'
config.color_scheme = 'Kanagawa (Gogh)'
config.font = wezterm.font 'Source Code Pro'

-- Spawn a alpine wsl shell in login mode
config.default_prog = { [[C:\\Users\\Sukumara\\AppData\\Local\\Microsoft\\WindowsApps\\Alpine.exe]] }

-- define your own entries using the launch_menu configuration setting.
config.launch_menu = {
    {
        label = 'Powershell core',
        args = { [[C:\\Users\\Sukumara\\AppData\\Local\\Microsoft\\WindowsApps\\pwsh.exe]] }
    }
}

config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    top = 0,
    bottom = 0,
    left = 0,
    right = 0
}

-- function to rename a tab title
local act = wezterm.action

config.keys = {
  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  },
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  }
}

-- and finally, return the configuration to wezterm
return config
