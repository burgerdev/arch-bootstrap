#!/bin/bash

# exit on first error (beware of the gotchas!)
set -e

# echo commands
set -v

. config.sh

loadkeys $A_KEYBOARD_LAYOUT

parted -s $A_DISK_DEVICE mklabel msdos
parted -s $A_DISK_DEVICE mkpart primary 1MiB $A_DISK_SIZE

mkfs.ext4 ${A_DISK_DEVICE}1

mount ${A_DISK_DEVICE}1 /mnt

pacstrap /mnt base

A_SPECIAL_DIR=/etc/arch-bootstrap
mkdir /mnt/$A_SPECIAL_DIR
cp *.sh *.conf /mnt/$A_SPECIAL_DIR

genfstab -p /mnt >> /mnt/etc/fstab

echo "run 'arch-chroot /mnt' and continue with part 2 from $A_SPECIAL_DIR"

