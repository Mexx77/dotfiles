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

## yay for AUR
```
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. && rm -rf yay
```

# AUR packages
```
yay --needed -S - < yaylist.txt
```

## German keyboard
```
localectl --no-convert set-x11-keymap de pc105 nodeadkeys
```

## awsp AWS profile changer
```
sudo npm install -g awsp
```

## Default screenshot location
```
mkdir $HOME/screenshots
dconf write /org/gnome/gnome-screenshot/auto-save-directory "'file://$HOME/screenshots'"
```

## Optional
```
xbindkeys
synclient TouchpadOff=1
```
