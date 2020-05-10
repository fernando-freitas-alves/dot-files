#!/usr/bin/env bash

# Call time unit rate
TIME_RATE=3600
NUM_OF_MONITORS_DISPLAYING_POLYBAR=3
TMP_FILE="/tmp/$BASENAME"

# Load/Save function for persistent variables
BASENAME=$(basename "$0")
save()
{
    VAR_NAME="$1"
    VAR_VALUE="$2"

    VAR_TMP_FILE="$TMP_FILE.var.$VAR_NAME"
    echo "$VAR_VALUE" > "$VAR_TMP_FILE"
}
load()
{
    VAR_NAME="$1"
    DEFAULT_VALUE="$2"

    VAR_TMP_FILE="$TMP_FILE.var.$VAR_NAME"
    if [ -f "$VAR_TMP_FILE" ]; then
        VAR_VALUE=$(cat "$VAR_TMP_FILE")
    else
        VAR_VALUE="$DEFAULT_VALUE"
        save "$VAR_NAME" "$VAR_VALUE"
    fi
    echo "$VAR_VALUE"
}

# Update number of calls, CALLS
CALLS=$(load CALLS 0)
CALLS=$(((CALLS+1) % NUM_OF_MONITORS_DISPLAYING_POLYBAR))
save CALLS $CALLS

# Update function
num_of_upgradable_pkgs()
{
    if ! num_of_updates=$(/usr/lib/update-notifier/apt-check --human-readable | head -1 | cut -d' ' -f1); then
        num_of_updates=0
    fi
    save num_of_updates $num_of_updates
    echo $num_of_updates
}

# Update number of runs, N
N=$(load N 0)
if [ "$CALLS" -eq "0" ]; then
    N=$(((N+1) % TIME_RATE))
    save N $N
fi

# Parse input argument
case "$1" in
    --click)
        BASEDIR=$(dirname "$0")
        i3open-float "$BASEDIR/dist-updates-check-new-window.sh"
        # TODO: implement a callback to update the number
        # PID=$!
        # num_of_upgradable_pkgs
        # sleep 60s
        # wait $PID
        # num_of_upgradable_pkgs
        ;;
    *)
        if [ "$N" -eq "0" ]; then
            num_of_updates=$(num_of_upgradable_pkgs)
        else
            num_of_updates=$(load num_of_updates 0)
        fi
        if [ "$num_of_updates" -gt 0 ]; then
            if [ "$N" -eq "0" ]; then
                notify-send -u low -i system-software-update "There are $num_of_updates dist package updates"
            fi
            echo "%{B#EF233C}%{F#500}%{u#500}%{+u}  $num_of_updates %{u-}%{B- F-}"
        else
            echo ""
        fi
        ;;
esac
