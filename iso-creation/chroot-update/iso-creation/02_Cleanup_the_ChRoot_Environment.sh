#!/bin/bash
set -e

rm -f /var/lib/dbus/machine-id

# restore the backup
rm -f /sbin/initctl
dpkg-divert --rename --remove /sbin/initctl
if [ ! -f /sbin/initctl ] && [ -f /sbin/initctl.bak ]
then
  mv /sbin/initctl.bak /sbin/initctl
fi

ls /boot/vmlinuz-**.**.**-**-generic > list.txt
sum=$(cat list.txt | grep '[^ ]' | wc -l)

if [ $sum -gt 1 ]; then
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge
fi

rm list.txt


# clean up
apt-get clean

rm -rf /tmp/*

rm /etc/resolv.conf

umount -lf /proc
umount -lf /sys
umount -lf /dev/pts