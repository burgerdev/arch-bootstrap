#!/bin/bash

set -e
set -v

. config.sh

echo $A_HOSTNAME >/etc/hostname
ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
echo "$A_LOCALE" >>/etc/locale.gen
locale-gen

echo "LANG=$A_LANG" >/etc/locale.conf
echo "KEYMAP=$A_KEYBOARD_LAYOUT" >/etc/vconsole.conf

pacman -Syyu --noconfirm
pacman -S --noconfirm $A_PACKAGE_LIST 

systemctl enable lightdm.service
useradd -m -p "${A_PASSWORD}" -s $A_SHELL $A_USER
usermod -a -G $A_SUDO_GROUP $A_USER

sed -i 's/^#greeter-session.*$/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf

echo -e "\n\n# Automatically added\n%wheel ALL=(ALL) ALL" >>/etc/sudoers

mkinitcpio -p linux

grub-install --recheck --target=i386-pc $A_DISK_DEVICE
grub-mkconfig -o /boot/grub/grub.cfg

cp /etc/arch-bootstrap/*.conf /etc/xorg.conf.d/
rm -rf /etc/arch-bootstrap

echo "Change root password if needed, then exit chroot and reboot"

