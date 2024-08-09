# Install the latest version of neovim

```bash
sudo apt install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
get checkout stable
cd neovim
nohup make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" > output.log 2>&1 &
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
sudo make install
```
More info at [source](https://forums.raspberrypi.com/viewtopic.php?t=367119)
