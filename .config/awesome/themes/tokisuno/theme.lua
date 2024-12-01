----------------------------
-- tokisuno awesome theme --
----------------------------
--- very shit
local theme_assets = require("beautiful.theme_assets")
local xresources   = require("beautiful.xresources")
local dpi          = xresources.apply_dpi

local gfs         = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

local colours = {
  dark0_hard = "#1d2021",
  dark0 = "#282828",
  dark0_soft = "#32302f",
  dark1 = "#3c3836",
  dark2 = "#504945",
  dark3 = "#665c54",
  dark4 = "#7c6f64",
  light0_hard = "#f9f5d7",
  light0 = "#fbf1c7",
  light0_soft = "#f2e5bc",
  light1 = "#ebdbb2",
  light2 = "#d5c4a1",
  light3 = "#bdae93",
  light4 = "#a89984",
  bright_red = "#fb4934",
  bright_green = "#b8bb26",
  bright_yellow = "#fabd2f",
  bright_blue = "#83a598",
  bright_purple = "#d3869b",
  bright_aqua = "#8ec07c",
  bright_orange = "#fe8019",
  neutral_red = "#cc241d",
  neutral_green = "#98971a",
  neutral_yellow = "#d79921",
  neutral_blue = "#458588",
  neutral_purple = "#b16286",
  neutral_aqua = "#689d6a",
  neutral_orange = "#d65d0e",
  faded_red = "#9d0006",
  faded_green = "#79740e",
  faded_yellow = "#b57614",
  faded_blue = "#076678",
  faded_purple = "#8f3f71",
  faded_aqua = "#427b58",
  faded_orange = "#af3a03",
  dark_red_hard = "#792329",
  dark_red = "#722529",
  dark_red_soft = "#7b2c2f",
  light_red_hard = "#fc9690",
  light_red = "#fc9487",
  light_red_soft = "#f78b7f",
  dark_green_hard = "#5a633a",
  dark_green = "#62693e",
  dark_green_soft = "#686d43",
  light_green_hard = "#d3d6a5",
  light_green = "#d5d39b",
  light_green_soft = "#cecb94",
  dark_aqua_hard = "#3e4934",
  dark_aqua = "#49503b",
  dark_aqua_soft = "#525742",
  light_aqua_hard = "#e6e9c1",
  light_aqua = "#e8e5b5",
  light_aqua_soft = "#e1dbac",
  gray = "#928374",
}

theme.font          = "IBM Plex Sans JP 10"

theme.bg_normal     = colours.dark0
theme.bg_focus      = colours.dark0_soft
theme.bg_urgent     = colours.dark_red
theme.bg_minimize   = colours.dark1
theme.bg_systray    = colours.dark0

theme.fg_normal     = colours.light2
theme.fg_focus      = colours.light3
theme.fg_urgent     = colours.light2
theme.fg_minimize   = colours.light3

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = colours.dark0_hard
theme.border_focus  = colours.neutral_yellow
theme.border_marked = colours.dark_red

theme.systray_icon_spacing = 4
theme.tasklist_disable_icon = true

-- Generate taglist squares:
local taglist_square_size   = dpi(5)
theme.taglist_squares_sel   = theme_assets.taglist_squares_sel  (taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height       = dpi(15)
theme.menu_width        = dpi(100)

-- Define the image to load
theme.titlebar_close_button_normal              = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal           = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive     = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive    = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive  = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path.."default/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh      = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv      = themes_path.."default/layouts/fairvw.png"
theme.layout_floating   = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier  = themes_path.."default/layouts/magnifierw.png"
theme.layout_max        = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile       = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop    = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral     = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle    = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw   = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne   = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw   = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse   = themes_path.."default/layouts/cornersew.png"

theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

theme.icon_theme = nil

theme.notification_icon_size = dpi( 50 )
theme.notification_width = dpi( 350 )
theme.notification_max_width = dpi( 350 )
theme.notification_height = dpi( 80 )
theme.notification_max_height = dpi( 100 )
theme.notification_font = "Roboto, Regular 10"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
