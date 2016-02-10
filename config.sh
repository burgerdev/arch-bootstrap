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

A_SPECIAL_DIR=/etc/arch-bootstrap

# BASICS
A_PACKAGE_LIST="python python2 git gcc sudo grub vim"
# NETWORK
A_PACKAGE_LIST="$A_PACKAGE_LIST wget firefox net-tools ntp nmap bind"
A_PACKAGE_LIST="$A_PACKAGE_LIST openssl openssh"
A_PACKAGE_LIST="$A_PACKAGE_LIST fish thefuck bash-completion most"
# WM/DE
A_PACKAGE_LIST="$A_PACKAGE_LIST xorg-server xorg-xprop xorg-xrandr"
A_PACKAGE_LIST="$A_PACKAGE_LIST xmonad xmonad-contrib xmobar dmenu lilyterm"
A_PACKAGE_LIST="$A_PACKAGE_LIST lightdm lightdm-gtk-greeter slock"
# JAVA
A_PACKAGE_LIST="$A_PACKAGE_LIST jdk8-openjdk maven"
# FONTS
A_PACKAGE_LIST="$A_PACKAGE_LIST ttf-dejavu ttf-freefont ttf-oxygen"
A_PACKAGE_LIST="$A_PACKAGE_LIST ttf-liberation gnu-free-fonts "
A_PACKAGE_LIST="$A_PACKAGE_LIST ttf-linux-libertine"


