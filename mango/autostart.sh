set +e

#bg
swaybg -i /home/kuku/Pictures/Wallpapers/fedora/pridefedora1.png -m fit -o HDMI-A-1 &

#bar
waybar &

#clipboard
bash -c "wl-paste --watch cliphist store &" &

#notifications
swaync &
