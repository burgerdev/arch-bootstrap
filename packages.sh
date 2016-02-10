#!/bin/bash

function add_to_package_list {
    export A_PACKAGE_LIST="$A_PACKAGE_LIST $@"
}

# BASICS
add_to_package_list python python2 git sudo grub vim
# BUILD
add_to_package_list gcc cmake
# NETWORK
add_to_package_list wget firefox net-tools ntp nmap bind
add_to_package_list openssl openssh
# PERSONAL STUFF
add_to_package_list fish thefuck bash-completion most
add_to_package_list octave
# WM/DE
add_to_package_list xorg-server xorg-xprop xorg-xrandr
add_to_package_list xmonad xmonad-contrib xmobar dmenu lilyterm
add_to_package_list lightdm lightdm-gtk-greeter slock
# JAVA
add_to_package_list jdk8-openjdk maven
# FONTS
add_to_package_list ttf-dejavu ttf-freefont ttf-oxygen
add_to_package_list ttf-liberation gnu-free-fonts 
add_to_package_list ttf-linux-libertine

echo "packages:"
echo $A_PACKAGE_LIST

