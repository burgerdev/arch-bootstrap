#!/bin/bash

# exit on first error (beware of the gotchas!)
set -e

. config.sh

loadkeys $A_KEYBOARD_LAYOUT

parted -s mklabel gpt
parted -s mkpart primary 1MiB 500MiB
parted -s mkpart primary 500MiB $A_SDA_SIZE

mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2

mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base

mkdir /mnt/tmp/arch-bootstrap
cp *.sh /mnt/tmp/arch-bootstrap

echo "run 'arch-chroot /mnt' and continue with part 2 from /tmp/arch-bootstrap"

