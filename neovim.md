# Install the latest version of neovim

```bash
sudo apt install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && git checkout stable
nohup make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/usr/local" CMAKE_BUILD_TYPE=RelWithDebInfo > output.log 2>&1 &
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-arm64.deb
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-armv6f.deb
sudo make install
```

More info at [source](https://github.com/neovim/neovim/blob/master/BUILD.md)
