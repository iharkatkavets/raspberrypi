The dependencies required for installing `pyenv` from sources

```bash
sudo apt install -y \
    build-essential \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libreadline-dev \
    libsqlite3-dev \
    zlib1g-dev \
    libssl-dev
```
Clone the sources and compile
```bash
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
```
