#!/bin/bash
BATTERY=0
BATTERY_INFO=$(acpi -b | grep "Battery ${BATTERY}")
BATTERY_STATE=$(echo "${BATTERY_INFO}" | grep -wo "Full\|Charging\|Discharging")
BATTERY_POWER=$(echo "${BATTERY_INFO}" | grep -o '[0-9]\+%' | tr -d '%')

if [[ "${BATTERY_STATE}" = "Discharging" ]]; then
	if [[ "${BATTERY_POWER}" -le 10 ]]; then		
		# BATTERY < 10
		notify-send -u critical "Low Battery" "Battery lower than 10"	
		mpv siren.wav;
	elif [[ "${BATTERY_POWER}" -le 20 ]]; then
		# 10 < BATTERY < 20
		notify-send "Low Battery" "Battery lower than 20"
		mpv siren.wav;
	fi
fi
