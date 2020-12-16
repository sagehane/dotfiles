#!/bin/sh

# SPDX-License-Identifier: ISC
# Copyright (c) 2018-2020 Dawid Potocki

# Fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

xss-lock ~/.script/i3lock.sh & # Set screen locker
picom &
unclutter --timeout 1 & # Hide the cursor after inactivity
sxhkd & # For Keybindings
xrdb ~/.Xresources
dwmblocks & # Status Bar
dunst &
caffeine &
fcitx -d & # Input Method Selector

dwm

while [ "$(tty)" = "/dev/tty1" ] && :; do
	fcitx -d & # Input Method Selector

	dwm
done
