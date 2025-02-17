local os = require("os")

local wezterm = require('wezterm')
local act = wezterm.action

local config = {}
if wezterm.config_builder then config = wezterm.config_builder() end

local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')

config.term = 'xterm-256color'

config.window_padding = {
  left = 10,
  right = 10,
  top = 15,
  bottom = 0
}

config.max_fps = 120

config.font = wezterm.font {
  family = 'IosevkaTermSlab Nerd Font',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
}
config.font_size = 13
config.freetype_load_flags = 'NO_HINTING'

config.color_scheme = 'GruvboxDark'

config.automatically_reload_config = true
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.disable_default_key_bindings = true

config.leader = {
  key = 'a',
  mods = 'CTRL',
  timeout_milliseconds = 1500
}

config.unix_domains = {
  {
    name = 'unix',
  },
}

config.default_gui_startup_args = { 'connect', 'unix' }

config.keys = {
  -- attach to muxer
  {
    key = 'a',
    mods = 'LEADER',
    action = act.AttachDomain 'unix'
  },
  -- detach from muxer
  {
    key = 'd',
    mods = 'LEADER',
    action = act.DetachDomain { DomainName = 'unix' }
  },
  -- copy mode
  {
    key = 't',
    mods = 'LEADER',
    action = act.ActivateCopyMode
  },
  -- tab navigator
  {
    key = 'w',
    mods = 'LEADER',
    action = act.ShowTabNavigator
  },
  -- new tab
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain'
  },
  -- close tab
  {
    key = 'x',
    mods = 'LEADER',
    action = act.CloseCurrentPane { confirm = true }
  },
  -- next/previous tabs
  {
    key = 'n',
    mods = 'LEADER',
    action = act.ActivateTabRelative(1)
  },
  {
    key = 'p',
    mods = 'LEADER',
    action = act.ActivateTabRelative(-1)
  },
  -- tmux zoom
  {
    key = 'z',
    mods = 'LEADER',
    action = act.TogglePaneZoomState
  },
  {
    key = 'f',
    mods = 'ALT',
    action = act.TogglePaneZoomState
  },
  -- vsplit
  {
    key = 'v',
    mods = 'LEADER|SHIFT',
    action = act.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  -- hsplit
  {
    key = 'h',
    mods = 'LEADER',
    action = act.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  -- ctrl_shift_v pasting
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = act.PasteFrom 'PrimarySelection'
  }
}

smart_splits.apply_to_config(config, {
  direction_keys = { 'h', 'j', 'k', 'l' },
  modifiers = {
    move = 'CTRL',
    resize = 'META',
  },
  log_level = 'info',
})

return config
