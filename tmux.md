Prerequsites for installing `tmux` 

```bash
sudo apt-get install git
git clone https://github.com/tmux/tmux.git ~/tmux
sudo apt-get install automake libevent-dev ncurses-dev build-essential bison pkg-config
cd ~/tmux
./autogen.sh
./configure && make
sudo make install
```
