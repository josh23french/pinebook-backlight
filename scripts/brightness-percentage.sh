#!/usr/bin/env bash

SYS_BL=/sys/class/backlight/lcd0

BL_CURRENT=$(cat $SYS_BL/brightness)
BL_MAX=$(cat $SYS_BL/max_brightness)

PERCENT=$(( 200*$BL_CURRENT/$BL_MAX % 2 + 100*$BL_CURRENT/$BL_MAX ))

echo $PERCENT%
