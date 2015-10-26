xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

hsetroot -full ~/.background

sxhkd &
urxvt &
exec bspwm


