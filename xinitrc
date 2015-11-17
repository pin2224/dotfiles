xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

hsetroot -full ~/.background


sxhkd &
exec bspwm -c ~/.config/bspwm/bspwmrc


