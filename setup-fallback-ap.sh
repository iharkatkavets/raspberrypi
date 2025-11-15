#!/usr/bin/env bash
set -euo pipefail

SSID=""
CON_NAME="fallback-ap"
PASSWORD=""
AP_SCRIPT="/usr/local/bin/fallback-ap.sh"
SYSTEMD_SERVICE="/etc/systemd/system/fallback-ap.service"
SYSTEMD_TIMER="/etc/systemd/system/fallback-ap.timer"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --ssid)
            SSID="$2"
            shift 2
            ;;
        --password)
            PASSWORD="$2"
            shift 2
            ;;
        *)
            echo "Unknown argument: $1"
            exit 1
            ;;
    esac
done

if [ -z "$SSID" ] || [ -z "$PASSWORD" ]; then
    echo "Usage: $0 --ssid NAME --password PASS"
    exit 1
fi

echo "Configuring fallback AP connection: $CON_NAME"

# Check if connection already exists
if nmcli -t -f NAME con show | grep -qx "$CON_NAME"; then
    echo "Connection '$CON_NAME' already exists, modifying…"
else
    echo "Connection '$CON_NAME' does not exist, creating…"
    nmcli connection add type wifi ifname wlan0 con-name "$CON_NAME" autoconnect no ssid "$SSID"
fi

# Apply settings
nmcli connection modify "$CON_NAME" 802-11-wireless.mode ap
nmcli connection modify "$CON_NAME" 802-11-wireless.band bg
nmcli connection modify "$CON_NAME" ipv4.method shared
nmcli connection modify "$CON_NAME" wifi-sec.key-mgmt wpa-psk
nmcli connection modify "$CON_NAME" wifi-sec.psk "$PASSWORD"

echo "Done. To bring it up manually run:"
echo "  nmcli connection up '$CON_NAME'"

echo "Generating $AP_SCRIPT script…"
cat > "${AP_SCRIPT}" << EOF
#!/bin/bash

CON_NAME="fallback-ap"

# If wlan0 has an active connection → do nothing
if nmcli -t -f ACTIVE,DEVICE,STATE connection show --active \
    | grep -q '^yes:wlan0:activated'; then
    exit 0
fi

# No active connection on wlan0 → start fallback AP
nmcli connection up "$CON_NAME"
EOF

chmod +x "${AP_SCRIPT}"
echo "Generated: ${AP_SCRIPT}"


echo "Generating $SYSTEMD_SERVICE file…"
cat > $SYSTEMD_SERVICE << EOF
[Unit]
Description=Wi-Fi Fallback Checker
After=NetworkManager.service
Requires=NetworkManager.service

[Service]
Type=oneshot
ExecStart=${AP_SCRIPT}
EOF
echo "Generated: $SYSTEMD_SERVICE"


echo "Generating $SYSTEMD_TIMER file…"
cat > $SYSTEMD_TIMER << EOF
[Unit]
Description=Run Wi-Fi check every 30 seconds

[Timer]
OnBootSec=30
OnUnitActiveSec=30

[Install]
WantedBy=timers.target
EOF
echo "Generated: $SYSTEMD_TIMER"
sudo systemctl daemon-reload
sudo systemctl enable fallback-ap.timer
sudo systemctl start fallback-ap.timer
