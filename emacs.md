# Emacs

Clone emacs
```bash
git clone git://git.savannah.gnu.org/emacs.git
```
Install the dependencies
```bash
sudo apt install texinfo libgccjit-12-dev libgnutls28-dev
```
```bash
cd emacs && ./autogen.sh
./configure --with-native-compilation --with-modules
```
