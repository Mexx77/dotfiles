# Max Dotfiles
This is a collection of configs for my Arch Linux setup.

## Packages
```
pacman -S --needed - < pkglist.txt
```

## Oh my zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Chrome
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay google-chrome
```

## German keyboard
```
localectl --no-convert set-x11-keymap de pc105 nodeadkeys
```

## awsp
```
sudo npm install -g awsp
```

## Optional
```
xbindkeys
synclient TouchpadOff=1
```

## TODO
- include bin in dotfile repo
