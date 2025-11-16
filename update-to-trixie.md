# Update to Debian Trixie 
Download updated list of packages
```bash
sudo apt update
```
Install the latest version of packages
```bash
sudo apt full-upgrade
```
Locate all files to change version from `bookworm` to `trixie` and edit them
```bash
grep -R 'bookworm' /etc/apt/sources.list /etc/apt/sources.list.d/
```
Download updated list of packages from Trixie version
```bash
sudo apt update
```
Install the latest version of packages
```bash
sudo apt full-upgrade -y
```
