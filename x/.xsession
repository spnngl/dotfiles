#!/bin/zsh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Trackpoint settings
xinput set-prop /dev/wsmouse "WS Pointer Wheel Emulation" 1
xinput set-prop /dev/wsmouse "WS Pointer Wheel Emulation Button" 2
xinput set-prop /dev/wsmouse "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Use GTK widgets in place of QT
export QT_STYLE_OVERRIDE=GTK+
export GTK_IM_MODULE=xim

# UTF-8
export LC_CTYPE=fr_FR.UTF-8
export LESSCHARSET=utf-8
#setxkbmap -option compose:ralt

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

# screen temperature adjustment
# adjust the coordinates for your location.  in case you were thinknig of going to the coordinates listed
# below, my she-devil of an ex flatmate lives there, and it is probably best to avoid Charlotte altogether.
# redshift -r -l 35.22:-80.84 &

# desktop wallpaper
sh ~/.fehbg &

# hide x11 cursor
#unclutter &

#compton -b &

# urxvt daemon
urxvtd -q -f -o &

# window manager
exec spectrwm
