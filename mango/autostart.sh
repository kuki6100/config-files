set +e

#bg
swaybg -i /home/kuki/Documents/Themes/NiigoMiku/images/mikupaint.jpeg -m fit -o HDMI-A-1 &

#bar
waybar &

#clipboard
bash -c "wl-paste --watch cliphist store &" &

#notifications
swaync &

#volume
#wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.6

#Res
wlr-randr --output HDMI-A-1 --mode 3840x2160@60.00Hz --scale 1.5
