Prerequsites for installing `tmux` 

```bash
sudo apt-get install git
sudo apt-get install automake libevent-dev ncurses-dev build-essential bison pkg-config
git clone https://github.com/tmux/tmux.git ~/tmux
cd ~/tmux
./autogen.sh
./configure && make
sudo make install
```
