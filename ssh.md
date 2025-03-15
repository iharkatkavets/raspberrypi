Generate ssh key
```bash
ssh-keygen -t ed25519 -C "your_email@here"
```

Add key to authorized keys
```sh
mkdir -p ~/.ssh && chmod 700 ~/.ssh
touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys
cat key >> ~/.ssh/authorized_keys
```

