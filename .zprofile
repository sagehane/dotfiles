# SPDX-License-Identifier: ISC
# Copyright (c) 2018-2020 Dawid Potocki

export PATH="$PATH:$HOME/.local/bin" # Add ~/.local/bin to PATH

# Start graphical server if window manager not already running
if [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null; then
	pkill ssh-agent
	eval "$(ssh-agent)"
	exec startx :0
fi
