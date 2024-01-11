#!/bin/bash
#
#
xrandr --output DP-0 --primary --mode 2560x1440 --rate 165.00
#xrandr --output DP-0 --mode 2560x1440
xrandr --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rotate left
#xrandr --output HDMI-0 --rotate left
#xrandr --output DP-0 --rate 165.00
