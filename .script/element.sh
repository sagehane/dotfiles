#!/bin/sh

args=$(find ~/.config -maxdepth 1 -name "Element-*" | cut -d- -f2)
profile=$(echo "$args" | dmenu -i -p "Element Profile")

echo "$args" | rg -w "$profile" && element-desktop --profile="$profile"
