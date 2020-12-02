#!/bin/sh

args=$(rg Name= ~/.mozilla/firefox/profiles.ini | cut -d= -f2)
profile=$(echo "$args" | dmenu -i -p "Firefox Profile")

echo "$args" | rg -w "$profile" && firefox -p "$profile"
