#!/bin/sh
logger "[ACPI] Fn+F4 pressed, start slock for current user and suspend to ram"
XUSER=$(ps aux | grep xinit | awk '{print $1}' | head -n1)
su -c "DISPLAY=:0 /usr/bin/xautolock -locknow" - $XUSER &
echo -n mem >/sys/power/state
