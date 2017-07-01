#!/usr/bin/env bash

SYS_BL=/sys/class/backlight/lcd0

STEP=25
BL_CURRENT=$(cat $SYS_BL/brightness)
BL_MAX=$(cat $SYS_BL/max_brightness)
NEW_BL=$(( BL_CURRENT + STEP))

NEW_BL=$(( NEW_BL > BL_MAX ? BL_MAX : NEW_BL ))

echo $NEW_BL | sudo tee $SYS_BL/brightness > /dev/null
