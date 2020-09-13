#!/bin/sh

# Defaults
SEC_TO_DIM_SCREEN=300
SEC_TO_LOCK_SCREEN=600
SEC_TO_SUSPEND=900

# Kill previous process
PID_FILE="/tmp/i3lock.pid"
PID=$(cat $PID_FILE)
if [ ! "$PID" = "" ]; then
    pkill -9 $PID
fi
echo $$ > $PID_FILE

# Make times relative
SEC_TO_SUSPEND=$((SEC_TO_SUSPEND - SEC_TO_LOCK_SCREEN))
SEC_TO_LOCK_SCREEN=$((SEC_TO_LOCK_SCREEN - SEC_TO_DIM_SCREEN))

# Only exported variables can be used within the timer's command
export PRIMARY_DISPLAY=$(xrandr | awk '/ primary/{print $1}')
export TMP_BRIGHTNESS=/tmp/i3lock.brightness

# Run xidlehook
killall xidlehook 2>/dev/null
/home/developer/.nix-profile/bin/xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen, undim if user becomes active` \
  --timer $SEC_TO_DIM_SCREEN \
    'xbacklight -get > $TMP_BRIGHTNESS; xbacklight -set 1' \
    'xbacklight -set `cat "$TMP_BRIGHTNESS"`' \
  `# Undim & lock after` \
  --timer $SEC_TO_LOCK_SCREEN \
    '~/.config/i3/bin/i3lock-fancy-multimonitor.sh; xbacklight -set `cat "$TMP_BRIGHTNESS"`' \
    'xbacklight -set `cat "$TMP_BRIGHTNESS"`' \
  `# Finally, suspend after it locks` \
  --timer $SEC_TO_SUSPEND \
    'systemctl suspend; xbacklight -set `cat "$TMP_BRIGHTNESS"`' \
    ''
