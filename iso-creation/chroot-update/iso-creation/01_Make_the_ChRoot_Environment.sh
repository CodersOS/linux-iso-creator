#!/bin/bash
set -e
here="`dirname \"$0\"`"

echo "01 > creating mount points"
mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts

export HOME=/root
export LC_ALL=C

echo "01 > adding gpg keys for apt-get update"
/bin/bash "$here/gpg-keys.sh"

echo "01 > updating and installing packages"
apt-get update
apt-get install --yes dbus

echo "01> creating machine id"
dbus-uuidgen > /var/lib/dbus/machine-id

echo "01 > creating /sbin/initctl"
dpkg-divert --local --rename --add /sbin/initctl

echo "01 > backup the /sbin/initctl file"
cp /sbin/initctl /sbin/initctl.bak
ln -s /bin/true /sbin/initctl

echo "01 > upgrading packages"
apt-get --yes upgrade

echo "01 > installing packages"
apt-get install --yes ubuntu-standard casper lupin-casper
apt-get install --yes discover laptop-detect os-prober
apt-get install --yes linux-generic

apt-get install --no-install-recommends network-manager