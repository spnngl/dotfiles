#!/bin/zsh

# my simple bar
CONNECTION="wlp3s0"
#CONNECTION=$(iwgetid | awk '{print $1}')
DATEFORMAT='+ %a %d %b %R'
DODO=5

function battery() {
    LVL=$(acpi | awk '{print $4}')
    STATUS=$(acpi -a | awk '{print $3}')
    echo -n "Battery $LVL | AC: $STATUS"
}

function curtime() {
    TIME=$(date $DATEFORMAT)
    echo -n "$TIME |"
}

function freeram() {
    AVRAM=$(free -kh | grep Mem: | awk '{print $7}')
    echo -n "$AVRAM |"
}

function ipv4() {
    #ESSID=$(iwconfig $CONNECTION | grep ESSID: | awk '{print $4}')
    ESSID=$(iwgetid -r)
    IP=$(ip addr show $CONNECTION | grep inet | awk '{print $2}' | head -n1)
    echo -n "$ESSID | $IP |"
}

while :; do
    echo "$(curtime) $(ipv4) $(freeram) $(battery)"
    sleep $DODO
done
