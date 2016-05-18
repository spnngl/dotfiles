#!/bin/sh
logger "[ACPI] fn+f2 pressed, start slock for logged-in user"
XUSER=$(ps aux | grep xinit | awk '{print $1}' | head -n1)
su -c "DISPLAY=:0 /usr/bin/xautolock -locknow" - $XUSER &
