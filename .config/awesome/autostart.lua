local awful = require("awful")

local function run_once(prg)
		awful.spawn.with_shell("pgrep -u $USER -x " .. prg .. " || (" .. prg .. " &)")
end

local cmds =
{
  "flameshot",
  "ibus-daemon -rxRd",
  "pactl set-default-sink alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo",
  "pactl set-sink-volume @DEFAULT_SINK@ 25%",
  "setxkbmap -option 'ctrl:nocaps'",
  "nitrogen --restore",
  "conky",
  "picom",
  -- "feh --bg-fill $HOME/wallpapers/gruv-temple.png",
  "syncthing",
}

for _,i in pairs(cmds) do
	run_once(i)
end
