#!/usr/bin/env bash

SYS_BL=/sys/class/backlight/lcd0

STEP=-25
BL_CURRENT=$(cat $SYS_BL/brightness)
BL_MIN=5
NEW_BL=$(( BL_CURRENT + STEP))

NEW_BL=$(( NEW_BL < BL_MIN ? BL_MIN : NEW_BL ))

echo $NEW_BL | sudo tee $SYS_BL/brightness > /dev/null
