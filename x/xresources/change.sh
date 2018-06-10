#!/bin/bash

golight() {
    export XMODE=light
    xrdb $HOME/etc/x/xresources/light
    xmonad --restart
}

godark() {
    export XMODE=dark
    xrdb $HOME/etc/x/xresources/dark
    xmonad --restart
}

case $XMODE in
    light)
        godark
        ;;
    dark)
        golight
        ;;
    *)
        godark
        ;;
esac
