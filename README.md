# my-dotfiles

## install oh my zsh 
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## install gruvbox zsh

```
https://github.com/sbugzu/gruvbox-zsh
```

## install nvim 
```
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-osx64/bin/nvim
```

## install gruvbox colorscheme
```
https://github.com/herrbischoff/iterm2-gruvbox
```
## install nerd_fonts(hack)

```
brew tap homebrew/cask-fonts

brew install --cask font-hack-nerd-font
```

## install gdb

```
wget ftp://sourceware.org/pub/gdb/snapshots/current/gdb-weekly-8.2.50.20190226.tar.xz
untar gdb-weekly-8.2.50.20190226.tar.xz
gdb-8.2.50.20190226
./configure --prefix=$HOME/gdb
make
make install
```
