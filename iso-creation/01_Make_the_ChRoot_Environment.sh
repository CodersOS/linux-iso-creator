#!/bin/bash

source "`dirname \"$0\"`/configuration.sh"

apt-get install debootstrap

cd "$work"

sudo debootstrap --arch=$ARCH $RELEASE "$chroot"

sudo mount --bind /dev "$chroot/dev"

sudo cp /etc/hosts chroot/etc/hosts
sudo cp /etc/resolv.conf chroot/etc/resolv.conf
sudo cp "$sources_list" chroot/etc/apt/sources.list

