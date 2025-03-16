# Install Go lang from sources

Go archives located [here](https://go.dev/dl/)
```bash
wget https://go.dev/dl/go1.23.4.linux-arm64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.4.linux-arm64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

More Info [here](https://go.dev/doc/install)

Compile the project
```
CGO_ENABLED=1 GOOS=linux GOARCH=arm64 CC=aarch64-linux-gnu-gcc go build -o dist/bin ./project/
```
