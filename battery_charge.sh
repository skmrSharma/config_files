#!/bin/sh

charge_level="$(cat /sys/class/power_supply/BAT0/capacity)"

ac_adapter="$(cat /sys/class/power_supply/AC0/online)"

if [ $ac_adapter -eq 0 ]; 
then 
  echo "On battery power:" $charge_level 
else
  echo "On Mains power:" $charge_level
fi
