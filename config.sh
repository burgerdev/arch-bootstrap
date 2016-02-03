#!/bin/bash

A_KEYBOARD_LAYOUT=de-latin1-nodeadkeys
A_DISK_DEVICE=/dev/sda
A_DISK_SIZE=128GiB

A_SUDO_GROUP=wheel
A_USER=user
A_HOSTNAME=lina
A_PASSWORD=changeme
A_SHELL=/usr/bin/fish
A_LOCALE="en_US.UTF-8 UTF-8"

A_PACKAGE_LIST="python python2 git gcc sudo grub openssh xorg-server"
A_PACKAGE_LIST=$A_PACKAGE_LIST "vim fish thefuck bash-completion"
A_PACKAGE_LIST=$A_PACKAGE_LIST "xmonad xmonad-contrib xmobar dmenu lightdm lilyterm"
A_PACKAGE_LIST=$A_PACKAGE_LIST "jdk8-openjdk maven"
A_PACKAGE_LIST=$A_PACKAGE_LIST "ttf-dejavu ttf-freefont ttf-oxygen"


