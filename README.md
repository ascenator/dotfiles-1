my squiggle
===========

installation:

```bash
# clone this puppy
git submodule init
git submodule update

cd script
./symlink.sh
touch $HOME/.tmux_local.conf

vim +NeoBundleInstall +qall
./osx.sh # if on OSX
./ubuntu.sh # if on Ubuntu

./npm.sh # if you want packages from NPM
```

wow
