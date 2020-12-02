#!/bin/sh

mpv "$(xclip -o)" || notify-send -t 5000 "$(xclip -o) failed to play"
