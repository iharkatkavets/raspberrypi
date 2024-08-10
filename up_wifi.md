## Setup wifi connection from scratch

Create empty `ssh` file at bootfs
```bash
touch ssh
```

Create `wpa_supplicant.conf` file with next content (replace):
```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=PL

network={
     ssid="your_network_name"
     psk="your_wifi_password"
     key_mgmt=WPA-PSK
}
```
