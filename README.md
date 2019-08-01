# Max Dotfiles
This is a collection of configs for my Arch Linux setup.

## General
```
sudo pacman -S xorg-server arandr physlock \
 nvim git xorg-xbacklight stow
```

## Xmonad
```
sudo pacman -S ttf-dejavu ttf-inconsolata \
 xmonad xmonad-contrib xmobar haskell-http dmenu
```

## Shell
```
sudo pacman -S rxvt-unicode
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Chrome
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay google-chrome
```

## Config
```
localectl --no-convert set-x11-keymap de pc105 nodeadkeys
```

## Optional
```
For jetbrains-toolbox: sudo pacman -S fuse2
xbindkeys
synclient TouchpadOff=1
source $HOME/.zshrc.local
```
