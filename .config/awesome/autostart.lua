local awful = require("awful")

local function run_once(prg)
		awful.spawn.with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. " &)")
end

local cmds =
{
  "flameshot",
  "ibus start",
  "pactl set-default-sink alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo",
  "pactl set-sink-volume @DEFAULT_SINK@ 25%",
  "syncthing",
  "setxkbmap -option 'ctrl:nocaps'",
  "picom",
  "feh --bg-fill $HOME/wallpapers/gruv-temple.png",

}

for _,i in pairs(cmds) do
	run_once(i)
end
