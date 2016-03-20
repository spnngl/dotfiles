#!/bin/sh

FONT="Source Code Pro:pixelsize=14"
ICONFONT="FontAwesome:pixelsize=16"
RES=" 1366x20+0+0"
CONNECTION="wlp3s0"

#CHRG='\uf1e6'
#DNCHRG='\uf1e6'
#BATFULL='\uf240'
#BAT75='\uf241'
#BAT50='\uf242'
#BAT25='\uf243'
#BATMT='\uf244'

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
    echo -n "$(ip addr show $CONNECTION | grep inet | \
        awk '{print $2}' | head -n1 | sed 's|/24||') |"
}

while :; do
    echo "$(curtime) $(ipv4) $(battery)"
    sleep 2
done
