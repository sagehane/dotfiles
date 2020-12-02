#!/bin/sh

case "$(fcitx-remote)" in
	0) echo "N/A";;
	1) echo "ENG";;
	2) echo "JPN";;
esac
