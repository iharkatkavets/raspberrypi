## Some useful steps for raspb setup

Enlarge swap size by modifying file `/etc/dphys-swapfile`
```bash
CONF_SWAPSIZE=2048
```

### Solve that Network Manager doesn't accept password

Disable Protected Management Frames by adding the line to file `/etc/NetworkManager/NetworkManager.conf`
```bash
[connection]
wifi-sec.pmf=disable
```
