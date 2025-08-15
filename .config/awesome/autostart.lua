local awful = require("awful")

local function run_once(prg)
	awful.spawn.with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. " &)")
end

local cmds = {
	"flameshot",
	"ibus-daemon -rxRd",
	"pactl set-default-sink alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo",
	"pactl set-sink-volume @DEFAULT_SINK@ 25%",
	"picom -b",
	-- "setxkbmap -option 'ctrl:nocaps'",
	"nitrogen --restore",
	"conky",
	-- "feh --bg-fill $HOME/wallpapers/gruv-temple.png",
	"syncthing",
}

for _, i in pairs(cmds) do
	run_once(i)
end

local trackball_name = 'Logitech ERGO M575'

local trackball_settings = {
  "xinput set-prop " ..trackball_name.. " 'Coordinate Transformation Matrix' 0.6, 0, 0, 0, 0.6, 0, 0, 0, 0.6",
  "xinput set-prop " ..trackball_name.. " 'libinput Accel Speed' 1"
}
for _, i in pairs(trackball_settings) do
  run_once(i)
end
