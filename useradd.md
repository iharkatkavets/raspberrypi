Create group beforehand 
```
sudo groupadd pi
```
Create user `pi` with home directory and group `pi`
```bash
sudo useradd -m -g pi pi 
```
Create a user to use for run systemd jobs
```bash
sudo useradd --system --create-home --home-dir /home/serviceuser --shell /usr/sbin/nologin serviceuser
```
