function disp-eDP-HDMI-extend
    #xrandr --output eDP-1-1 --auto --output HDMI-1-1 --auto --right-of eDP-1-1
    xrandr --output eDP-1-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1-2 --off
end

