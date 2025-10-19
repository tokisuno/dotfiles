#!/bin/bash

nitrogen --restore &
ibus-daemon -rxRd &
nm-applet &
flameshot &
syncthing &
pactl set-default-sink alsa_output.usb-GeneralPlus_USB_Audio_Device-00.analog-stereo &
pactl set-sink-volume @DEFAULT_SINK@ 25% &
xinput set-prop 'Logitech ERGO M575' 'Coordinate Transformation Matrix' 0.6, 0, 0, 0, 0.6, 0, 0, 0, 0.6 &
xinput set-prop 'Logitech ERGO M575' 'libinput Accel Speed' 2 &
