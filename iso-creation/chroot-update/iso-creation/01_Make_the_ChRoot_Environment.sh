#!/bin/bash
set -e
here="`dirname \"$0\"`"

mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts

export HOME=/root
export LC_ALL=C

sudo /bin/bash "$here/gpg-keys.sh"

apt-get update
apt-get install --yes dbus

dbus-uuidgen > /var/lib/dbus/machine-id
dpkg-divert --local --rename --add /sbin/initctl

# backup the /sbin/initctl file
cp /sbin/initctl /sbin/initctl.bak
ln -s /bin/true /sbin/initctl

apt-get --yes upgrade

apt-get install --yes ubuntu-standard casper lupin-casper
apt-get install --yes discover laptop-detect os-prober
apt-get install --yes linux-generic

apt-get install --no-install-recommends network-manager