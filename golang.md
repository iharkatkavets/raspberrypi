# Install Go lang from sources

Go archives located [here](https://go.dev/dl/)

```bash
wget https://go.dev/dl/go1.25.5.linux-arm64.tar.gz
sudo rm -rfv /usr/local/go && sudo tar -C /usr/local -xzvf go1.25.5.linux-arm64.tar.gz
export PATH=$PATH:/usr/local/go/bin
```

More Info [here](https://go.dev/doc/install)

Compile the project

```sh
CGO_ENABLED=1 GOOS=linux GOARCH=arm64 CC=aarch64-linux-gnu-gcc go build -o dist/bin ./project/
```
