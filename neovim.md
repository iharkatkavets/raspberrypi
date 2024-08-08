# Install the latest version of neovim

```bash
sudo apt install ninja-build gettext cmake unzip curl

git clone https://github.com/neovim/neovim

cd neovim

make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"

get checkout stable

sudo make install
```
More info at [source](https://forums.raspberrypi.com/viewtopic.php?t=367119)
