#!/bin/sh

# my simple bar

function battery() {
    LVL=$(acpi | awk '{print $4}')
    STATUS=$(acpi -a | awk '{print $3}')
    echo -n "Battery $LVL | AC: $STATUS"
}

function curtime() {
    TIME=$(date '+ %a %d %b %R')
    echo -n "$TIME |"
}

function ipv4() {
    CONNECTION="wlp3s0"
    ESSID=$(iwconfig $CONNECTION | grep ESSID: | awk '{print $4}')
    IP=$(ip addr show $CONNECTION | grep inet | awk '{print $2}' | head -n1 | sed 's|/24||')
    echo -n "$ESSID | $IP |"
}

while :; do
    echo "$(curtime) $(ipv4) $(battery)"
    sleep 2
done
