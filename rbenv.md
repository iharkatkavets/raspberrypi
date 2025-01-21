### Installing rbenv requires installing some dependencies
```bash
sudo apt-get install libssl-dev zlib1g-dev libyaml-dev
```
### Clone `rbenv`
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init

```
### Clone `ruby-build`
```
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```
### Select ruby version to install
```
rbenv install -l
```
