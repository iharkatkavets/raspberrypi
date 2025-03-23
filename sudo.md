## Disable asking password when `sudo` for `pi` user
```
# modify /etc/sudoers.d/010_pi-nopasswd
visudo -f /etc/sudoers.d/010_pi-nopasswd
pi ALL=(ALL) NOPASSWD: ALL
```
