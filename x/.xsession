#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Trackpoint settings
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5

# Use GTK widgets in place of QT
export QT_STYLE_OVERRIDE=GTK+
export GTK_IM_MODULE=xim

# UTF-8
export LC_CTYPE=fr_FR.UTF-8
export LESSCHARSET=utf-8
#setxkbmap -option compose:ralt
#export ENV=$HOME/.bashrc
#export XDG_CONFIG_HOME=$HOME/.config/

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# desktop wallpaper
#sh $HOME/bin/.fehbg &
xsetroot -solid '#222222'

# hide x11 cursor
#unclutter &

#compton -b &

#xautolock -detectsleep -time 10 -locker slock &

# urxvt daemon
export TERM=/usr/bin/urxvt
export TERMINAL=/usr/bin/urxvt
urxvtd -q -f -o &

# window manager
#exec /usr/local/bin/spectrwm
exec herbstluftwm --locked
