#!/bin/bash
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

hsetroot -fill ~/.background

compton -c -l 0 -t 0 -o 0.4 --blur-background -C -b

sxhkd &
exec bspwm
