#!/bin/sh

print_date() {
# The date is printed to the status bar by default.
# To print the date through this script, set clock_enabled to 0
# in scrotwm.conf.  Uncomment "print_date" below.
    FORMAT="%a %d %b %R"
    DATE=`date "+ ${FORMAT}"`
    echo -n " | ${DATE}"
}

print_mem() {
    MEM=$($(which top) -bn | grep Free: | cut -d " " -f6)
    echo -n " | Mem: $MEM "
}

_print_cpu() {
    typeset -R4 _1=${1}
    echo -n " | CPU:${_1}%  "
}

print_cpu() {
    OUT=""
    # iostat prints each column justified to 3 chars, so if one counter
    # is 100, it jams up agains the preceeding one. sort this out.
    while [ "${1}x" != "x" ]; do
        if [ ${1} -gt 99 ]; then
            OUT="$OUT ${1%100} 100"
        else
            OUT="$OUT ${1}"
                fi
                shift;
    done
    _print_cpu $OUT
}

print_apm() {
    BAT_STATUS=$1
    BAT_LEVEL=$2
    AC_STATUS=$3

    if [ $AC_STATUS -ne 255 -o $BAT_STATUS -lt 4 ]; then
        if [ $AC_STATUS -eq 0 ]; then
            echo -n "| bat ${BAT_LEVEL}%"
        else
            case $AC_STATUS in
                1)
                AC_STRING="| AC: "
                ;;
                2)
                    AC_STRING="| AC backup: "
                    ;;
                *)
                    AC_STRING=""
                    ;;
                esac;
                case $BAT_STATUS in
                4)
                    BAT_STRING="(sin bateria) | "
                    ;;
                [0-3])
                    BAT_STRING="bat ${BAT_LEVEL}% | "
                    ;;
                *)
                    BAT_STRING="(bat desconocida) | "
                    ;;
                esac;

                FULL="${AC_STRING}${BAT_STRING}"
                if [ "$FULL" != "" ]; then
                    echo -n "$FULL"
                fi
        fi
    fi
}

print_cpuspeed() {
    CPU_SPEED=$($(which sysctl) hw.cpuspeed | cut -d "=" -f2)
    echo -n " | CPU: $CPU_SPEED MHz  "
}

while :; do
    # instead of sleeping, use iostat as the update timer.
    # cache the output of apm(8), no need to call that every second.
    $(which iostat) -C -c 3600 |&   # wish infinity was an option
    PID="$!"
    APM_DATA=""
    I=0
    trap "kill $PID; exit" TERM
    while read -p; do
        if [ $(( ${I} % 1 )) -eq 0 ]; then
            APM_DATA=$($(which apm) -alb)
        fi
        if [ $I -gt 2 ]; then
            print_date
            print_mem
            print_cpuspeed
            print_apm $APM_DATA
            echo ""
        fi
        I=$(( ${I} + 1 ));
    done
done
