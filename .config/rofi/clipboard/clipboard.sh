#!/usr/bin/env bash

## Rofi : Clipboard history (cliphist)
## Matches the launcher/powermenu rofi styling.

dir="$HOME/.config/rofi/clipboard"
theme='clipboard'

selection="$(cliphist list | rofi -dmenu -display-columns 2 -theme ${dir}/${theme}.rasi -p "Clipboard")"

[ -n "$selection" ] && printf '%s' "$selection" | cliphist decode | wl-copy
