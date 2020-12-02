#!/bin/sh

# SPDX-License-Identifier: ISC
# Copyright (c) 2018-2020 Dawid Potocki

TYPE="$(printf "Window/Area\nScreen" | dmenu -i -p 'What do you want to screenshot?')"
[ -z "$TYPE" ] && exit
SAVE="$(printf "Yes\nNo" | dmenu -i -p 'Do you want to copy to clipboard?')"
[ -z "$SAVE" ] && exit
TIME="$(printf "0.5\n5\n10\n15" | dmenu -i -p 'How many seconds you want to wait?')"
[ -z "$TIME" ] && exit

case "$TYPE" in
	Window/Area) TYPE="-s -u";;
	*) TYPE=""
esac

sleep "$TIME"

case "$SAVE" in
	Yes) maim $TYPE | xclip -selection clipboard -t image/png;;
	*) 
		mkdir -p "$(xdg-user-dir PICTURES)"/Screenshot
		maim $TYPE "$(xdg-user-dir PICTURES)"/Screenshot/"$(date +%G-%m-%d_%s.png)"
esac
