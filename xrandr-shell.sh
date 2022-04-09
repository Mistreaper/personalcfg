#!/usr/bin/bash


xrandr --newmode "ipad" 480.50  2736 2960 3256 3776  2048 2051 2061 2121 -hsync +vsync
xrandr --addmode VIRTUAL1 ipad
xrandr --output VIRTUAL1 --mode ipad --right-of HDMI0
# Please run xrandr on terminal, replace HDMI0 with display you're using.