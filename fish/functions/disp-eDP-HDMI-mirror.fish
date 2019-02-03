function disp-eDP-HDMI-mirror
    # xrandr --output eDP-1-1 --auto --output HDMI-1-1 --mode 2560x1440 --same-as eDP-1-1
    xrandr --output HDMI-1-1 --mode 2560x1440 --scale 0.75x0.75 --same-as eDP-1-1 --output eDP-1-1 --mode 1920x1080 --scale 1.0x1.0
end

