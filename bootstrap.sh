#!/bin/bash

# exit on first error (beware of the gotchas!)
set -e

. config.sh

loadkeys $A_KEYBOARD_LAYOUT

parted -s $A_DISK_DEVICE mklabel msdos
parted -s $A_DISK_DEVICE mkpart primary 1MiB $A_SDA_SIZE

mkfs.ext4 ${A_DISK_DEVICE}1

mount ${A_DISK_DEVICE}1 /mnt

pacstrap /mnt base

mkdir /mnt/tmp/arch-bootstrap
cp *.sh /mnt/tmp/arch-bootstrap

genfstab -p /mnt >> /mnt/etc/fstab

echo "run 'arch-chroot /mnt' and continue with part 2 from /tmp/arch-bootstrap"

