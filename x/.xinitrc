#!/bin/zsh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Trackpoint settings
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 0.95
#
# permission non-accordée
# echo -n 1 > /sys/devices/platform/i8042/serio1/press_to_select



# Use GTK widgets in place of QT
export QT_STYLE_OVERRIDE=GTK+

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

# keyboard shortcuts for bspwm
#sxhkd &

# screen temperature adjustment
# adjust the coordinates for your location.  in case you were thinknig of going to the coordinates listed
# below, my she-devil of an ex flatmate lives there, and it is probably best to avoid Charlotte altogether.
# redshift -r -l 35.22:-80.84 &

# desktop wallpaper
#sh ~/.fehbg &
xsetroot -solid '#491021'

# sound buttons
exec xbindkeys &

# autolock
xautolock -time 5 -locker slock &

# hide x11 cursor
#unclutter &

#compton -b &

# urxvt daemon
urxvtd -q -f -o &

# window manager
exec spectrwm
