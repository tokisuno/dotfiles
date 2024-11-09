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
  latte = {
    rosewater = "#dc8a78",
    flamingo = "#dd7878",
    pink = "#ea76cb",
    mauve = "#8839ef",
    red = "#d20f39",
    maroon = "#e64553",
    peach = "#fe640b",
    yellow = "#df8e1d",
    green = "#40a02b",
    teal = "#179299",
    sky = "#04a5e5",
    sapphire = "#209fb5",
    blue = "#1e66f5",
    lavender = "#7287fd",
    text = "#4c4f69",
    subtext_1 = "#5c5f77",
    subtext_0 = "#6c6f85",
    overlay_2 = "#7c7f93",
    overlay_1 = "#8c8fa1",
    overlay_0 = "#9ca0b0",
    surface_2 = "#acb0be",
    surface_1 = "#bcc0cc",
    surface_0 = "#ccd0da",
    base = "#eff1f5",
    mantle = "#e6e9ef",
    crust = "#dce0e8"
  },
  frappe = {
    rosewater = "#f2d5cf",
    flamingo = "#eebebe",
    pink = "#f4b8e4",
    mauve = "#ca9ee6",
    red = "#e78284",
    maroon = "#ea999c",
    peach = "#ef9f76",
    yellow = "#e5c890",
    green = "#a6d189",
    teal = "#81c8be",
    sky = "#99d1db",
    sapphire = "#85c1dc",
    blue = "#8caaee",
    lavender = "#babbf1",
    text = "#c6d0f5",
    subtext_1 = "#b5bfe2",
    subtext_0 = "#a5adce",
    overlay_2 = "#949cbb",
    overlay_1 = "#838ba7",
    overlay_0 = "#737994",
    surface_2 = "#626880",
    surface_1 = "#51576d",
    surface_0 = "#414559",
    base = "#303446",
    mantle = "#292c3c",
    crust = "#232634",
  },
  macchiato = {
    rosewater = "#f4dbd6",
    flamingo = "#f0c6c6",
    pink = "#f5bde6",
    mauve = "#c6a0f6",
    red = "#ed8796",
    maroon = "#ee99a0",
    peach = "#f5a97f",
    yellow = "#eed49f",
    green = "#a6da95",
    teal = "#8bd5ca",
    sky = "#91d7e3",
    sapphire = "#7dc4e4",
    blue = "#8aadf4",
    lavender = "#b7bdf8",
    text = "#cad3f5",
    subtext_1 = "#b8c0e0",
    subtext_0 = "#a5adcb",
    overlay_2 = "#939ab7",
    overlay_1 = "#8087a2",
    overlay_0 = "#6e738d",
    surface_2 = "#5b6078",
    surface_1 = "#494d64",
    surface_0 = "#363a4f",
    base = "#24273a",
    mantle = "#1e2030",
    crust = "#181926",
  },
  mocha = {
    rosewater = "#f5e0dc",
    flamingo = "#f2cdcd",
    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#f38ba8",
    maroon = "#eba0ac",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#89dceb",
    sapphire = "#74c7ec",
    blue = "#89b4fa",
    lavender = "#b4befe",
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay2 = "#9399b2",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface2 = "#585b70",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#181825",
    crust = "#11111b",
  },
}

theme.font          = "IBM Plex Sans JP 10"

theme.bg_normal     = colours.macchiato.crust
theme.bg_focus      = colours.macchiato.base
theme.bg_urgent     = colours.macchiato.red
theme.bg_minimize   = colours.macchiato.surface_0
theme.bg_systray    = colours.macchiato.mantle

theme.fg_normal     = colours.macchiato.rosewater
theme.fg_focus      = colours.macchiato.yellow
theme.fg_urgent     = colours.macchiato.rosewater
theme.fg_minimize   = colours.macchiato.rosewater

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = colours.macchiato.mantle
theme.border_focus  = colours.macchiato.lavender
theme.border_marked = colours.macchiato.maroon

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

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
