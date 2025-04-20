Create group beforehand 
```
sudo groupadd pi
```
Create user `pi` with home directory and group `pi`
```bash
sudo useradd --create-home --home-dir /home/pi --shell /bin/bash -g pi pi
```
