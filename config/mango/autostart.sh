#!/bin/bash

set +e

systemctl --user start xdg-desktop-portal.service --ignore-dependencies &

mako >/dev/null 2>&1 &

gammastep >/dev/null 2>&1 &

swaybg -i ~/Images/Wallpapers/koi.jpg >/dev/null 2>&1 &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &

wl-clip-persist --clipboard regular --reconnect-tries 0 &

wl-paste --type text --watch cliphist store -max-items 100 &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 >/dev/null 2>&1 &
