#!/bin/sh

# SPDX-License-Identifier: ISC
# Copyright (c) 2018-2020 Dawid Potocki

case "$1" in
	-y) printf "%s" "$2" | xclip -select clipboard ;;
	*youtube.com/watch*|*youtu.be*) setsid -f mpv -quiet "$1" >/dev/null 2>&1 ;;
	*) setsid -f "$BROWSER" "$1" >/dev/null 2>&1
esac
