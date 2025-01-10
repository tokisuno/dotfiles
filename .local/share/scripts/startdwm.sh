#!/bin/sh

dunst &
feh --bg-scale ~/wallpapers/gruv-temple.png &
flameshot &
ibus-daemon -drxR &
pactl set-default-sink alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo &
pactl set-sink-volume @DEFAULT_SINK@ 25% &
picom --corner-radius=20 --window-shader-fg="$HOME/.config/picom/rounded-borders.glsl" --backend=glx &
setxkbmap -option 'ctrl:nocaps' &
syncthing &
xss-lock --transfer-sleep-lock -- betterlockscreen --nofork &
dwmblocks &

dwm
