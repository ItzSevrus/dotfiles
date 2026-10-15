#!/usr/bin/env bash

if ! command -v bluetoothctl >/dev/null 2>&1; then
    printf '{"text":"󰂲","tooltip":"bluetoothctl is not installed"}\n'
    exit 0
fi

if bluetoothctl show 2>/dev/null | grep -q 'Powered: yes'; then
    printf '{"text":"󰂯","tooltip":"Bluetooth enabled — click to manage"}\n'
else
    printf '{"text":"󰂲","tooltip":"Bluetooth disabled or unavailable — click to manage"}\n'
fi
