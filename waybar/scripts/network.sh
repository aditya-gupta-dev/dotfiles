#!/bin/bash

# Get active connection name
WIFI=$(nmcli -t -f active,ssid dev wifi 2>/dev/null | grep '^yes' | cut -d: -f2)
ETH=$(nmcli -t -f type,state dev 2>/dev/null | grep 'ethernet:connected' | head -1)

if [ -n "$WIFI" ]; then
    # Get signal strength for icon
    SIGNAL=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d: -f2)
    if [ "$SIGNAL" -ge 75 ] 2>/dev/null; then
        ICON="󰤨"
    elif [ "$SIGNAL" -ge 50 ] 2>/dev/null; then
        ICON="󰤥"
    elif [ "$SIGNAL" -ge 25 ] 2>/dev/null; then
        ICON="󰤢"
    else
        ICON="󰤟"
    fi
    echo "$ICON $WIFI"

elif [ -n "$ETH" ]; then
    echo "󰈀 Ethernet"

else
    echo "󰤭 disconnected"
fi
