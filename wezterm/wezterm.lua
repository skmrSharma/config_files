-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.check_for_updates = false

-- This is where you actually apply your config choices
-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Kanagawa (Gogh)'
-- config.color_scheme = 'Sequoia Monochrome'
-- config.color_scheme = 'Solarized Darcula'
-- config.color_scheme = 'Synthwave Alpha (Gogh)'
-- config.color_scheme = 'Nature Suede (terminal.sexy)'
-- config.color_scheme = 'Numix Darkest (terminal.sexy)'
-- config.color_scheme = 'N0tch2k'
config.color_scheme = 'Modus Operandi'
-- config.color_scheme = 'Modus Vivendi'
-- config.font = wezterm.font 'Source Code Pro'
-- config.font = wezterm.font 'BlexMono Nerd Font Mono'
-- config.font = wezterm.font_with_fallback({'Hasklig','Agave','BlexMono Nerd Font Mono','Hurmit Nerd Font Mono','Noto Sans Math'})

-- pragmata config -> looks good on terminal
-- config.font = wezterm.font_with_fallback({'Pragmatasevka', 'Fisa Code','Hasklig','Fusion Pixel 12px Monospaced latin'})
-- config.font_size = 24.0

-- source code pro config -> more readablity for code
config.font = wezterm.font_with_fallback({'Hasklig','SauceCodePro Nerd Font Mono'})
config.font_size = 12.0

-- config.font = wezterm.font 'Fusion Pixel monospaced'
-- config.font = wezterm.font 'Envy Code R'
-- Hasklig -> Source code pro with ligatures
-- config.font = wezterm.font 'Hasklig'

config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    top = 0,
    bottom = 0,
    left = 0,
    right = 0
}

config.enable_wayland = false

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

-- Window configuration: START ----
local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)
-- Window configuration: END ----

-- and finally, return the configuration to wezterm
return config
