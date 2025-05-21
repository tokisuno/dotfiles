---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources   = require("beautiful.xresources")
local dpi          = xresources.apply_dpi
local gfs          = require("gears.filesystem")
local themes_path  = gfs.get_themes_dir()

local theme        = {}

theme.font                 = "Noto Sans Mono CJK JP 14"

theme.bg_normal            = "#171c1f"
theme.bg_urgent            = "#ebb9dd"
theme.bg_minimize          = "#3d494d"
theme.taglist_fg_occupied  = "#96b4aa"
theme.taglist_fg_focus     = "#e1c182"
theme.bg_systray           = theme.bg_normal
theme.systray_icon_spacing = dpi(6)

-- theme.fg_focus      = "#fabd2f"
theme.notification_fg = "#dddecf"
theme.fg_normal       = "#3d494d"
theme.fg_focus        = "#232a2e"
theme.fg_urgent       = "#dddecf"
theme.fg_minimize     = "#dddecf"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#1d2428"
theme.border_focus  = "#dddecf"
theme.border_marked = "#a1cfad"

theme.tasklist_disable_icon = true
theme.tasklist_align = 'center'
theme.tasklist_bg_focus = "#9bb5cf"

theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(50)
theme.menu_width  = dpi(100)

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=2:tabstop=2:softtabstop=2:textwidth=80
