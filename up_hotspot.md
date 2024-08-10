## Setup hotspot connection

```bash
nmcli con add type wifi ifname wlan0 mode ap con-name <ConnectionNameInConfigs> ssid <SSID_NAME>
nmcli con modify <ConnectionNameInConfigs> 802-11-wireless.band bg
nmcli con modify <ConnectionNameInConfigs> 802-11-wireless.channel 1
nmcli con modify <ConnectionNameInConfigs> 802-11-wireless-security.key-mgmt wpa-psk
nmcli con modify <ConnectionNameInConfigs> 802-11-wireless-security.psk <PASSWORD>
nmcli con modify <ConnectionNameInConfigs> ipv4.addr 10.0.0.1/24
nmcli con modify <ConnectionNameInConfigs> ipv4.method shared
nmcli con up <ConnectionNameInConfigs>
```
