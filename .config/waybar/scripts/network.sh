#!/bin/bash

# Check ethernet
if ip link show enp3s0 &>/dev/null && ip link show enp3s0 | grep -q "state UP"; then
    ip=$(ip -4 addr show enp3s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    echo "{\"text\":\"󰈁\",\"class\":\"ethernet\",\"tooltip\":\"Ethernet | ${ip}\"}"
    exit 0
fi

# Check wifi
if ip link show wlan0 &>/dev/null && ip link show wlan0 | grep -q "state UP"; then
    essid=$(nmcli -t -f active,ssid dev wifi 2>/dev/null | grep '^yes' | cut -d: -f2)
    ip=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    echo "{\"text\":\"\",\"class\":\"wifi\",\"tooltip\":\"${essid} | ${ip}\"}"
    exit 0
fi

echo "{\"text\":\"󰅙\",\"class\":\"disconnected\",\"tooltip\":\"No network\"}"
