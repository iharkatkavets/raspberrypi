## Install NodeJS on RaspberryPi Zero

Find the latest version of NodeJS from [unofficial repository](https://unofficial-builds.nodejs.org/download/release/) with ARMv6 architecture
```bash
wget https://unofficial-builds.nodejs.org/download/release/v21.7.3/node-v21.7.3-linux-armv6l.tar.gz
#extract
tar xzvf node-v21.7.3-linux-armv6l.tar.gz

rm node-v21.7.3-linux-armv6l/CHANGELOG node-v21.7.3-linux-armv6l/LICENCE node-v21.7.3-linux-armv6l/README
sudo cp -R node-v21.7.3-linux-armv6l/* /usr/local
```
