local os = require("os")

local wezterm = require('wezterm')
local act = wezterm.action

local config = {}
if wezterm.config_builder then config = wezterm.config_builder() end

local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
local sessionizer = wezterm.plugin.require("https://github.com/mikkasendke/sessionizer.wezterm")

sessionizer.apply_to_config(config, true)

config.term = 'xterm-256color'

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 0
}

sessionizer.config = {
  paths = {
    os.getenv("HOME") .. ".config/nvim",
    os.getenv("HOME") .. "code/repos"
  }
}

config.max_fps = 120

config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 12
config.freetype_load_flags = 'NO_HINTING'

-- config.color_scheme = 'Kanagawa (Gogh)'
config.color_scheme = 'GruvboxDark'

config.automatically_reload_config = true
config.use_fancy_tab_bar = false
config.tab_max_width = 32

-- config.window_background_opacity = 0.8

config.tab_bar_at_bottom = false

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
    key = '|',
    mods = 'LEADER|SHIFT',
    action = act.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  -- hsplit
  {
    key = '-',
    mods = 'LEADER',
    action = act.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  -- sessionizer
  {
    key = "s",
    mods = "LEADER",
    action = sessionizer.show,
  },
  {
    key = "r",
    mods = "LEADER",
    action = sessionizer.switch_to_most_recent,
  },
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
