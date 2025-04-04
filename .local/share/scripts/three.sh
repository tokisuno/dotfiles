#!/bin/sh

xrandr --output DVI-D-0 --primary --mode 1920x1200 \
       --output DP-0 --right-of DVI-D-0 --mode 1920x1080 \
       --output HDMI-0 --left-of DVI-D-0 --mode 1024x768 --rate 85
